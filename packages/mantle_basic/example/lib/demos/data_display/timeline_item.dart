import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final timelineItemPage = GalleryPage(
  slug: 'data-display/timeline-item',
  title: 'TimelineItem',
  category: 'Data display',
  description: 'One event on a Timeline.',
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
TimelineItem(
  title: Text('New branch'),
  child: Text("You've created new branch"),
)
''',
    ),
  ],
);
