import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/preview_box.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final scrollAreaPage = GalleryPage(
  slug: 'miscellaneous/scroll-area',
  title: 'ScrollArea',
  category: 'Miscellaneous',
  description: 'A scrollable viewport.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 240,
          height: 120,
          child: ScrollArea(
            child: MStack(
              children: [
                PreviewBox(label: 'One'),
                PreviewBox(label: 'Two'),
                PreviewBox(label: 'Three'),
                PreviewBox(label: 'Four'),
                PreviewBox(label: 'Five'),
              ],
            ),
          ),
        ),
      ),
      code: '''
SizedBox(
  height: 120,
  child: ScrollArea(
    child: MStack(
      children: [
        PreviewBox(label: 'One'),
        PreviewBox(label: 'Two'),
        PreviewBox(label: 'Three'),
        PreviewBox(label: 'Four'),
        PreviewBox(label: 'Five'),
      ],
    ),
  ),
)
''',
    ),
  ],
);
