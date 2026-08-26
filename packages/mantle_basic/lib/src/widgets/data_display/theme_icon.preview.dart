import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'ThemeIcon variants', wrapper: wrapMantlePreview)
@Preview(
  name: 'ThemeIcon variants (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// themeIconVariantsPreview gallery.
Widget themeIconVariantsPreview() {
  const icon = Text('*');
  return const Wrap(
    spacing: 8,
    runSpacing: 8,
    children: [
      ThemeIcon(child: icon),
      ThemeIcon(appearance: 'light', child: icon),
      ThemeIcon(appearance: 'outline', child: icon),
      ThemeIcon(appearance: 'transparent', child: icon),
    ],
  );
}

@Preview(name: 'ThemeIcon sizes', wrapper: wrapMantlePreview)
@Preview(
  name: 'ThemeIcon sizes (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// themeIconSizesPreview gallery.
Widget themeIconSizesPreview() {
  return Wrap(
    spacing: 8,
    runSpacing: 8,
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      for (final size in ['xs', 'sm', 'md', 'lg', 'xl'])
        ThemeIcon(size: size, child: const Text('*')),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'ThemeIcon catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'ThemeIcon catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// themeIconCatalogPreview gallery.
Widget themeIconCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Variants', child: themeIconVariantsPreview()),
      PreviewSection(title: 'Sizes', child: themeIconSizesPreview()),
    ],
  );
}
