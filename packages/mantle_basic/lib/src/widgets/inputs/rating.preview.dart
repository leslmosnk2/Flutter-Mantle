import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Rating usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Rating usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// ratingUsagePreview gallery.
Widget ratingUsagePreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Rating(value: 3),
      SizedBox(height: 8),
      Rating(value: 2.5),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Rating catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Rating catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// ratingCatalogPreview gallery.
Widget ratingCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: ratingUsagePreview()),
    ],
  );
}
