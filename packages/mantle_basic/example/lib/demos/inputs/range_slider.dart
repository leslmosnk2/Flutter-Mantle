import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final rangeSliderPage = GalleryPage(
  slug: 'inputs/range-slider',
  title: 'RangeSlider',
  category: 'Inputs',
  description: 'A dual-thumb slider for a numeric range.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: RangeSlider(
            defaultValue: RangeSliderValue(20, 80),
          ),
        ),
      ),
      code: '''
RangeSlider(
  defaultValue: RangeSliderValue(20, 80),
)
''',
    ),
  ],
);
