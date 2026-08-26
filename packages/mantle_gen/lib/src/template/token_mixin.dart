import 'package:mantle_gen/src/parser/template.dart';
import 'package:mantle_gen/src/template/template_loader.dart';

/// Template for generating a token mixin.
abstract final class TokenMixinTemplate {
  static final _template = Template.compile(
    TemplateLoader.load('token_mixin.txt'),
  );

  /// Renders the token mixin for the given [name], [type], and [fields].
  static String render({
    required String name,
    required String type,
    required List<String> fields,
  }) {
    return _template.render({
      'name': name,
      'type': type,
      'fields': fields,
    });
  }
}
