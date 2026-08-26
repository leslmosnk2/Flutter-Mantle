import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final segmentedControlPage = GalleryPage(
  slug: 'inputs/segmented-control',
  title: 'SegmentedControl',
  category: 'Inputs',
  description: 'A compact control for choosing one of several options.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: SegmentedControl(
            data: [
              SegmentedControlItem(
                value: 'react',
                label: Text('React'),
              ),
              SegmentedControlItem(
                value: 'ng',
                label: Text('Angular'),
              ),
              SegmentedControlItem(
                value: 'vue',
                label: Text('Vue'),
              ),
            ],
          ),
        ),
      ),
      code: '''
SegmentedControl(
  data: [
    SegmentedControlItem(
      value: 'react',
      label: Text('React'),
    ),
    SegmentedControlItem(
      value: 'ng',
      label: Text('Angular'),
    ),
    SegmentedControlItem(
      value: 'vue',
      label: Text('Vue'),
    ),
  ],
)
''',
    ),
  ],
);
