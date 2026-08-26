import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final imagePage = GalleryPage(
  slug: 'data-display/image',
  title: 'MImage',
  category: 'Data display',
  description: 'An image with radius, size, and a fallback.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const MImage(
        width: 80,
        height: 80,
        fallback: Text('IMG'),
      ),
      code: '''
MImage(
  width: 80,
  height: 80,
  fallback: Text('IMG'),
)
''',
    ),
  ],
);
