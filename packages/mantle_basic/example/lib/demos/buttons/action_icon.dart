import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final actionIconPage = GalleryPage(
  slug: 'buttons/action-icon',
  title: 'ActionIcon',
  category: 'Buttons',
  description: 'A square icon button with the same variants as Button.',
  demos: [
    GalleryDemo(
      title: 'Variants',
      builder: (context) => const Group(
        children: [
          ActionIcon(
            onPressed: galleryNoop,
            child: Text('★'),
          ),
          ActionIcon.filled(
            onPressed: galleryNoop,
            child: Text('★'),
          ),
          ActionIcon.light(
            onPressed: galleryNoop,
            child: Text('★'),
          ),
          ActionIcon.outline(
            onPressed: galleryNoop,
            child: Text('★'),
          ),
          ActionIcon.subtle(
            onPressed: galleryNoop,
            child: Text('★'),
          ),
          ActionIcon.transparent(
            onPressed: galleryNoop,
            child: Text('★'),
          ),
          ActionIcon.white(
            onPressed: galleryNoop,
            child: Text('★'),
          ),
        ],
      ),
      code: '''
ActionIcon.filled(
  onPressed: () {},
  child: const Text('★'),
)
''',
    ),
    GalleryDemo(
      title: 'Loading and disabled',
      builder: (context) => const Group(
        children: [
          ActionIcon.filled(
            onPressed: galleryNoop,
            loading: true,
            child: Text('★'),
          ),
          ActionIcon(
            onPressed: galleryNoop,
            disabled: true,
            child: Text('★'),
          ),
        ],
      ),
      code: '''
ActionIcon.filled(
  onPressed: () {},
  loading: true,
  child: const Text('★'),
)
''',
    ),
  ],
);
