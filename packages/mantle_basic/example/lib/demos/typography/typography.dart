import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final typographyPage = GalleryPage(
  slug: 'typography/typography',
  title: 'Typography',
  category: 'Typography',
  description: 'A scope that applies typography styles to nested content.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Typography(
        child: MStack(
          children: [
            MTitle(child: Text('Title')),
            MText(child: Text('Body inside Typography scope')),
          ],
        ),
      ),
      code: '''
Typography(
  child: MStack(
    children: [
      MTitle(child: Text('Title')),
      MText(child: Text('Body inside Typography scope')),
    ],
  ),
)
''',
    ),
  ],
);
