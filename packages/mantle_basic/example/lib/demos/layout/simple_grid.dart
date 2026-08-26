import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/preview_box.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final simpleGridPage = GalleryPage(
  slug: 'layout/simple-grid',
  title: 'SimpleGrid',
  category: 'Layout',
  description: 'Equal-width columns without GridCol wrappers.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const SimpleGrid(
        cols: 2,
        children: [
          PreviewBox(label: 'A'),
          PreviewBox(label: 'B'),
          PreviewBox(label: 'C'),
          PreviewBox(label: 'D'),
        ],
      ),
      code: '''
SimpleGrid(
  cols: 2,
  children: [
    PreviewBox(label: 'A'),
    PreviewBox(label: 'B'),
    PreviewBox(label: 'C'),
    PreviewBox(label: 'D'),
  ],
)
''',
    ),
  ],
);
