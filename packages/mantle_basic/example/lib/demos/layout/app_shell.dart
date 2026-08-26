import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final appShellPage = GalleryPage(
  slug: 'layout/app-shell',
  title: 'AppShell',
  category: 'Layout',
  description: 'Header, navbar, and main content nested in a compact preview.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      description:
          'AppShell must be given a finite size; it is not a '
          'full-screen scaffold by itself.',
      builder: (context) => const SizedBox(
        width: 480,
        height: 280,
        child: AppShell(
          header: AppShellHeaderConfig(height: 40),
          navbar: AppShellNavbarConfig(width: 120),
          children: [
            AppShellHeader(child: Text('Header')),
            AppShellNavbar(child: Text('Navbar')),
            AppShellMain(child: Text('Main')),
          ],
        ),
      ),
      code: '''
SizedBox(
  width: 480,
  height: 280,
  child: AppShell(
    header: AppShellHeaderConfig(height: 40),
    navbar: AppShellNavbarConfig(width: 120),
    children: [
      AppShellHeader(child: Text('Header')),
      AppShellNavbar(child: Text('Navbar')),
      AppShellMain(child: Text('Main')),
    ],
  ),
)
''',
    ),
    GalleryDemo(
      title: 'Padding and footer',
      builder: (context) => const SizedBox(
        width: 480,
        height: 280,
        child: AppShell(
          padding: 'md',
          header: AppShellHeaderConfig(height: 40),
          navbar: AppShellNavbarConfig(width: 120),
          footer: AppShellFooterConfig(height: 36),
          children: [
            AppShellHeader(child: Text('Header')),
            AppShellNavbar(child: Text('Navbar')),
            AppShellMain(child: Text('Main')),
            AppShellFooter(child: Text('Footer')),
          ],
        ),
      ),
      code: '''
SizedBox(
  width: 480,
  height: 280,
  child: AppShell(
    padding: 'md',
    header: AppShellHeaderConfig(height: 40),
    navbar: AppShellNavbarConfig(width: 120),
    footer: AppShellFooterConfig(height: 36),
    children: [
      AppShellHeader(child: Text('Header')),
      AppShellNavbar(child: Text('Navbar')),
      AppShellMain(child: Text('Main')),
      AppShellFooter(child: Text('Footer')),
    ],
  ),
)
''',
    ),
  ],
);
