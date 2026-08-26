import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final pillsInputPage = GalleryPage(
  slug: 'combobox/pills-input',
  title: 'PillsInput',
  category: 'Combobox',
  description: 'Input chrome around a row of pills and a field.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const PillsInput(
        label: 'Tags',
        children: [
          Pill(child: Text('React')),
          PillsInputField(placeholder: 'Add tag'),
        ],
      ),
      code: '''
PillsInput(
  label: 'Tags',
  children: [
    Pill(child: Text('React')),
    PillsInputField(placeholder: 'Add tag'),
  ],
)
''',
    ),
  ],
);
