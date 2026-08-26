import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final menubarPage = GalleryPage(
  slug: 'overlays/menubar',
  title: 'Menubar',
  category: 'Overlays',
  description: 'A horizontal row of menus, like an application menu bar.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Menubar(
        children: [
          MenubarMenu(
            children: [
              MenubarTarget(child: Text('File')),
              MenubarDropdown(
                children: [
                  MenuItem(child: Text('New')),
                ],
              ),
            ],
          ),
        ],
      ),
      code: '''
Menubar(
  children: [
    MenubarMenu(
      children: [
        MenubarTarget(child: Text('File')),
        MenubarDropdown(
          children: [
            MenuItem(child: Text('New')),
          ],
        ),
      ],
    ),
  ],
)
''',
    ),
  ],
);
