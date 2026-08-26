import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final ringProgressPage = GalleryPage(
  slug: 'feedback/ring-progress',
  title: 'RingProgress',
  category: 'Feedback',
  description: 'A circular track with colored sections and an optional label.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const RingProgress(
        sections: [
          RingProgressSection(value: 40, color: 'blue'),
          RingProgressSection(value: 25, color: 'orange'),
        ],
      ),
      code: '''
RingProgress(
  sections: [
    RingProgressSection(value: 40, color: 'blue'),
    RingProgressSection(value: 25, color: 'orange'),
  ],
)
''',
    ),
  ],
);
