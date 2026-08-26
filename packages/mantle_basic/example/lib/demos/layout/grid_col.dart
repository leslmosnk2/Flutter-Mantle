import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/preview_box.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final gridColPage = GalleryPage(
  slug: 'layout/grid-col',
  title: 'GridCol',
  category: 'Layout',
  description: 'A Grid cell. Set span to occupy columns in the parent Grid.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Grid(
        children: [
          GridCol(
            span: 6,
            child: PreviewBox(label: 'span 6'),
          ),
          GridCol(
            span: 6,
            child: PreviewBox(label: 'span 6'),
          ),
        ],
      ),
      code: '''
Grid(
  children: [
    GridCol(
      span: 6,
      child: PreviewBox(label: 'span 6'),
    ),
    GridCol(
      span: 6,
      child: PreviewBox(label: 'span 6'),
    ),
  ],
)
''',
    ),
  ],
);
