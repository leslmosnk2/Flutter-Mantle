import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final paginationPage = GalleryPage(
  slug: 'navigation/pagination',
  title: 'Pagination',
  category: 'Navigation',
  description: 'A controlled page-number control.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Pagination(
        total: 10,
        value: 2,
        onChange: galleryNoopInt,
      ),
      code: '''
Pagination(
  total: 10,
  value: 2,
  onChange: galleryNoopInt,
)
''',
    ),
  ],
);
