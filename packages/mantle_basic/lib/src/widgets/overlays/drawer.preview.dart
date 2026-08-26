import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Drawer left', wrapper: wrapMantlePreview, size: Size(480, 280))
@Preview(
  name: 'Drawer left (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// drawerLeftPreview gallery.
Widget drawerLeftPreview() {
  return const SizedBox(
    width: 440,
    height: 240,
    child: Drawer(
      opened: true,
      title: Text('Navigation'),
      child: Text('Links'),
    ),
  );
}

@Preview(name: 'Drawer right', wrapper: wrapMantlePreview, size: Size(480, 280))
@Preview(
  name: 'Drawer right (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// drawerRightPreview gallery.
Widget drawerRightPreview() {
  return const SizedBox(
    width: 440,
    height: 240,
    child: Drawer(
      opened: true,
      position: DrawerPosition.right,
      child: Text('Aside'),
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Drawer catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Drawer catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// drawerCatalogPreview gallery.
Widget drawerCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Left', child: drawerLeftPreview()),
      PreviewSection(title: 'Right', child: drawerRightPreview()),
    ],
  );
}
