import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final jsonInputPage = GalleryPage(
  slug: 'inputs/json-input',
  title: 'JsonInput',
  category: 'Inputs',
  description: 'A textarea with JSON validation.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: JsonInput(
            label: Text('JSON'),
            defaultValue: '{"a": 1}',
          ),
        ),
      ),
      code: '''
JsonInput(
  label: Text('JSON'),
  defaultValue: '{"a": 1}',
)
''',
    ),
  ],
);
