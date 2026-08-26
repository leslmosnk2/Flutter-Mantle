import 'package:mantle_gen/src/generator/component_spec.dart';
import 'package:mantle_gen/src/parser/template.dart';
import 'package:mantle_gen/src/template/template_loader.dart';

/// Template for a generated component API, styles, state, and delegates.
abstract final class ComponentTemplate {
  static final _template = Template.compile(
    TemplateLoader.load('component.txt'),
  );

  /// Renders generated types for [spec].
  static String render(ComponentSpec spec) {
    return _template.render(spec.toTemplateContext());
  }
}
