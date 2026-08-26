import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final hueSliderPage = GalleryPage(
  slug: 'inputs/hue-slider',
  title: 'HueSlider',
  category: 'Inputs',
  description: 'A slider for choosing hue.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: HueSlider(
            value: 250,
            onChanged: galleryNoopDouble,
          ),
        ),
      ),
      code: '''
HueSlider(
  value: 250,
  onChanged: (value) {},
)
''',
    ),
  ],
);
