import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'FloatingIndicator usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'FloatingIndicator usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// floatingIndicatorUsagePreview gallery.
Widget floatingIndicatorUsagePreview() {
  return const FloatingIndicator(
    active: 1,
    children: [Text('One'), Text('Two'), Text('Three')],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'FloatingIndicator catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'FloatingIndicator catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// floatingIndicatorCatalogPreview gallery.
Widget floatingIndicatorCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: floatingIndicatorUsagePreview()),
    ],
  );
}
