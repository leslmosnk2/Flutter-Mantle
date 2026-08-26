import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'MaskInput usage',
  wrapper: wrapMantlePreview,
  size: Size(360, 80),
)
@Preview(
  name: 'MaskInput usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// maskInputUsagePreview gallery.
Widget maskInputUsagePreview() {
  return const SizedBox(
    width: 200,
    child: MaskInput(mask: '999-99', placeholder: '000-00'),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'MaskInput catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'MaskInput catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// maskInputCatalogPreview gallery.
Widget maskInputCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: maskInputUsagePreview()),
    ],
  );
}
