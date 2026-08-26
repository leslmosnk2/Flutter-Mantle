import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_gen/src/generator/component_parser.dart';
import 'package:mantle_gen/src/template/component.dart';
import 'package:source_gen/source_gen.dart';

/// Emits the public widget API, style/state/context types, and slot delegates
/// for a [MantleComponent] contract class.
class MantleComponentGenerator extends GeneratorForAnnotation<MantleComponent> {
  @override
  Future<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    if (element is! ClassElement) {
      return '';
    }

    final annotationType = annotation.objectValue.type?.element?.name;
    if (annotationType != 'MantleComponentContract') {
      return '';
    }

    if (!element.isAbstract) {
      throw InvalidGenerationSource(
        '${element.name} must be abstract; it is a definition, '
        'not an implementation.',
        element: element,
      );
    }

    final node = await buildStep.resolver.astNodeFor(element.firstFragment);
    if (node is! ClassDeclaration) {
      throw InvalidGenerationSource(
        'Could not resolve the class declaration for ${element.name}.',
        element: element,
      );
    }

    final spec = parseComponentSpec(
      element: element,
      annotation: annotation,
      declaration: node,
    );

    return ComponentTemplate.render(spec);
  }
}
