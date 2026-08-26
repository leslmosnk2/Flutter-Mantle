import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final navLinkPage = GalleryPage(
  slug: 'navigation/nav-link',
  title: 'NavLink',
  category: 'Navigation',
  description: 'A navigation row with optional nested links.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const NavLink(
        label: Text('Dashboard'),
        active: true,
        onTap: galleryNoop,
      ),
      code: '''
NavLink(
  label: Text('Dashboard'),
  active: true,
  onTap: galleryNoop,
)
''',
    ),
    GalleryDemo(
      title: 'Nested',
      builder: (context) => const NavLink(
        label: Text('Dashboard'),
        opened: true,
        onTap: galleryNoop,
        children: [
          NavLink(
            label: Text('Overview'),
            onTap: galleryNoop,
          ),
          NavLink(
            label: Text('Analytics'),
            onTap: galleryNoop,
          ),
        ],
      ),
      code: '''
NavLink(
  label: Text('Dashboard'),
  opened: true,
  onTap: galleryNoop,
  children: [
    NavLink(
      label: Text('Overview'),
      onTap: galleryNoop,
    ),
    NavLink(
      label: Text('Analytics'),
      onTap: galleryNoop,
    ),
  ],
)
''',
    ),
  ],
);
