import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final overlayPage = GalleryPage(
  slug: 'overlays/overlay',
  title: 'Overlay',
  category: 'Overlays',
  description:
      'A dimming barrier over its parent. The widget is named MOverlay '
      "to avoid Flutter's Overlay.",
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const SizedBox(
        width: 240,
        height: 120,
        child: MOverlay(
          visible: true,
          center: true,
          child: Text('Behind'),
        ),
      ),
      code: '''
SizedBox(
  width: 240,
  height: 120,
  child: MOverlay(
    visible: true,
    center: true,
    child: Text('Behind'),
  ),
)
''',
    ),
  ],
);
