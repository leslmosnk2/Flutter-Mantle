import 'package:mantle_gen/src/parser/ast.dart';
import 'package:mantle_gen/src/parser/ast_parser.dart';
import 'package:mantle_gen/src/parser/exception.dart';
import 'package:mantle_gen/src/parser/lexer.dart';
import 'package:mantle_gen/src/parser/renderer.dart';

/// A compiled template that can be rendered many times.
final class Template {
  Template._(this._nodes);

  /// Compiles [source] into a reusable [Template].
  factory Template.compile(String source) {
    try {
      final tokens = TemplateLexer(source).tokenize();
      final nodes = TemplateAstParser(tokens).parse();
      return Template._(nodes);
    } on TemplateException {
      rethrow;
    } catch (error) {
      throw TemplateException('Failed to compile template: $error');
    }
  }

  final List<TemplateNode> _nodes;

  /// Renders this template with the given [context].
  String render(Map<String, Object?> context) {
    return TemplateRenderer(_nodes).render(context);
  }
}
