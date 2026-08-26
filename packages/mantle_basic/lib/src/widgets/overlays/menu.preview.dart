import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Menu opened', wrapper: wrapMantlePreview)
@Preview(
  name: 'Menu opened (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// menuOpenedPreview gallery.
Widget menuOpenedPreview() {
  return const Menu(
    opened: true,
    children: [
      MenuTarget(child: Text('Open')),
      MenuDropdown(
        children: [
          MenuLabel(child: Text('Application')),
          MenuItem(child: Text('Settings')),
          MenuDivider(),
          MenuItem(child: Text('Logout')),
        ],
      ),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Menu catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Menu catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// menuCatalogPreview gallery.
Widget menuCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Opened', child: menuOpenedPreview()),
    ],
  );
}
