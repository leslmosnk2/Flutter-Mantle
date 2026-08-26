import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:mantle_gen/src/generator/component_spec.dart';
import 'package:source_gen/source_gen.dart';

/// Parses a `@MantleComponent` class into a [ComponentSpec].
ComponentSpec parseComponentSpec({
  required ClassElement element,
  required ConstantReader annotation,
  required ClassDeclaration declaration,
}) {
  final name = annotation.read('name').stringValue;
  final properties = _readProperties(
    annotation.read('properties'),
    element: element,
  );
  final variants = [
    for (final value in annotation.read('variants').listValue)
      _readVariant(value, element: element),
  ];

  final styleProperties = <PropertySpec>[];
  final stateProperties = <PropertySpec>[];

  for (final getter in element.getters) {
    for (final annotation in getter.metadata.annotations) {
      final value = annotation.computeConstantValue();
      if (value == null) continue;
      final typeName = value.type?.element?.name;
      if (typeName == 'MantleComponentStyle') {
        styleProperties.addAll(
          _readProperties(
            ConstantReader(value).read('properties'),
            element: element,
          ),
        );
      } else if (typeName == 'MantleComponentState') {
        stateProperties.addAll(
          _readProperties(
            ConstantReader(value).read('properties'),
            element: element,
          ),
        );
      }
    }
  }

  final slots = _readSlots(declaration, componentName: name, element: element);
  if (slots.isEmpty) {
    throw InvalidGenerationSource(
      "Component '$name' defines no slots.",
      element: element,
    );
  }

  _bindSlotParams(slots, componentName: name, element: element);

  final usedTypeNames = {
    for (final slot in slots)
      for (final param in slot.childParams) param.typeName,
  };
  final roots = slots
      .where((slot) => !usedTypeNames.contains(slot.typeName))
      .toList();
  if (roots.isEmpty) {
    throw InvalidGenerationSource(
      "Component '$name' has no root slot (every slot is used as a child).",
      element: element,
    );
  }
  if (roots.length > 1) {
    throw InvalidGenerationSource(
      "Component '$name' has multiple root slots: "
      '${roots.map((slot) => slot.methodName).join(', ')}.',
      element: element,
    );
  }

  return ComponentSpec(
    name: name,
    variants: variants,
    properties: properties,
    styleProperties: styleProperties,
    stateProperties: stateProperties,
    slots: slots,
    rootSlot: roots.single,
  );
}

VariantSpec _readVariant(DartObject value, {required ClassElement element}) {
  final reader = ConstantReader(value);
  final name = reader.read('name').stringValue;
  final enumName = name == 'default' ? 'defaults' : name;
  final properties = [
    for (final property in _readProperties(
      reader.read('properties'),
      element: element,
    ))
      PropertySpec(
        name: property.name,
        type: property.type,
        nullable: property.nullable,
        defaultValueSource: property.defaultValueSource,
        defaultBuilderName: property.defaultBuilderName,
        ownerVariantEnumNames: [enumName],
      ),
  ];
  return VariantSpec(
    name: name,
    enumName: enumName,
    isUnnamedConstructor: name == 'default',
    properties: properties,
  );
}

List<PropertySpec> _readProperties(
  ConstantReader reader, {
  required ClassElement element,
}) {
  if (reader.isNull) return const [];
  return [
    for (final value in reader.listValue)
      _readProperty(value, element: element),
  ];
}

PropertySpec _readProperty(DartObject value, {required ClassElement element}) {
  final reader = ConstantReader(value);
  final name = reader.read('name').stringValue;
  final nullable = reader.read('nullable').boolValue;

  String? defaultValueSource;
  final defaultValue = reader.peek('defaultValue');
  if (defaultValue != null && !defaultValue.isNull) {
    defaultValueSource = _constantToSource(
      defaultValue,
      element: element,
      name: name,
    );
  }

  String? defaultBuilderName;
  final defaultBuilder = reader.peek('defaultBuilder');
  if (defaultBuilder != null && !defaultBuilder.isNull) {
    final function = defaultBuilder.objectValue.toFunctionValue();
    if (function == null || function.name == null) {
      throw InvalidGenerationSource(
        'defaultBuilder for "$name" must be a top-level function tear-off.',
        element: element,
      );
    }
    defaultBuilderName = function.name;
  }

  if (defaultValueSource != null && defaultBuilderName != null) {
    throw InvalidGenerationSource(
      'Property "$name" cannot have both defaultValue and defaultBuilder.',
      element: element,
    );
  }

  return PropertySpec(
    name: name,
    type: _propertyType(value),
    nullable: nullable,
    defaultValueSource: defaultValueSource,
    defaultBuilderName: defaultBuilderName,
  );
}

String _propertyType(DartObject value) {
  final type = value.type;
  if (type is InterfaceType && type.typeArguments.isNotEmpty) {
    return _dartTypeToSource(type.typeArguments.first);
  }
  return 'dynamic';
}

String _dartTypeToSource(DartType type) {
  final aliasName = type.alias?.element.name;
  if (aliasName != null && aliasName.isNotEmpty) {
    return aliasName;
  }
  var display = type.getDisplayString();
  if (display.endsWith('?')) {
    display = display.substring(0, display.length - 1);
  }
  return display;
}

String _constantToSource(
  ConstantReader reader, {
  required ClassElement element,
  required String name,
}) {
  if (reader.isBool) return '${reader.boolValue}';
  if (reader.isInt) return '${reader.intValue}';
  if (reader.isDouble) return '${reader.doubleValue}';
  if (reader.isString) {
    final value = reader.stringValue
        .replaceAll(r'\', r'\\')
        .replaceAll("'", r"\'");
    return "'$value'";
  }

  final revived = reader.revive();
  if (revived.accessor.isNotEmpty) {
    return revived.accessor;
  }

  throw InvalidGenerationSource(
    'Cannot revive defaultValue for "$name".',
    element: element,
  );
}

List<SlotSpec> _readSlots(
  ClassDeclaration declaration, {
  required String componentName,
  required ClassElement element,
}) {
  final slotNames = {
    for (final method in element.methods)
      if (_isSlotElement(method)) method.name,
  };

  final slots = <SlotSpec>[];
  for (final member in declaration.body.members) {
    if (member is! MethodDeclaration) continue;
    if (member.isGetter || member.isSetter) continue;

    final methodName = member.name.lexeme;
    final isSlot =
        slotNames.contains(methodName) ||
        _hasComponentConstructor(member, 'slot');
    if (!isSlot) continue;

    final returnType = member.returnType?.toSource() ?? 'Widget';
    slots.add(
      SlotSpec(
        methodName: methodName,
        typeName: '$componentName${_pascal(methodName)}',
        returnType: returnType,
        childParams: [
          for (final param in _namedParams(member))
            SlotParamSpec(
              name: param.name!.lexeme,
              typeName: _parameterTypeName(param),
              slot: SlotSpec(
                methodName: '',
                typeName: _parameterTypeName(param),
                returnType: 'Widget',
              ),
            ),
        ],
      ),
    );
  }
  return slots;
}

bool _isSlotElement(MethodElement method) {
  for (final annotation in method.metadata.annotations) {
    final value = annotation.computeConstantValue();
    if (value?.type?.element?.name == 'MantleComponentSlots') {
      return true;
    }
  }
  return false;
}

void _bindSlotParams(
  List<SlotSpec> slots, {
  required String componentName,
  required ClassElement element,
}) {
  final byMethod = {for (final slot in slots) slot.methodName: slot};
  final byType = {for (final slot in slots) slot.typeName: slot};

  for (final slot in slots) {
    for (var i = 0; i < slot.childParams.length; i++) {
      final param = slot.childParams[i];
      final target =
          byType[param.typeName] ??
          byMethod[_slotMethodFromType(param.typeName, componentName)];
      if (target == null) {
        throw InvalidGenerationSource(
          'Slot parameter type "${param.typeName}" does not match a slot '
          "method on '$componentName'.",
          element: element,
        );
      }
      slot.childParams[i] = SlotParamSpec(
        name: param.name,
        typeName: param.typeName,
        slot: target,
      );
    }
  }
}

String _slotMethodFromType(String typeName, String componentName) {
  if (!typeName.startsWith(componentName) ||
      typeName.length == componentName.length) {
    return typeName;
  }
  final rest = typeName.substring(componentName.length);
  return rest[0].toLowerCase() + rest.substring(1);
}

bool _hasComponentConstructor(AnnotatedNode node, String constructorName) {
  for (final annotation in node.metadata) {
    final name = annotation.name;
    if (name is PrefixedIdentifier) {
      if (name.prefix.name == 'MantleComponent' &&
          name.identifier.name == constructorName) {
        return true;
      }
      continue;
    }
    if (name.name == 'MantleComponent' &&
        annotation.constructorName?.name == constructorName) {
      return true;
    }
  }
  return false;
}

Iterable<FormalParameter> _namedParams(MethodDeclaration method) {
  final list = method.parameters;
  if (list == null) return const [];
  return list.parameters.where((param) => param.isNamed);
}

String _parameterTypeName(FormalParameter param) {
  return param.type?.toSource() ?? 'dynamic';
}

String _pascal(String name) {
  if (name.isEmpty) return name;
  return name[0].toUpperCase() + name.substring(1);
}
