import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final markPage = GalleryPage(
  slug: 'typography/mark',
  title: 'Mark',
  category: 'Typography',
  description: 'A highlighted mark around child text.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Mark(child: Text('Highlighted')),
      code: '''
Mark(
  child: Text('Highlighted'),
)
''',
    ),
  ],
);
