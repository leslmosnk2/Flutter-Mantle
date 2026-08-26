import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/navigation.dart';

@Preview(name: 'TableOfContents usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'TableOfContents usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// tableOfContentsUsagePreview gallery.
Widget tableOfContentsUsagePreview() {
  return const TableOfContents(
    active: 'intro',
    headings: [
      TocHeading(value: 'intro', depth: 1, label: 'Intro'),
      TocHeading(value: 'details', depth: 2, label: 'Details'),
      TocHeading(value: 'api', depth: 2, label: 'API'),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'TableOfContents catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'TableOfContents catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// tableOfContentsCatalogPreview gallery.
Widget tableOfContentsCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: tableOfContentsUsagePreview()),
    ],
  );
}
