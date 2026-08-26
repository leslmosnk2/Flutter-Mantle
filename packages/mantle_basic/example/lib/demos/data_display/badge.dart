import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final badgePage = GalleryPage(
  slug: 'data-display/badge',
  title: 'Badge',
  category: 'Data display',
  description: 'A compact label chip.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Group(
        children: [
          Badge(child: Text('Badge')),
          Badge(color: 'red', child: Text('Red')),
          Badge(circle: true, child: Text('1')),
        ],
      ),
      code: '''
Group(
  children: [
    Badge(child: Text('Badge')),
    Badge(color: 'red', child: Text('Red')),
    Badge(circle: true, child: Text('1')),
  ],
)
''',
    ),
  ],
);
