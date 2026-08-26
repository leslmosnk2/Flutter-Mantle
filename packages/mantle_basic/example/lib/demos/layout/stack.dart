import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/preview_box.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final stackPage = GalleryPage(
  slug: 'layout/stack',
  title: 'MStack',
  category: 'Layout',
  description: 'A vertical flex container with a gap token.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const MStack(
        gap: 'sm',
        children: [
          PreviewBox(label: 'First'),
          PreviewBox(label: 'Second'),
          PreviewBox(label: 'Third'),
        ],
      ),
      code: '''
MStack(
  gap: 'sm',
  children: [
    PreviewBox(label: 'First'),
    PreviewBox(label: 'Second'),
    PreviewBox(label: 'Third'),
  ],
)
''',
    ),
  ],
);
