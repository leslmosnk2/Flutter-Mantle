import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final checkboxPage = GalleryPage(
  slug: 'inputs/checkbox',
  title: 'Checkbox',
  category: 'Inputs',
  description: 'A labeled checkbox with optional description and error.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Checkbox(
        label: Text('I agree'),
        defaultChecked: true,
      ),
      code: '''
Checkbox(
  label: Text('I agree'),
  defaultChecked: true,
)
''',
    ),
  ],
);
