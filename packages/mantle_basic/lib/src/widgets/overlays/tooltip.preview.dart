import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Tooltip usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Tooltip usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// tooltipUsagePreview gallery.
Widget tooltipUsagePreview() {
  return const Tooltip(
    opened: true,
    label: 'Hint',
    child: Text('Target'),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Tooltip catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Tooltip catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// tooltipCatalogPreview gallery.
Widget tooltipCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: tooltipUsagePreview()),
    ],
  );
}
