import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Popover opened', wrapper: wrapMantlePreview)
@Preview(
  name: 'Popover opened (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// popoverOpenedPreview gallery.
Widget popoverOpenedPreview() {
  return const Popover(
    opened: true,
    children: [
      PopoverTarget(child: Text('Toggle')),
      PopoverDropdown(child: Text('Flyout content')),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Popover catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Popover catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// popoverCatalogPreview gallery.
Widget popoverCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Opened', child: popoverOpenedPreview()),
    ],
  );
}
