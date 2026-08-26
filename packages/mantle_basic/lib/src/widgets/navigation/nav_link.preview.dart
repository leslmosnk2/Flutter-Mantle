import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/navigation.dart';

@Preview(
  name: 'NavLink usage',
  wrapper: wrapMantlePreview,
  size: Size(280, 160),
)
@Preview(
  name: 'NavLink usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// navLinkUsagePreview gallery.
Widget navLinkUsagePreview() {
  return const SizedBox(
    width: 240,
    child: NavLink(
      label: Text('Dashboard'),
      opened: true,
      children: [
        NavLink(label: Text('Overview')),
        NavLink(label: Text('Releases')),
      ],
    ),
  );
}

@Preview(
  name: 'NavLink states',
  wrapper: wrapMantlePreview,
  size: Size(280, 80),
)
@Preview(
  name: 'NavLink states (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// navLinkStatesPreview gallery.
Widget navLinkStatesPreview() {
  return const SizedBox(
    width: 240,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        NavLink(label: Text('Active'), active: true),
        NavLink(label: Text('Disabled'), disabled: true),
      ],
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'NavLink catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'NavLink catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// navLinkCatalogPreview gallery.
Widget navLinkCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: navLinkUsagePreview()),
      PreviewSection(title: 'States', child: navLinkStatesPreview()),
    ],
  );
}
