import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'MOverlay usage',
  wrapper: wrapMantlePreview,
  size: Size(320, 200),
)
@Preview(
  name: 'MOverlay usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mOverlayUsagePreview gallery.
Widget mOverlayUsagePreview() {
  return const SizedBox(
    width: 280,
    height: 160,
    child: MOverlay(
      center: true,
      child: Text('Inside'),
    ),
  );
}

@Preview(
  name: 'MOverlay hidden',
  wrapper: wrapMantlePreview,
  size: Size(320, 120),
)
@Preview(
  name: 'MOverlay hidden (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mOverlayHiddenPreview gallery.
Widget mOverlayHiddenPreview() {
  return const SizedBox(
    width: 280,
    height: 80,
    child: MOverlay(visible: false, child: Text('Inside')),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'MOverlay catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'MOverlay catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// moverlayCatalogPreview gallery.
Widget moverlayCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: mOverlayUsagePreview()),
      PreviewSection(title: 'Hidden', child: mOverlayHiddenPreview()),
    ],
  );
}
