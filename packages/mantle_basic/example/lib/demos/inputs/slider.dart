import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final sliderPage = GalleryPage(
  slug: 'inputs/slider',
  title: 'Slider',
  category: 'Inputs',
  description: 'A single-thumb slider for a numeric value.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: Slider(defaultValue: 40),
        ),
      ),
      code: '''
Slider(
  defaultValue: 40,
)
''',
    ),
  ],
);
