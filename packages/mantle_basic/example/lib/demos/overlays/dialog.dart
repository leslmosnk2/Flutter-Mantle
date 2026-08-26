import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/opened_demo.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final dialogPage = GalleryPage(
  slug: 'overlays/dialog',
  title: 'Dialog',
  category: 'Overlays',
  description: 'A small corner panel that opens without a modal barrier.',
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
              width: 400,
              height: 240,
              child: Stack(
                children: [
                  Button.filled(
                    onPressed: open,
                    child: const Text('Open dialog'),
                  ),
                  Dialog(
                    opened: opened,
                    onClose: close,
                    child: const Text('Subscribe'),
                  ),
                ],
              ),
            ),
      ),
      code: '''
OpenedDemo(
  builder: (context, opened, open, close) => SizedBox(
    width: 400,
    height: 240,
    child: Stack(
      children: [
        Button.filled(
          onPressed: open,
          child: Text('Open dialog'),
        ),
        Dialog(
          opened: opened,
          onClose: close,
          child: Text('Subscribe'),
        ),
      ],
    ),
  ),
)
''',
    ),
  ],
);
