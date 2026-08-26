import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final semiCircleProgressPage = GalleryPage(
  slug: 'feedback/semi-circle-progress',
  title: 'SemiCircleProgress',
  category: 'Feedback',
  description: 'A half-ring progress indicator with an optional label.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const SemiCircleProgress(
        value: 40,
        label: Text('40%'),
      ),
      code: '''
SemiCircleProgress(
  value: 40,
  label: Text('40%'),
)
''',
    ),
  ],
);
