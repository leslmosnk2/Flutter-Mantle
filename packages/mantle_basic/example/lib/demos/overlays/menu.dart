import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final menuPage = GalleryPage(
  slug: 'overlays/menu',
  title: 'Menu',
  category: 'Overlays',
  description: 'A dropdown list of actions opened from a target.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Menu(
        children: [
          MenuTarget(
            child: Button.filled(
              onPressed: galleryNoop,
              child: Text('Toggle menu'),
            ),
          ),
          MenuDropdown(
            children: [
              MenuItem(child: Text('Settings')),
              MenuLabel(child: Text('Danger')),
              MenuDivider(),
              MenuItem(child: Text('Delete')),
            ],
          ),
        ],
      ),
      code: '''
Menu(
  children: [
    MenuTarget(
      child: Button.filled(
        onPressed: () {},
        child: Text('Toggle menu'),
      ),
    ),
    MenuDropdown(
      children: [
        MenuItem(child: Text('Settings')),
        MenuLabel(child: Text('Danger')),
        MenuDivider(),
        MenuItem(child: Text('Delete')),
      ],
    ),
  ],
)
''',
    ),
  ],
);
