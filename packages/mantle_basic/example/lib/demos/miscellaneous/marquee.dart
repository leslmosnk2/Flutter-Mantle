import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final marqueePage = GalleryPage(
  slug: 'miscellaneous/marquee',
  title: 'Marquee',
  category: 'Miscellaneous',
  description: 'A looping overflow strip.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 240,
          child: Marquee(
            children: [
              Text('Mantle  '),
              Text('widgets  '),
              Text('gallery  '),
            ],
          ),
        ),
      ),
      code: '''
SizedBox(
  width: 240,
  child: Marquee(
    children: [
      Text('Mantle  '),
      Text('widgets  '),
      Text('gallery  '),
    ],
  ),
)
''',
    ),
  ],
);
