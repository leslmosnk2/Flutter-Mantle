import 'package:mantle_gen/src/parser/template.dart';
import 'package:mantle_gen/src/template/template_loader.dart';

/// Template for a generated token-group base class.
abstract final class TokenGroupTemplate {
  static final _template = Template.compile(
    TemplateLoader.load('token_group.txt'),
  );

  /// Renders the context-built token base class for [context].
  static String render(Map<String, Object?> context) {
    return _template.render(context);
  }
}
