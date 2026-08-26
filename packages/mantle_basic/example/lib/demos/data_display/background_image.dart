import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final backgroundImagePage = GalleryPage(
  slug: 'data-display/background-image',
  title: 'BackgroundImage',
  category: 'Data display',
  description: 'An image painted behind a child.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const BackgroundImage(
        child: SizedBox(
          height: 80,
          child: MCenter(child: Text('Content')),
        ),
      ),
      code: '''
BackgroundImage(
  child: SizedBox(
    height: 80,
    child: MCenter(child: Text('Content')),
  ),
)
''',
    ),
  ],
);
