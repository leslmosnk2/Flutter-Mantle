import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/navigation.dart';

@Preview(name: 'Tabs usage', wrapper: wrapMantlePreview, size: Size(400, 140))
@Preview(
  name: 'Tabs usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// tabsUsagePreview gallery.
Widget tabsUsagePreview() {
  return const SizedBox(
    width: 360,
    height: 100,
    child: Tabs(
      value: 'gallery',
      children: [
        TabsList(
          children: [
            TabsTab(value: 'gallery', child: Text('Gallery')),
            TabsTab(value: 'messages', child: Text('Messages')),
            TabsTab(value: 'settings', child: Text('Settings')),
          ],
        ),
        TabsPanel(value: 'gallery', child: Text('Gallery panel')),
        TabsPanel(value: 'messages', child: Text('Messages panel')),
        TabsPanel(value: 'settings', child: Text('Settings panel')),
      ],
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Tabs catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Tabs catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// tabsCatalogPreview gallery.
Widget tabsCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: tabsUsagePreview()),
    ],
  );
}
