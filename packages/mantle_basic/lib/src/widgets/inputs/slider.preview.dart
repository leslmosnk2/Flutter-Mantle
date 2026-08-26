import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Slider usage', wrapper: wrapMantlePreview, size: Size(360, 80))
@Preview(
  name: 'Slider usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// sliderUsagePreview gallery.
Widget sliderUsagePreview() {
  return const SizedBox(width: 280, child: Slider(value: 40));
}

@Preview(
  name: 'RangeSlider usage',
  wrapper: wrapMantlePreview,
  size: Size(360, 80),
)
@Preview(
  name: 'RangeSlider usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// rangeSliderUsagePreview gallery.
Widget rangeSliderUsagePreview() {
  return const SizedBox(
    width: 280,
    child: RangeSlider(value: RangeSliderValue(20, 80)),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Slider catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Slider catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// sliderCatalogPreview gallery.
Widget sliderCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: sliderUsagePreview()),
      PreviewSection(title: 'Range', child: rangeSliderUsagePreview()),
    ],
  );
}
