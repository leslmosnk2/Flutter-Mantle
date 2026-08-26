import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Loader types (Mantine Loader).
@Preview(name: 'Loader types', wrapper: wrapMantlePreview)
@Preview(
  name: 'Loader types (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// loaderTypesPreview gallery.
Widget loaderTypesPreview() {
  return const Wrap(
    spacing: 16,
    runSpacing: 16,
    children: [
      Loader(),
      Loader.bars(),
      Loader.dots(),
    ],
  );
}

/// Regular sizes xs–xl.
@Preview(name: 'Loader sizes', wrapper: wrapMantlePreview)
@Preview(
  name: 'Loader sizes (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// loaderSizesPreview gallery.
Widget loaderSizesPreview() {
  return Wrap(
    spacing: 16,
    runSpacing: 16,
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      for (final size in ['xs', 'sm', 'md', 'lg', 'xl']) Loader(size: size),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Loader catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Loader catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// loaderCatalogPreview gallery.
Widget loaderCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Types', child: loaderTypesPreview()),
      PreviewSection(title: 'Sizes', child: loaderSizesPreview()),
    ],
  );
}
