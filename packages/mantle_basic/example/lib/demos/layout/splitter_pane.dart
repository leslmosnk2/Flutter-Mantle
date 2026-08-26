import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/preview_box.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final splitterPanePage = GalleryPage(
  slug: 'layout/splitter-pane',
  title: 'SplitterPane',
  category: 'Layout',
  description: 'A pane inside Splitter. Use as a direct Splitter child.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const SizedBox(
        width: 400,
        height: 120,
        child: Splitter(
          children: [
            SplitterPane(child: PreviewBox(label: 'Left')),
            SplitterPane(child: PreviewBox(label: 'Right')),
          ],
        ),
      ),
      code: '''
SizedBox(
  width: 400,
  height: 120,
  child: Splitter(
    children: [
      SplitterPane(child: PreviewBox(label: 'Left')),
      SplitterPane(child: PreviewBox(label: 'Right')),
    ],
  ),
)
''',
    ),
  ],
);
