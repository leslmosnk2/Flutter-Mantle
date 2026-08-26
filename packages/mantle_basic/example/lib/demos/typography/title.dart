import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final titlePage = GalleryPage(
  slug: 'typography/title',
  title: 'MTitle',
  category: 'Typography',
  description: 'A heading with an order from 1 to 6.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const MStack(
        children: [
          MTitle(order: 1, child: Text('This is h1')),
          MTitle(order: 2, child: Text('This is h2')),
          MTitle(order: 3, child: Text('This is h3')),
        ],
      ),
      code: '''
MStack(
  children: [
    MTitle(order: 1, child: Text('This is h1')),
    MTitle(order: 2, child: Text('This is h2')),
    MTitle(order: 3, child: Text('This is h3')),
  ],
)
''',
    ),
  ],
);
