import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final alphaSliderPage = GalleryPage(
  slug: 'inputs/alpha-slider',
  title: 'AlphaSlider',
  category: 'Inputs',
  description: 'A slider for the alpha channel of a color.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: AlphaSlider(
            value: 0.5,
            color: '#228be6',
            onChanged: galleryNoopDouble,
          ),
        ),
      ),
      code: '''
AlphaSlider(
  value: 0.5,
  color: '#228be6',
  onChanged: (value) {},
)
''',
    ),
  ],
);
