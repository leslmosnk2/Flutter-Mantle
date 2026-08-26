import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final boxPage = GalleryPage(
  slug: 'miscellaneous/box',
  title: 'Box',
  category: 'Miscellaneous',
  description: 'A passthrough padded and colored container.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Box(
        padding: EdgeInsets.all(16),
        color: Color(0xFF228BE6),
        child: Text('Box'),
      ),
      code: '''
Box(
  padding: EdgeInsets.all(16),
  color: Color(0xFF228BE6),
  child: Text('Box'),
)
''',
    ),
  ],
);
