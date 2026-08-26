import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final inputPage = GalleryPage(
  slug: 'inputs/input',
  title: 'Input',
  category: 'Inputs',
  description: 'Base text-field chrome without a label wrapper.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: Input(placeholder: 'Input component'),
        ),
      ),
      code: '''
Input(
  placeholder: 'Input component',
)
''',
    ),
  ],
);
