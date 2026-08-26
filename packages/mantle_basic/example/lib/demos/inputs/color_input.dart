import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final colorInputPage = GalleryPage(
  slug: 'inputs/color-input',
  title: 'ColorInput',
  category: 'Inputs',
  description: 'A text field for entering and previewing a color.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: ColorInput(
            label: Text('Background'),
            defaultValue: '#228be6',
          ),
        ),
      ),
      code: '''
ColorInput(
  label: Text('Background'),
  defaultValue: '#228be6',
)
''',
    ),
  ],
);
