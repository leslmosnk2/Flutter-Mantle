import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'MColorSwatch usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'MColorSwatch usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mColorSwatchUsagePreview gallery.
Widget mColorSwatchUsagePreview() {
  return const Wrap(
    spacing: 8,
    children: [
      MColorSwatch(color: Color(0xFF228BE6)),
      MColorSwatch(color: Color(0xFF40C057), checked: true),
      MColorSwatch(color: Color(0xFFFA5252)),
      MColorSwatch(color: Color(0xFFFCC419)),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'MColorSwatch catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'MColorSwatch catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mcolorSwatchCatalogPreview gallery.
Widget mcolorSwatchCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: mColorSwatchUsagePreview()),
    ],
  );
}
