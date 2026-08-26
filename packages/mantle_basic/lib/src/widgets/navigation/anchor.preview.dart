import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/navigation.dart';

@Preview(name: 'Anchor usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Anchor usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// anchorUsagePreview gallery.
Widget anchorUsagePreview() {
  return const Wrap(
    spacing: 12,
    children: [
      Anchor(href: 'https://mantine.dev/', child: Text('Link')),
      Anchor(
        href: 'https://mantine.dev/',
        underline: AnchorUnderline.always,
        child: Text('Always'),
      ),
      Anchor(
        href: 'https://mantine.dev/',
        underline: AnchorUnderline.never,
        child: Text('Never'),
      ),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Anchor catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Anchor catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// anchorCatalogPreview gallery.
Widget anchorCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: anchorUsagePreview()),
    ],
  );
}
