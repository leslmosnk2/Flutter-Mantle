import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/preview_box.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final gridPage = GalleryPage(
  slug: 'layout/grid',
  title: 'Grid',
  category: 'Layout',
  description: 'A 12-column flex grid composed of GridCol children.',
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
