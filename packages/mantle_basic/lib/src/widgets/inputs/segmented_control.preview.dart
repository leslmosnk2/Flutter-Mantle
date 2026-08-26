import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'SegmentedControl usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'SegmentedControl usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// segmentedControlUsagePreview gallery.
Widget segmentedControlUsagePreview() {
  return const SegmentedControl(
    value: 'react',
    data: [
      SegmentedControlItem(value: 'react', label: Text('React')),
      SegmentedControlItem(value: 'ng', label: Text('Angular')),
      SegmentedControlItem(value: 'vue', label: Text('Vue')),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'SegmentedControl catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'SegmentedControl catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// segmentedControlCatalogPreview gallery.
Widget segmentedControlCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: segmentedControlUsagePreview()),
    ],
  );
}
