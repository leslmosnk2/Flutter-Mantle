import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'RingProgress usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'RingProgress usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// ringProgressUsagePreview gallery.
Widget ringProgressUsagePreview() {
  return const Wrap(
    spacing: 16,
    children: [
      RingProgress(value: 40, label: Text('40%')),
      RingProgress(value: 80, label: Text('80%')),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'RingProgress catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'RingProgress catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// ringProgressCatalogPreview gallery.
Widget ringProgressCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: ringProgressUsagePreview()),
    ],
  );
}
