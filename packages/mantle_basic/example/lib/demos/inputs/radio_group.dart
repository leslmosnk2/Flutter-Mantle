import 'package:flutter/widgets.dart' hide RadioGroup;
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final radioGroupPage = GalleryPage(
  slug: 'inputs/radio-group',
  title: 'RadioGroup',
  category: 'Inputs',
  description: 'A group of radios that share a selected value.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const RadioGroup(
        children: [
          Radio(value: 'react', label: Text('React')),
          Radio(value: 'svelte', label: Text('Svelte')),
        ],
      ),
      code: '''
RadioGroup(
  children: [
    Radio(value: 'react', label: Text('React')),
    Radio(value: 'svelte', label: Text('Svelte')),
  ],
)
''',
    ),
  ],
);
