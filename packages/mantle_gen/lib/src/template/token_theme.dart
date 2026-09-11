import 'package:mantle_gen/src/parser/template.dart';
import 'package:mantle_gen/src/template/template_loader.dart';

/// Template for a generated theme aggregator.
abstract final class TokenThemeTemplate {
  static final _template = Template.compile(
    TemplateLoader.load('token_theme.txt'),
  );

  /// Renders the theme base class for [context].
  static String render(Map<String, Object?> context) {
    return _template.render(context);
  }
}
