import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final highlightPage = GalleryPage(
  slug: 'typography/highlight',
  title: 'Highlight',
  category: 'Typography',
  description: 'Mark matching substrings in text.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Highlight(
        text: 'Highlight this',
        highlight: ['this'],
      ),
      code: '''
Highlight(
  text: 'Highlight this',
  highlight: ['this'],
)
''',
    ),
  ],
);
