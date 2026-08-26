import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final listPage = GalleryPage(
  slug: 'typography/list',
  title: 'MList',
  category: 'Typography',
  description: 'A styled list of items.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const MList(
        children: [
          ListItem(child: Text('Clone or download')),
          ListItem(child: Text('Install dependencies')),
        ],
      ),
      code: '''
MList(
  children: [
    ListItem(child: Text('Clone or download')),
    ListItem(child: Text('Install dependencies')),
  ],
)
''',
    ),
  ],
);
