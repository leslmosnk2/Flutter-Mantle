import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final chipPage = GalleryPage(
  slug: 'inputs/chip',
  title: 'Chip',
  category: 'Inputs',
  description: 'A compact selectable chip with filled, outline, and light.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Chip(child: Text('Chip')),
      code: '''
Chip(
  child: Text('Chip'),
)
''',
    ),
    GalleryDemo(
      title: 'Variants',
      builder: (context) => const Group(
        children: [
          Chip.filled(child: Text('Filled')),
          Chip.outline(child: Text('Outline')),
          Chip.light(child: Text('Light')),
        ],
      ),
      code: '''
Chip.filled(
  child: Text('Filled'),
)
''',
    ),
  ],
);
