import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final skeletonPage = GalleryPage(
  slug: 'feedback/skeleton',
  title: 'Skeleton',
  category: 'Feedback',
  description: 'A placeholder bar or circle shown while content is loading.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Group(
        children: [
          Skeleton(height: 12, width: 200),
          Skeleton(circle: true, width: 40, height: 40),
        ],
      ),
      code: '''
Group(
  children: [
    Skeleton(height: 12, width: 200),
    Skeleton(circle: true, width: 40, height: 40),
  ],
)
''',
    ),
  ],
);
