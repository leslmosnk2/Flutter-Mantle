import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final loadingOverlayPage = GalleryPage(
  slug: 'overlays/loading-overlay',
  title: 'LoadingOverlay',
  category: 'Overlays',
  description:
      'Shows a loader and barrier over nested content while work is in '
      'progress.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const LoadingOverlay(
        visible: true,
        child: SizedBox(
          height: 80,
          child: Text('Content'),
        ),
      ),
      code: '''
LoadingOverlay(
  visible: true,
  child: SizedBox(
    height: 80,
    child: Text('Content'),
  ),
)
''',
    ),
  ],
);
