import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/navigation.dart';

@Preview(name: 'Burger usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Burger usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// burgerUsagePreview gallery.
Widget burgerUsagePreview() {
  return const Wrap(
    spacing: 16,
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      Burger(opened: false, onTap: previewNoop),
      Burger(opened: true, onTap: previewNoop),
      Burger(opened: false, size: 'lg', onTap: previewNoop),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Burger catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Burger catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// burgerCatalogPreview gallery.
Widget burgerCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: burgerUsagePreview()),
    ],
  );
}
