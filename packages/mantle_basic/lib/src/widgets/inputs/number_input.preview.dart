import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'NumberInput usage',
  wrapper: wrapMantlePreview,
  size: Size(360, 80),
)
@Preview(
  name: 'NumberInput usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// numberInputUsagePreview gallery.
Widget numberInputUsagePreview() {
  return const SizedBox(
    width: 200,
    child: NumberInput(value: 1),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'NumberInput catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'NumberInput catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// numberInputCatalogPreview gallery.
Widget numberInputCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: numberInputUsagePreview()),
    ],
  );
}
