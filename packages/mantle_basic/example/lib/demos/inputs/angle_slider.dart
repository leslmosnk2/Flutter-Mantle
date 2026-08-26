import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final angleSliderPage = GalleryPage(
  slug: 'inputs/angle-slider',
  title: 'AngleSlider',
  category: 'Inputs',
  description: 'A circular control for choosing an angle.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: AngleSlider(value: 90),
      ),
      code: '''
AngleSlider(
  value: 90,
)
''',
    ),
  ],
);
