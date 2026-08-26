import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'LoadingOverlay usage',
  wrapper: wrapMantlePreview,
  size: Size(320, 180),
)
@Preview(
  name: 'LoadingOverlay usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// loadingOverlayUsagePreview gallery.
Widget loadingOverlayUsagePreview() {
  return const SizedBox(
    width: 280,
    height: 120,
    child: LoadingOverlay(visible: true, child: Text('Form content')),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'LoadingOverlay catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'LoadingOverlay catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// loadingOverlayCatalogPreview gallery.
Widget loadingOverlayCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: loadingOverlayUsagePreview()),
    ],
  );
}
