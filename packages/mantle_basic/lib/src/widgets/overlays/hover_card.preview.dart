import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'HoverCard opened', wrapper: wrapMantlePreview)
@Preview(
  name: 'HoverCard opened (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// hoverCardOpenedPreview gallery.
Widget hoverCardOpenedPreview() {
  return const HoverCard(
    initiallyOpened: true,
    children: [
      HoverCardTarget(child: Text('Hover')),
      HoverCardDropdown(child: Text('Card content')),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'HoverCard catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'HoverCard catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// hoverCardCatalogPreview gallery.
Widget hoverCardCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Opened', child: hoverCardOpenedPreview()),
    ],
  );
}
