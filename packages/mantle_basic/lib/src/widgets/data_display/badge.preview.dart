import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Appearances matching Mantine Badge variants.
@Preview(name: 'Badge variants', wrapper: wrapMantlePreview)
@Preview(
  name: 'Badge variants (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// badgeVariantsPreview gallery.
Widget badgeVariantsPreview() {
  const label = Text('New');
  return const Wrap(
    spacing: 8,
    runSpacing: 8,
    children: [
      Badge(child: label),
      Badge(appearance: 'light', child: label),
      Badge(appearance: 'outline', child: label),
      Badge(appearance: 'dot', child: label),
      Badge(appearance: 'transparent', child: label),
      Badge(appearance: 'default', child: label),
    ],
  );
}

@Preview(name: 'Badge sizes', wrapper: wrapMantlePreview)
@Preview(
  name: 'Badge sizes (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// badgeSizesPreview gallery.
Widget badgeSizesPreview() {
  return Wrap(
    spacing: 8,
    runSpacing: 8,
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      for (final size in ['xs', 'sm', 'md', 'lg', 'xl'])
        Badge(size: size, child: Text(size)),
    ],
  );
}

@Preview(name: 'Badge sections', wrapper: wrapMantlePreview)
@Preview(
  name: 'Badge sections (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// badgeSectionsPreview gallery.
Widget badgeSectionsPreview() {
  return const Wrap(
    spacing: 8,
    children: [
      Badge(leftSection: Text('•'), child: Text('With left')),
      Badge(rightSection: Text('×'), child: Text('With right')),
      Badge(circle: true, child: Text('3')),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Badge catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Badge catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// badgeCatalogPreview gallery.
Widget badgeCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Variants', child: badgeVariantsPreview()),
      PreviewSection(title: 'Sizes', child: badgeSizesPreview()),
      PreviewSection(title: 'Sections', child: badgeSectionsPreview()),
    ],
  );
}
