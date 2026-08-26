import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final colorPickerPage = GalleryPage(
  slug: 'inputs/color-picker',
  title: 'ColorPicker',
  category: 'Inputs',
  description: 'A saturation picker with hue and optional swatches.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: ColorPicker(defaultValue: '#228be6'),
        ),
      ),
      code: '''
ColorPicker(
  defaultValue: '#228be6',
)
''',
    ),
  ],
);
