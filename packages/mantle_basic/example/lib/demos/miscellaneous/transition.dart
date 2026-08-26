import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/opened_demo.dart';
import 'package:gallery/widgets/preview_box.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final transitionPage = GalleryPage(
  slug: 'miscellaneous/transition',
  title: 'MTransition',
  category: 'Miscellaneous',
  description: 'A mount and unmount animation.',
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
                MTransition(
                  mounted: opened,
                  child: const PreviewBox(label: 'Hello'),
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
      MTransition(
        mounted: opened,
        child: PreviewBox(label: 'Hello'),
      ),
    ],
  ),
)
''',
    ),
  ],
);
