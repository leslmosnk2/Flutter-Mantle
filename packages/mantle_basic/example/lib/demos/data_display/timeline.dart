import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final timelinePage = GalleryPage(
  slug: 'data-display/timeline',
  title: 'Timeline',
  category: 'Data display',
  description: 'A vertical line with item bullets.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Timeline(
        active: 1,
        children: [
          TimelineItem(
            title: Text('New branch'),
            child: Text("You've created new branch"),
          ),
          TimelineItem(
            title: Text('Commits'),
            child: Text("You've pushed 23 commits"),
          ),
        ],
      ),
      code: '''
Timeline(
  active: 1,
  children: [
    TimelineItem(
      title: Text('New branch'),
      child: Text("You've created new branch"),
    ),
    TimelineItem(
      title: Text('Commits'),
      child: Text("You've pushed 23 commits"),
    ),
  ],
)
''',
    ),
  ],
);
