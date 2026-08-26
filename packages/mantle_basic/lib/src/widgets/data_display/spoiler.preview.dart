import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'Spoiler usage',
  wrapper: wrapMantlePreview,
  size: Size(360, 140),
)
@Preview(
  name: 'Spoiler usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// spoilerUsagePreview gallery.
Widget spoilerUsagePreview() {
  return const SizedBox(
    width: 320,
    child: Spoiler(
      maxHeight: 40,
      showLabel: Text('Show more'),
      hideLabel: Text('Hide'),
      child: Text(
        'Mantine is a fully featured React components library '
        'that lets you build accessible web applications faster.',
      ),
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Spoiler catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Spoiler catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// spoilerCatalogPreview gallery.
Widget spoilerCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: spoilerUsagePreview()),
    ],
  );
}
