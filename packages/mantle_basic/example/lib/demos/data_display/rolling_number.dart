import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final rollingNumberPage = GalleryPage(
  slug: 'data-display/rolling-number',
  title: 'RollingNumber',
  category: 'Data display',
  description: 'Animated numeric text.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const RollingNumber(value: 1234),
      code: '''
RollingNumber(value: 1234)
''',
    ),
  ],
);
