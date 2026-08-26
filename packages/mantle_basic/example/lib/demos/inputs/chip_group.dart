import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final chipGroupPage = GalleryPage(
  slug: 'inputs/chip-group',
  title: 'ChipGroup',
  category: 'Inputs',
  description: 'A group of chips that share a selected value.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const ChipGroup(
        children: [
          Chip(value: 'react', child: Text('React')),
          Chip(value: 'ng', child: Text('Angular')),
        ],
      ),
      code: '''
ChipGroup(
  children: [
    Chip(value: 'react', child: Text('React')),
    Chip(value: 'ng', child: Text('Angular')),
  ],
)
''',
    ),
  ],
);
