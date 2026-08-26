import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final dividerPage = GalleryPage(
  slug: 'miscellaneous/divider',
  title: 'Divider',
  category: 'Miscellaneous',
  description: 'A horizontal or vertical rule.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const MStack(
        children: [
          Text('Top'),
          Divider(),
          Text('Bottom'),
        ],
      ),
      code: '''
MStack(
  children: [
    Text('Top'),
    Divider(),
    Text('Bottom'),
  ],
)
''',
    ),
  ],
);
