import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final visuallyHiddenPage = GalleryPage(
  slug: 'miscellaneous/visually-hidden',
  title: 'VisuallyHidden',
  category: 'Miscellaneous',
  description: 'Clip out of view while keeping semantics.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Row(
        children: [
          Text('Visible'),
          VisuallyHidden(child: Text('Screen reader only')),
        ],
      ),
      code: '''
Row(
  children: [
    Text('Visible'),
    VisuallyHidden(child: Text('Screen reader only')),
  ],
)
''',
    ),
  ],
);
