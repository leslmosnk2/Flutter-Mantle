import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Menubar usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Menubar usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// menubarUsagePreview gallery.
Widget menubarUsagePreview() {
  return const Menubar(
    openIndex: 0,
    children: [
      MenubarMenu(
        children: [
          MenubarTarget(child: Text('File')),
          MenubarDropdown(children: [MenuItem(child: Text('New'))]),
        ],
      ),
      MenubarMenu(
        children: [
          MenubarTarget(child: Text('Edit')),
          MenubarDropdown(children: [MenuItem(child: Text('Undo'))]),
        ],
      ),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Menubar catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Menubar catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// menubarCatalogPreview gallery.
Widget menubarCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: menubarUsagePreview()),
    ],
  );
}
