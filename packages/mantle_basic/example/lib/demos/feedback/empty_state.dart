import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final emptyStatePage = GalleryPage(
  slug: 'feedback/empty-state',
  title: 'EmptyState',
  category: 'Feedback',
  description: 'Placeholder for empty data, no results, and first-run screens.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const EmptyState(
        title: Text('No files'),
        description: Text('Drop files here'),
      ),
      code: '''
EmptyState(
  title: Text('No files'),
  description: Text('Drop files here'),
)
''',
    ),
  ],
);
