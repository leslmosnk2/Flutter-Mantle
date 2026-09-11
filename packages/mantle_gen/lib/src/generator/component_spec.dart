import 'package:mantle_gen/src/generator/component_docs.dart';

/// A parsed `@MantleComponent` contract, ready to render.
final class ComponentSpec {
  /// Creates a [ComponentSpec].
  const ComponentSpec({
    required this.name,
    required this.variants,
    required this.properties,
    required this.styleProperties,
    required this.stateProperties,
    required this.slots,
    required this.rootSlot,
  });

  /// Public widget / type prefix, e.g. `Button`.
  final String name;

  /// Named constructors / enum values.
  final List<VariantSpec> variants;

  /// Properties shared by every constructor.
  final List<PropertySpec> properties;

  /// Fields of the generated style class.
  final List<PropertySpec> styleProperties;

  /// Fields of the generated state class.
  final List<PropertySpec> stateProperties;

  /// All slots, including [rootSlot].
  final List<SlotSpec> slots;

  /// The composition-tree root (never used as another slot's parameter).
  final SlotSpec rootSlot;

  /// Variant-only properties, first-seen order.
  List<PropertySpec> get variantProperties {
    final seen = {for (final property in properties) property.name};
    final result = <PropertySpec>[];
    for (final variant in variants) {
      for (final property in variant.properties) {
        if (seen.add(property.name)) {
          result.add(property);
        }
      }
    }
    return result;
  }

  /// Shared + variant-specific properties.
  List<PropertySpec> get allProperties => [
    ...properties,
    ...variantProperties,
  ];

  /// Unique slot types (e.g. `ButtonSection` once even if used twice).
  List<SlotSpec> get uniqueSlotTypes {
    final byType = <String, SlotSpec>{};
    for (final slot in slots) {
      byType.putIfAbsent(slot.typeName, () => slot);
    }
    return byType.values.toList();
  }

  /// Context map consumed by the component template.
  Map<String, Object?> toTemplateContext() {
    return {
      'name': name,
      'variantEnumName': '${name}Variant',
      'styleClassName': '${name}Style',
      'stateClassName': '${name}State',
      'contextClassName': '${name}Context',
      'delegateClassName': '${name}Delegate',
      'widgetDoc': GeneratedComponentDocs.widget(name),
      'variantEnumDoc': GeneratedComponentDocs.variantEnum(name),
      'styleClassDoc': GeneratedComponentDocs.styleClass(name),
      'stateClassDoc': GeneratedComponentDocs.stateClass(name),
      'contextClassDoc': GeneratedComponentDocs.contextClass(name),
      'delegateClassDoc': GeneratedComponentDocs.delegateClass(name),
      'styleConstructorDoc': GeneratedComponentDocs.typeConstructor(
        '${name}Style',
      ),
      'stateConstructorDoc': GeneratedComponentDocs.typeConstructor(
        '${name}State',
      ),
      'contextConstructorDoc': GeneratedComponentDocs.typeConstructor(
        '${name}Context',
      ),
      'delegateConstructorDoc': GeneratedComponentDocs.typeConstructor(
        '${name}Delegate',
      ),
      'copyWithDoc': GeneratedComponentDocs.copyWith('${name}Style'),
      'mergeWithDoc': GeneratedComponentDocs.mergeWith('${name}Style'),
      'buildDoc': GeneratedComponentDocs.buildMethod(name),
      'variants': [
        for (final variant in variants)
          {
            'enumName': variant.enumName,
            'doc': GeneratedComponentDocs.variantValue(variant.name),
          },
      ],
      'styleFields': [
        for (final field in styleProperties)
          {
            'type': '${field.type}?',
            'name': field.name,
            'doc': _fieldDoc(field.name, type: field.type),
          },
      ],
      'stateFields': [
        for (final field in stateProperties)
          {
            'type': field.nullable ? '${field.type}?' : field.type,
            'name': field.name,
            'constructorParam': _stateConstructorParam(field),
            'doc': _fieldDoc(field.name, type: field.type),
          },
      ],
      'contextFields': _contextFields(),
      'slotTypes': [
        for (final slot in uniqueSlotTypes)
          {
            'typeName': slot.typeName,
            'returnType': slot.returnType,
            'functionType':
                '${slot.returnType} Function(${name}Context context)',
            'doc': GeneratedComponentDocs.slotClass(slot.methodName),
            'constructorDoc': GeneratedComponentDocs.slotConstructor(
              slot.typeName,
            ),
            'callDoc': GeneratedComponentDocs.slotCall(),
          },
      ],
      'delegateMethods': [
        for (final slot in slots)
          {
            'returnType': slot.returnType,
            'name': slot.methodName,
            'signature': slot.methodSignature('${name}Context'),
            'doc': GeneratedComponentDocs.delegateMethod(slot.methodName),
          },
      ],
      'widgetFields': _widgetFields(),
      'constructors': [
        for (final variant in variants) _constructorContext(variant),
      ],
      'buildBody': _buildBody(),
    };
  }

  String _fieldDoc(String fieldName, {String? type}) {
    return GeneratedComponentDocs.property(
      fieldName,
      type: type,
      componentName: name,
    );
  }

  String _stateConstructorParam(PropertySpec field) {
    if (field.nullable) {
      return 'this.${field.name}';
    }
    if (field.defaultValueSource != null) {
      return 'this.${field.name} = ${field.defaultValueSource}';
    }
    return 'required this.${field.name}';
  }

  List<Map<String, Object?>> _contextFields() {
    return [
      {
        'type': 'BuildContext',
        'name': 'context',
        'required': true,
        'doc': _fieldDoc('context'),
      },
      {
        'type': '${name}Style',
        'name': 'style',
        'required': true,
        'doc': _fieldDoc('style'),
      },
      {
        'type': '${name}State',
        'name': 'state',
        'required': true,
        'doc': _fieldDoc('state'),
      },
      {
        'type': '${name}Variant',
        'name': 'variant',
        'required': true,
        'doc': _fieldDoc('variant'),
      },
      for (final property in allProperties)
        {
          'type': property.contextFieldType,
          'name': property.name,
          'required': property.contextFieldRequired,
          'doc': _fieldDoc(property.name, type: property.type),
        },
    ];
  }

  List<Map<String, Object?>> _widgetFields() {
    return [
      {
        'type': '${name}Variant',
        'name': 'variant',
        'doc': _fieldDoc('variant'),
      },
      for (final property in allProperties)
        {
          'type': property.widgetFieldType,
          'name': property.name,
          'doc': _fieldDoc(property.name, type: property.type),
        },
      {
        'type': '${name}Style?',
        'name': 'style',
        'doc': _fieldDoc('style'),
      },
    ];
  }

  Map<String, Object?> _constructorContext(VariantSpec variant) {
    final owned = [...properties, ...variant.properties];
    final params = <String>[
      'super.key',
      for (final property in owned.where((p) => p.isRequiredParam))
        'required this.${property.name}',
      for (final property in owned.where((p) => !p.isRequiredParam))
        'this.${property.name}',
      'this.style',
    ];

    final missing = variantProperties
        .where(
          (property) =>
              !variant.properties.any((owned) => owned.name == property.name),
        )
        .toList();

    final initializers = <String>[
      'variant = ${name}Variant.${variant.enumName}',
      for (final property in missing) '${property.name} = null',
    ];

    final ctorName = variant.isUnnamedConstructor
        ? name
        : '$name.${variant.name}';

    return {
      'doc': GeneratedComponentDocs.constructor(
        name,
        unnamed: variant.isUnnamedConstructor,
        variantName: variant.name,
      ),
      'signature': 'const $ctorName({\n    ${params.join(',\n    ')},\n  })',
      'initializer': initializers.join(',\n       '),
    };
  }

  String _buildBody() {
    final styleNames = {for (final field in styleProperties) field.name};
    final variantEnum = '${name}Variant';
    final lines = <String>[];

    for (final property in allProperties) {
      final local = _resolvedName(property.name);
      final expr = _resolveExpression(property, styleNames, variantEnum);
      lines.add('    final $local = $expr;');
    }

    lines
      ..add('')
      ..add(_fromPropsBlock())
      ..add('    final merged = fromProps.mergeWith(style);')
      ..add(_resolvedStyleBlock())
      ..add(_resolvedStateBlock())
      ..add(_contextBlock())
      ..add(
        '    final delegate = '
        'MantleTheme.of(context).delegate<${name}Delegate>();',
      )
      ..add('    ${_rootCall()}');
    return lines.join('\n');
  }

  String _fromPropsBlock() {
    final matching = styleProperties.where(
      (field) => allProperties.any((property) => property.name == field.name),
    );
    if (matching.isEmpty) {
      return '    const fromProps = ${name}Style();';
    }
    final args = matching
        .map((field) => '${field.name}: ${field.name}')
        .join(',\n      ');
    return '    final fromProps = ${name}Style(\n      $args,\n    );';
  }

  String _resolvedStyleBlock() {
    if (styleProperties.isEmpty) {
      return '    final resolvedStyle = merged;';
    }
    final args = styleProperties
        .map((field) {
          final access = 'merged.${field.name}';
          final expr = _applyDefault(access, field);
          return '${field.name}: $expr';
        })
        .join(',\n      ');
    return '    final resolvedStyle = ${name}Style(\n      $args,\n    );';
  }

  String _resolvedStateBlock() {
    final propertyNames = {for (final property in allProperties) property.name};
    if (stateProperties.isEmpty) {
      return '    const resolvedState = ${name}State();';
    }
    final args = stateProperties
        .map((field) {
          if (propertyNames.contains(field.name)) {
            return '${field.name}: ${_resolvedName(field.name)}';
          }
          if (field.defaultValueSource != null) {
            return '${field.name}: ${field.defaultValueSource}';
          }
          return '${field.name}: null';
        })
        .join(',\n      ');
    return '    final resolvedState = ${name}State(\n      $args,\n    );';
  }

  String _contextBlock() {
    final args = [
      'context: context',
      'style: resolvedStyle',
      'state: resolvedState',
      'variant: variant',
      for (final property in allProperties)
        '${property.name}: ${_resolvedName(property.name)}',
    ].join(',\n      ');
    return '    final ${name[0].toLowerCase()}${name.substring(1)}Context = '
        '${name}Context(\n      $args,\n    );';
  }

  String _rootCall() {
    final contextVar = '${name[0].toLowerCase()}${name.substring(1)}Context';
    if (rootSlot.childParams.isEmpty) {
      return 'return delegate.${rootSlot.methodName}($contextVar);';
    }
    final args = rootSlot.childParams
        .map((param) => '${param.name}: ${_slotWrapper(param.slot)}')
        .join(',\n      ');
    return 'return delegate.${rootSlot.methodName}(\n'
        '      $contextVar,\n      $args,\n    );';
  }

  String _slotWrapper(SlotSpec slot) {
    if (slot.childParams.isEmpty) {
      return '${slot.typeName}((ctx) => delegate.${slot.methodName}(ctx))';
    }
    final args = slot.childParams
        .map((param) => '${param.name}: ${_slotWrapper(param.slot)}')
        .join(',\n        ');
    return '${slot.typeName}((ctx) => delegate.${slot.methodName}(\n'
        '        ctx,\n        $args,\n      ))';
  }

  String _resolveExpression(
    PropertySpec property,
    Set<String> styleNames,
    String variantEnum,
  ) {
    final parts = <String>[property.name];
    if (styleNames.contains(property.name)) {
      parts.add('style?.${property.name}');
    }

    if (property.isVariantSpecific) {
      final conditions = property.ownerVariantEnumNames
          .map((enumName) => 'variant == $variantEnum.$enumName')
          .join(' || ');
      final inner = _defaultExpr(property) ?? 'null';
      if (inner == 'null' && parts.length == 1) {
        return property.name;
      }
      parts.add('($conditions ? $inner : null)');
      return parts.join(' ?? ');
    }

    final defaultExpr = _defaultExpr(property);
    if (defaultExpr != null) {
      parts.add(defaultExpr);
    }
    return parts.join(' ?? ');
  }

  String? _defaultExpr(PropertySpec property) {
    if (property.defaultValueSource != null) {
      return property.defaultValueSource;
    }
    if (property.defaultBuilderName != null) {
      return '${property.defaultBuilderName}(context)';
    }
    return null;
  }

  String _applyDefault(String access, PropertySpec field) {
    final defaultExpr = _defaultExpr(field);
    if (defaultExpr == null) return access;
    return '$access ?? $defaultExpr';
  }

  static String _resolvedName(String name) =>
      'resolved${name[0].toUpperCase()}${name.substring(1)}';
}

/// A component or style/state property.
final class PropertySpec {
  /// Creates a [PropertySpec].
  const PropertySpec({
    required this.name,
    required this.type,
    this.nullable = false,
    this.defaultValueSource,
    this.defaultBuilderName,
    this.ownerVariantEnumNames = const [],
  });

  /// Constructor / field name.
  final String name;

  /// Dart type without `?`.
  final String type;

  /// Whether the public API accepts `null` with no default.
  final bool nullable;

  /// Source of a const default, e.g. `false` or `Alignment.center`.
  final String? defaultValueSource;

  /// Tear-off name of a `(BuildContext) → T` default.
  final String? defaultBuilderName;

  /// Enum names of variants that own this property. Empty = shared.
  final List<String> ownerVariantEnumNames;

  /// Whether a default exists.
  bool get hasDefault =>
      defaultValueSource != null || defaultBuilderName != null;

  /// Whether this property only exists on some variants.
  bool get isVariantSpecific => ownerVariantEnumNames.isNotEmpty;

  /// Whether constructors take this as `required this.name`.
  ///
  /// Shared properties that are not nullable and have no default are required
  /// on every constructor. Variant-only required properties are required on
  /// the owning constructor; other constructors still initialize them to null.
  bool get isRequiredParam => !nullable && !hasDefault;

  /// Widget field / constructor storage type.
  String get widgetFieldType =>
      (nullable || hasDefault || isVariantSpecific) ? '$type?' : type;

  /// Type on the generated context after resolution.
  String get contextFieldType {
    if (isVariantSpecific) return '$type?';
    if (nullable && !hasDefault) return '$type?';
    return type;
  }

  /// Whether the context constructor marks this field `required`.
  bool get contextFieldRequired {
    if (isVariantSpecific) return false;
    if (nullable && !hasDefault) return false;
    return true;
  }
}

/// A named constructor / enum value.
final class VariantSpec {
  /// Creates a [VariantSpec].
  const VariantSpec({
    required this.name,
    required this.enumName,
    required this.isUnnamedConstructor,
    this.properties = const [],
  });

  /// Name from the contract, e.g. `filled` or `default`.
  final String name;

  /// Valid Dart enum identifier, e.g. `defaults`.
  final String enumName;

  /// Whether this maps to the unnamed `Button(...)` constructor.
  final bool isUnnamedConstructor;

  /// Variant-only properties.
  final List<PropertySpec> properties;
}

/// A slot method on the contract.
final class SlotSpec {
  /// Creates a [SlotSpec].
  SlotSpec({
    required this.methodName,
    required this.typeName,
    required this.returnType,
    this.childParams = const [],
  });

  /// Method name, e.g. `inner`.
  final String methodName;

  /// Generated callable type, e.g. `ButtonInner`.
  final String typeName;

  /// Return type including `?` when nullable.
  final String returnType;

  /// Named child slots.
  final List<SlotParamSpec> childParams;

  /// Delegate method parameter list, including the context argument.
  String methodSignature(String contextType) {
    if (childParams.isEmpty) {
      return '($contextType context)';
    }
    final named = childParams
        .map((param) => 'required ${param.typeName} ${param.name}')
        .join(', ');
    return '($contextType context, {$named})';
  }
}

/// A named child-slot parameter.
final class SlotParamSpec {
  /// Creates a [SlotParamSpec].
  SlotParamSpec({
    required this.name,
    required this.typeName,
    required this.slot,
  });

  /// Parameter name, e.g. `prefix`.
  final String name;

  /// Parameter type, e.g. `ButtonSection`.
  final String typeName;

  /// The slot this parameter binds to.
  final SlotSpec slot;
}
