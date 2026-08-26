import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'FileInput usage',
  wrapper: wrapMantlePreview,
  size: Size(360, 80),
)
@Preview(
  name: 'FileInput usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// fileInputUsagePreview gallery.
Widget fileInputUsagePreview() {
  return const SizedBox(
    width: 280,
    child: FileInput(placeholder: 'Pick file'),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'FileInput catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'FileInput catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// fileInputCatalogPreview gallery.
Widget fileInputCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: fileInputUsagePreview()),
    ],
  );
}
