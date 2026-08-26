import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/opened_demo.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final modalPage = GalleryPage(
  slug: 'overlays/modal',
  title: 'Modal',
  category: 'Overlays',
  description: 'A centered dialog over a barrier, scoped to a bounded parent.',
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
                    child: const Text('Open modal'),
                  ),
                  Modal(
                    opened: opened,
                    onClose: close,
                    title: const Text('Title'),
                    child: const Text('Modal body'),
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
          child: Text('Open modal'),
        ),
        Modal(
          opened: opened,
          onClose: close,
          title: Text('Title'),
          child: Text('Modal body'),
        ),
      ],
    ),
  ),
)
''',
    ),
  ],
);
