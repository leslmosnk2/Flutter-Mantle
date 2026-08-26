import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'JsonInput usage',
  wrapper: wrapMantlePreview,
  size: Size(360, 160),
)
@Preview(
  name: 'JsonInput usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// jsonInputUsagePreview gallery.
Widget jsonInputUsagePreview() {
  return const SizedBox(
    width: 280,
    child: JsonInput(
      defaultValue: '{ "a": 1 }',
      validationError: Text('Invalid JSON'),
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'JsonInput catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'JsonInput catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// jsonInputCatalogPreview gallery.
Widget jsonInputCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: jsonInputUsagePreview()),
    ],
  );
}
