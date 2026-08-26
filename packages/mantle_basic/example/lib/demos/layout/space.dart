import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/preview_box.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final spacePage = GalleryPage(
  slug: 'layout/space',
  title: 'Space',
  category: 'Layout',
  description: 'A standalone spacer using a size token or a pixel value.',
  demos: [
    GalleryDemo(
      title: 'Token height',
      builder: (context) => const MStack(
        children: [
          PreviewBox(label: 'Above'),
          Space(h: 'md'),
          PreviewBox(label: 'Below'),
        ],
      ),
      code: '''
MStack(
  children: [
    PreviewBox(label: 'Above'),
    Space(h: 'md'),
    PreviewBox(label: 'Below'),
  ],
)
''',
    ),
    GalleryDemo(
      title: 'Pixel height',
      builder: (context) => const MStack(
        children: [
          PreviewBox(label: 'Above'),
          Space(height: 24),
          PreviewBox(label: 'Below'),
        ],
      ),
      code: '''
MStack(
  children: [
    PreviewBox(label: 'Above'),
    Space(height: 24),
    PreviewBox(label: 'Below'),
  ],
)
''',
    ),
  ],
);
