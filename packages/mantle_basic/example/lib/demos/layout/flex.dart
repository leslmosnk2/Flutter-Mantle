import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/preview_box.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final flexPage = GalleryPage(
  slug: 'layout/flex',
  title: 'MFlex',
  category: 'Layout',
  description: 'A generic flex container with direction and gap.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const MFlex(
        direction: Axis.horizontal,
        gap: 'md',
        children: [
          PreviewBox(label: '1'),
          PreviewBox(label: '2'),
          PreviewBox(label: '3'),
        ],
      ),
      code: '''
MFlex(
  direction: Axis.horizontal,
  gap: 'md',
  children: [
    PreviewBox(label: '1'),
    PreviewBox(label: '2'),
    PreviewBox(label: '3'),
  ],
)
''',
    ),
  ],
);
