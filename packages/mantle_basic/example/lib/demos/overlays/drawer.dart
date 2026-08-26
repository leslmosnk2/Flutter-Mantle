import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/opened_demo.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final drawerPage = GalleryPage(
  slug: 'overlays/drawer',
  title: 'Drawer',
  category: 'Overlays',
  description: 'A side panel that slides over a dimming barrier.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => OpenedDemo(
        builder:
            (
              context, {
              required opened,
              required open,
              required close,
            }) => SizedBox(
              height: 280,
              child: Stack(
                children: [
                  Button.filled(
                    onPressed: open,
                    child: const Text('Open drawer'),
                  ),
                  Drawer(
                    opened: opened,
                    onClose: close,
                    title: const Text('Drawer'),
                    child: const Text('Content'),
                  ),
                ],
              ),
            ),
      ),
      code: '''
OpenedDemo(
  builder: (context, opened, open, close) => SizedBox(
    height: 280,
    child: Stack(
      children: [
        Button.filled(
          onPressed: open,
          child: Text('Open drawer'),
        ),
        Drawer(
          opened: opened,
          onClose: close,
          title: Text('Drawer'),
          child: Text('Content'),
        ),
      ],
    ),
  ),
)
''',
    ),
  ],
);
