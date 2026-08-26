import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final cardPage = GalleryPage(
  slug: 'data-display/card',
  title: 'MCard',
  category: 'Data display',
  description: 'A paper surface with optional padding and border.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const MCard(
        withBorder: true,
        padding: 'md',
        children: [
          MText(child: Text('Norway has every kind of nature')),
        ],
      ),
      code: '''
MCard(
  withBorder: true,
  padding: 'md',
  children: [
    MText(child: Text('Norway has every kind of nature')),
  ],
)
''',
    ),
  ],
);
