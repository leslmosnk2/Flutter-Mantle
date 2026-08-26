import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/preview_box.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final scrollerPage = GalleryPage(
  slug: 'miscellaneous/scroller',
  title: 'Scroller',
  category: 'Miscellaneous',
  description: 'A horizontal strip with controls.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 240,
          child: Scroller(
            child: Group(
              wrap: false,
              children: [
                PreviewBox(label: 'A'),
                PreviewBox(label: 'B'),
                PreviewBox(label: 'C'),
              ],
            ),
          ),
        ),
      ),
      code: '''
SizedBox(
  width: 240,
  child: Scroller(
    child: Group(
      wrap: false,
      children: [
        PreviewBox(label: 'A'),
        PreviewBox(label: 'B'),
        PreviewBox(label: 'C'),
      ],
    ),
  ),
)
''',
    ),
  ],
);
