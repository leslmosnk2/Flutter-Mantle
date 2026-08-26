import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/opened_demo.dart';
import 'package:gallery/widgets/preview_box.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final collapsePage = GalleryPage(
  slug: 'miscellaneous/collapse',
  title: 'Collapse',
  category: 'Miscellaneous',
  description: 'Animated height around a child.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => OpenedDemo(
        builder:
            (
              context, {
              required opened,
              required open,
              required close,
            }) => MStack(
              children: [
                Button.filled(
                  onPressed: opened ? close : open,
                  child: Text(opened ? 'Hide' : 'Show'),
                ),
                Collapse(
                  opened: opened,
                  child: const PreviewBox(label: 'Hidden content'),
                ),
              ],
            ),
      ),
      code: '''
OpenedDemo(
  builder: (context, opened, open, close) => MStack(
    children: [
      Button.filled(
        onPressed: opened ? close : open,
        child: Text(opened ? 'Hide' : 'Show'),
      ),
      Collapse(
        opened: opened,
        child: PreviewBox(label: 'Hidden content'),
      ),
    ],
  ),
)
''',
    ),
  ],
);
