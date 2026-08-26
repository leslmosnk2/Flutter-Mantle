import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final ratingPage = GalleryPage(
  slug: 'inputs/rating',
  title: 'Rating',
  category: 'Inputs',
  description: 'A star rating control.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Rating(defaultValue: 3),
      code: '''
Rating(
  defaultValue: 3,
)
''',
    ),
  ],
);
