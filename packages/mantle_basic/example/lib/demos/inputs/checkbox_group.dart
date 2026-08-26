import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final checkboxGroupPage = GalleryPage(
  slug: 'inputs/checkbox-group',
  title: 'CheckboxGroup',
  category: 'Inputs',
  description: 'A group of checkboxes that share a list of values.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const CheckboxGroup(
        label: Text('Pick'),
        children: [
          Checkbox(value: 'react', label: Text('React')),
          Checkbox(value: 'svelte', label: Text('Svelte')),
        ],
      ),
      code: '''
CheckboxGroup(
  label: Text('Pick'),
  children: [
    Checkbox(value: 'react', label: Text('React')),
    Checkbox(value: 'svelte', label: Text('Svelte')),
  ],
)
''',
    ),
  ],
);
