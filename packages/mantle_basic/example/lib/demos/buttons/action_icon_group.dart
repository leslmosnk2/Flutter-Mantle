import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final actionIconGroupPage = GalleryPage(
  slug: 'buttons/action-icon-group',
  title: 'ActionIconGroup',
  category: 'Buttons',
  description: 'Joins ActionIcon children into a connected group.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const ActionIconGroup(
        children: [
          ActionIcon(
            onPressed: galleryNoop,
            child: Text('★'),
          ),
          ActionIcon(
            onPressed: galleryNoop,
            child: Text('★'),
          ),
          ActionIcon(
            onPressed: galleryNoop,
            child: Text('★'),
          ),
        ],
      ),
      code: '''
ActionIconGroup(
  children: [
    ActionIcon(
      onPressed: () {},
      child: const Text('★'),
    ),
    ActionIcon(
      onPressed: () {},
      child: const Text('★'),
    ),
  ],
)
''',
    ),
    GalleryDemo(
      title: 'Vertical',
      builder: (context) => const ActionIconGroup(
        orientation: Axis.vertical,
        children: [
          ActionIcon.filled(
            onPressed: galleryNoop,
            child: Text('★'),
          ),
          ActionIcon.filled(
            onPressed: galleryNoop,
            child: Text('★'),
          ),
        ],
      ),
      code: '''
ActionIconGroup(
  orientation: Axis.vertical,
  children: [
    ActionIcon.filled(
      onPressed: () {},
      child: const Text('★'),
    ),
    ActionIcon.filled(
      onPressed: () {},
      child: const Text('★'),
    ),
  ],
)
''',
    ),
  ],
);
