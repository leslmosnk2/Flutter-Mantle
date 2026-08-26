import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final floatingIndicatorPage = GalleryPage(
  slug: 'overlays/floating-indicator',
  title: 'FloatingIndicator',
  category: 'Overlays',
  description: 'Highlights the active child among a row of tab-like items.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const FloatingIndicator(
        active: 0,
        children: [
          Text('One'),
          Text('Two'),
        ],
      ),
      code: '''
FloatingIndicator(
  active: 0,
  children: [
    Text('One'),
    Text('Two'),
  ],
)
''',
    ),
  ],
);
