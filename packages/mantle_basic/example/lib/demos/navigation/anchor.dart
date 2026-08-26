import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final anchorPage = GalleryPage(
  slug: 'navigation/anchor',
  title: 'Anchor',
  category: 'Navigation',
  description: 'An inline text link with optional href.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Anchor(
        onPressed: galleryNoop,
        child: Text('Gallery docs'),
      ),
      code: '''
Anchor(
  onPressed: galleryNoop,
  child: Text('Gallery docs'),
)
''',
    ),
    GalleryDemo(
      title: 'With href',
      builder: (context) => const Anchor(
        href: 'https://mantine.dev',
        onPressed: galleryNoop,
        child: Text('Mantine docs'),
      ),
      code: '''
Anchor(
  href: 'https://mantine.dev',
  onPressed: galleryNoop,
  child: Text('Mantine docs'),
)
''',
    ),
  ],
);
