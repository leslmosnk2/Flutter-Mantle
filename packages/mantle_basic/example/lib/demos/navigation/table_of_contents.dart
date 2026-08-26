import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final tableOfContentsPage = GalleryPage(
  slug: 'navigation/table-of-contents',
  title: 'TableOfContents',
  category: 'Navigation',
  description: 'A list of heading links with an active section.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const TableOfContents(
        active: 'intro',
        headings: [
          TocHeading(value: 'intro', depth: 1, label: 'Intro'),
          TocHeading(value: 'usage', depth: 2, label: 'Usage'),
        ],
      ),
      code: '''
TableOfContents(
  active: 'intro',
  headings: [
    TocHeading(value: 'intro', depth: 1, label: 'Intro'),
    TocHeading(value: 'usage', depth: 2, label: 'Usage'),
  ],
)
''',
    ),
  ],
);
