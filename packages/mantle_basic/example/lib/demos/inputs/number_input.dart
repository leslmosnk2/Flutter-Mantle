import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final numberInputPage = GalleryPage(
  slug: 'inputs/number-input',
  title: 'NumberInput',
  category: 'Inputs',
  description: 'A numeric field with steppers.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: NumberInput(
            label: Text('Age'),
            defaultValue: 18,
          ),
        ),
      ),
      code: '''
NumberInput(
  label: Text('Age'),
  defaultValue: 18,
)
''',
    ),
  ],
);
