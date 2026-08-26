import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'AngleSlider usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'AngleSlider usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// angleSliderUsagePreview gallery.
Widget angleSliderUsagePreview() {
  return const AngleSlider(value: 45);
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'AngleSlider catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'AngleSlider catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// angleSliderCatalogPreview gallery.
Widget angleSliderCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: angleSliderUsagePreview()),
    ],
  );
}
