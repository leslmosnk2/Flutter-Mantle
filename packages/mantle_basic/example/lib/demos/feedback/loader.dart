import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final loaderPage = GalleryPage(
  slug: 'feedback/loader',
  title: 'Loader',
  category: 'Feedback',
  description: 'An oval, bars, or dots spinner for in-progress work.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Group(
        children: [
          Loader(),
          Loader.oval(),
          Loader.bars(),
          Loader.dots(),
        ],
      ),
      code: '''
Group(
  children: [
    Loader(),
    Loader.oval(),
    Loader.bars(),
    Loader.dots(),
  ],
)
''',
    ),
  ],
);
