import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/preview_box.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final aspectRatioPage = GalleryPage(
  slug: 'layout/aspect-ratio',
  title: 'MAspectRatio',
  category: 'Layout',
  description: 'Locks its child to a width-to-height ratio.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const MAspectRatio(
        ratio: 16 / 9,
        child: PreviewBox(label: '16 / 9'),
      ),
      code: '''
MAspectRatio(
  ratio: 16 / 9,
  child: PreviewBox(label: '16 / 9'),
)
''',
    ),
  ],
);
