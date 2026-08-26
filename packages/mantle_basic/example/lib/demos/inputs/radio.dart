import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final radioPage = GalleryPage(
  slug: 'inputs/radio',
  title: 'Radio',
  category: 'Inputs',
  description: 'A single radio option with an optional label.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Radio(
        value: 'react',
        label: Text('React'),
      ),
      code: '''
Radio(
  value: 'react',
  label: Text('React'),
)
''',
    ),
  ],
);
