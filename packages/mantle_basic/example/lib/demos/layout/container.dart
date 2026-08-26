import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/preview_box.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final containerPage = GalleryPage(
  slug: 'layout/container',
  title: 'MContainer',
  category: 'Layout',
  description: 'Centers content with a max-width size token.',
  demos: [
    GalleryDemo(
      title: 'Size xs',
      builder: (context) => const MContainer(
        size: 'xs',
        child: PreviewBox(label: 'xs'),
      ),
      code: '''
MContainer(
  size: 'xs',
  child: PreviewBox(label: 'xs'),
)
''',
    ),
    GalleryDemo(
      title: 'Size sm',
      builder: (context) => const MContainer(
        size: 'sm',
        child: PreviewBox(label: 'sm'),
      ),
      code: '''
MContainer(
  size: 'sm',
  child: PreviewBox(label: 'sm'),
)
''',
    ),
  ],
);
