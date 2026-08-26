import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'FloatingWindow usage',
  wrapper: wrapMantlePreview,
  size: Size(400, 260),
)
@Preview(
  name: 'FloatingWindow usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// floatingWindowUsagePreview gallery.
Widget floatingWindowUsagePreview() {
  return const SizedBox(
    width: 360,
    height: 220,
    child: FloatingWindow(
      left: 16,
      top: 16,
      width: 220,
      title: Text('Notes'),
      child: Text('Body'),
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'FloatingWindow catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'FloatingWindow catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// floatingWindowCatalogPreview gallery.
Widget floatingWindowCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: floatingWindowUsagePreview()),
    ],
  );
}
