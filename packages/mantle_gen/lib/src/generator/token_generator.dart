import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_gen/src/template/token_group.dart';
import 'package:mantle_gen/src/template/token_mixin.dart';
import 'package:mantle_gen/src/template/token_theme.dart';
import 'package:source_gen/source_gen.dart';

/// Generates context-built token bases, static-const mixins, and theme
/// aggregators from `@MantleToken` / `@MantleAppTheme`.
class MantleTokenGenerator extends Generator {
  static const _tokenChecker = TypeChecker.typeNamed(
    MantleToken,
    inPackage: 'mantle_annotations',
  );

  static const _themeChecker = TypeChecker.typeNamed(
    MantleAppTheme,
    inPackage: 'mantle_annotations',
  );

  @override
  Future<String?> generate(LibraryReader library, BuildStep buildStep) async {
    final parts = <String>[];
    final scaleTokens = <_ScaleToken>[];

    for (final annotated in library.annotatedWith(_tokenChecker)) {
      final element = annotated.element;
      if (element is! ClassElement) {
        throw InvalidGenerationSource(
          '@MantleToken can only be applied to classes.',
          element: element,
        );
      }
      final generated = _generateToken(
        element: element,
        annotation: annotated.annotation,
      );
      parts.add(generated.output);
      if (generated.scale != null) {
        scaleTokens.add(generated.scale!);
      }
    }

    for (final annotated in library.annotatedWith(_themeChecker)) {
      final element = annotated.element;
      if (element is! ClassElement) {
        throw InvalidGenerationSource(
          '@MantleAppTheme can only be applied to classes.',
          element: element,
        );
      }
      parts.add(
        _generateTheme(
          element: element,
          annotation: annotated.annotation,
          tokens: scaleTokens,
        ),
      );
    }

    if (parts.isEmpty) {
      return null;
    }
    return parts.join('\n');
  }

  static _TokenOutput _generateToken({
    required ClassElement element,
    required ConstantReader annotation,
  }) {
    final className = element.name;
    if (className == null) {
      throw InvalidGenerationSource(
        '@MantleToken requires a named class.',
        element: element,
      );
    }

    final sizes = _readSizes(annotation);
    if (sizes.isEmpty) {
      return _TokenOutput(
        output: _generateConstMixin(element: element, annotation: annotation),
      );
    }

    for (final size in sizes) {
      if (!_isDartIdentifier(size)) {
        throw InvalidGenerationSource(
          '"$size" is not a valid Dart identifier for a token name.',
          element: element,
        );
      }
    }

    final slot = _readSlot(annotation) ?? _inferSlot(className);
    if (slot == null) {
      throw InvalidGenerationSource(
        'Cannot infer a theme slot for $className. Name it *Spacing, '
        '*Radius, or *Breakpoint, or set slot:',
        element: element,
      );
    }
    final baseName = _mixinName(
      annotation.peek('name')!.stringValue,
      className,
    );
    final interfaceType = _slotGroupType(slot)!;

    final output = TokenGroupTemplate.render({
      'baseName': baseName,
      'className': className,
      'interfaceType': interfaceType,
      'fields': sizes,
      'isSpacing': slot == MantleTokenSlot.spacing,
      'isRadius': slot == MantleTokenSlot.radius,
      'isBreakpoint': slot == MantleTokenSlot.breakpoints,
    });

    return _TokenOutput(
      output: output,
      scale: _ScaleToken(
        className: className,
        baseName: baseName,
        slot: slot,
        slotName: slot.name,
        slotType: interfaceType,
      ),
    );
  }

  static String _generateConstMixin({
    required ClassElement element,
    required ConstantReader annotation,
  }) {
    final className = element.name;
    if (className == null) {
      throw InvalidGenerationSource(
        '@MantleToken requires a named class.',
        element: element,
      );
    }

    final mixinName = _mixinName(
      annotation.peek('name')!.stringValue,
      className,
    );
    final type = annotation.peek('type')!.typeValue;
    final values = [
      for (final field in element.fields)
        if (field.isStatic && field.isConst) field.name!,
    ];

    if (values.isEmpty) {
      throw InvalidGenerationSource(
        '$className must declare @MantleToken sizes or static const fields.',
        element: element,
      );
    }

    return TokenMixinTemplate.render(
      name: mixinName,
      type: _staticMapType(type),
      fields: values,
    );
  }

  static String _generateTheme({
    required ClassElement element,
    required ConstantReader annotation,
    required List<_ScaleToken> tokens,
  }) {
    final className = element.name;
    if (className == null) {
      throw InvalidGenerationSource(
        '@MantleAppTheme requires a named class.',
        element: element,
      );
    }

    final nameReader = annotation.peek('name');
    final themeName = nameReader == null || nameReader.isNull
        ? className
        : nameReader.stringValue;
    final seen = <MantleTokenSlot>{};
    for (final token in tokens) {
      if (!seen.add(token.slot)) {
        throw InvalidGenerationSource(
          'Multiple @MantleToken classes map to ${token.slot.name}.',
          element: element,
        );
      }
    }

    return TokenThemeTemplate.render({
      'baseName':
          r'_$'
          '$themeName',
      'className': themeName,
      'helpersMixin':
          r'_$'
          '${themeName}Mixin',
      'tokens': [
        for (final token in tokens)
          {
            'className': token.className,
            'baseName': token.baseName,
            'slotName': token.slotName,
            'slotType': token.slotType,
          },
      ],
    });
  }

  static List<String> _readSizes(ConstantReader annotation) {
    final sizes = annotation.peek('sizes');
    if (sizes == null || sizes.isNull) {
      return const [];
    }
    return [
      for (final value in sizes.listValue) value.toStringValue()!,
    ];
  }

  static MantleTokenSlot? _readSlot(ConstantReader annotation) {
    final slot = annotation.peek('slot');
    if (slot == null || slot.isNull) {
      return null;
    }
    final name = slot.revive().accessor.split('.').last;
    for (final value in MantleTokenSlot.values) {
      if (value.name == name) {
        return value;
      }
    }
    throw InvalidGenerationSource('Unknown MantleTokenSlot: $name');
  }

  static MantleTokenSlot? _inferSlot(String className) {
    if (className.endsWith('Spacing')) {
      return MantleTokenSlot.spacing;
    }
    if (className.endsWith('Radius')) {
      return MantleTokenSlot.radius;
    }
    if (className.endsWith('Breakpoints') || className.endsWith('Breakpoint')) {
      return MantleTokenSlot.breakpoints;
    }
    return null;
  }

  static String? _slotGroupType(MantleTokenSlot? slot) {
    return switch (slot) {
      MantleTokenSlot.breakpoints => 'MantleBreakpoint',
      MantleTokenSlot.spacing => 'MantleSpacing',
      MantleTokenSlot.radius => 'MantleRadius',
      null => null,
    };
  }

  static String _mixinName(String template, String className) {
    return template.replaceAll('{classname}', className);
  }

  static String _staticMapType(DartType type) {
    if (type is DynamicType) {
      return 'dynamic';
    }
    final name = type.element?.name;
    if (name != null && name.isNotEmpty) {
      return name;
    }
    return type.getDisplayString();
  }

  static bool _isDartIdentifier(String value) {
    if (value.isEmpty) {
      return false;
    }
    final first = value.codeUnitAt(0);
    final startsWell =
        first == 95 ||
        (first >= 65 && first <= 90) ||
        (first >= 97 && first <= 122);
    if (!startsWell) {
      return false;
    }
    for (var i = 1; i < value.length; i++) {
      final unit = value.codeUnitAt(i);
      final ok =
          unit == 95 ||
          (unit >= 65 && unit <= 90) ||
          (unit >= 97 && unit <= 122) ||
          (unit >= 48 && unit <= 57);
      if (!ok) {
        return false;
      }
    }
    return true;
  }
}

class _TokenOutput {
  _TokenOutput({required this.output, this.scale});

  final String output;
  final _ScaleToken? scale;
}

class _ScaleToken {
  _ScaleToken({
    required this.className,
    required this.baseName,
    required this.slot,
    required this.slotName,
    required this.slotType,
  });

  final String className;
  final String baseName;
  final MantleTokenSlot slot;
  final String slotName;
  final String slotType;
}
