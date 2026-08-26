import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final progressPage = GalleryPage(
  slug: 'feedback/progress',
  title: 'Progress',
  category: 'Feedback',
  description: 'A single horizontal bar filled from 0 to 100.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Progress(value: 50),
      code: '''
Progress(
  value: 50,
)
''',
    ),
  ],
);
