import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Header / navbar / main (Mantine AppShell).
@Preview(
  name: 'AppShell usage',
  wrapper: wrapMantlePreview,
  size: Size(480, 280),
)
@Preview(
  name: 'AppShell usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// appShellUsagePreview gallery.
Widget appShellUsagePreview() {
  return const SizedBox(
    width: 440,
    height: 240,
    child: AppShell(
      padding: 'md',
      header: AppShellHeaderConfig(height: 40),
      navbar: AppShellNavbarConfig(width: 120),
      children: [
        AppShellHeader(child: Text('Logo')),
        AppShellNavbar(child: Text('Navbar')),
        AppShellMain(child: Text('Main')),
      ],
    ),
  );
}

/// `layout: alt` — navbar spans full height.
@Preview(name: 'AppShell alt', wrapper: wrapMantlePreview, size: Size(480, 280))
@Preview(
  name: 'AppShell alt (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// appShellAltPreview gallery.
Widget appShellAltPreview() {
  return const SizedBox(
    width: 440,
    height: 240,
    child: AppShell(
      layout: AppShellLayout.alt,
      header: AppShellHeaderConfig(height: 40),
      navbar: AppShellNavbarConfig(width: 100),
      aside: AppShellAsideConfig(width: 80),
      footer: AppShellFooterConfig(height: 32),
      children: [
        AppShellHeader(child: Text('Header')),
        AppShellNavbar(child: Text('Nav')),
        AppShellMain(child: Text('Main')),
        AppShellAside(child: Text('Aside')),
        AppShellFooter(child: Text('Footer')),
      ],
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'AppShell catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'AppShell catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// appShellCatalogPreview gallery.
Widget appShellCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: appShellUsagePreview()),
      PreviewSection(title: 'Alt', child: appShellAltPreview()),
    ],
  );
}
