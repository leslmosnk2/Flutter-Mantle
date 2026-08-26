import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_gen/src/template/token_mixin.dart';
import 'package:source_gen/source_gen.dart';

/// A generator for creating token classes.
class MantleTokenGenerator extends GeneratorForAnnotation<MantleToken> {
  @override
  Future<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    final name = annotation.peek('name')!.stringValue;
    final type = annotation.peek('type')!.typeValue;

    final values = _getFieldValues(element);

    return TokenMixinTemplate.render(
      name: name,
      type: type.element!.name!,
      fields: values,
    );
  }

  static List<String> _getFieldValues(Element element) {
    final e = element as ClassElement;
    final fields = e.fields.where((field) => field.isStatic && field.isConst);

    return fields.map((e) => e.name!).toList();
  }
}
