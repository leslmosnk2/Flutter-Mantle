import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final fieldsetPage = GalleryPage(
  slug: 'inputs/fieldset',
  title: 'Fieldset',
  category: 'Inputs',
  description: 'A grouped set of fields with an optional legend.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: Fieldset(
            legend: Text('Personal information'),
            children: [
              TextInput(label: Text('Name')),
            ],
          ),
        ),
      ),
      code: '''
Fieldset(
  legend: Text('Personal information'),
  children: [
    TextInput(label: Text('Name')),
  ],
)
''',
    ),
    GalleryDemo(
      title: 'Filled',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: Fieldset.filled(
            legend: Text('Personal information'),
            children: [
              TextInput(label: Text('Name')),
            ],
          ),
        ),
      ),
      code: '''
Fieldset.filled(
  legend: Text('Personal information'),
  children: [
    TextInput(label: Text('Name')),
  ],
)
''',
    ),
  ],
);
