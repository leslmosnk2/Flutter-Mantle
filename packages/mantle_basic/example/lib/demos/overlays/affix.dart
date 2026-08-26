import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final affixPage = GalleryPage(
  slug: 'overlays/affix',
  title: 'Affix',
  category: 'Overlays',
  description:
      'Pins child content to a corner of its parent, like CSS position '
      'absolute.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const SizedBox(
        width: 240,
        height: 120,
        child: Affix(
          bottom: 16,
          right: 16,
          child: Badge(child: Text('New')),
        ),
      ),
      code: '''
SizedBox(
  width: 240,
  height: 120,
  child: Affix(
    bottom: 16,
    right: 16,
    child: Badge(child: Text('New')),
  ),
)
''',
    ),
  ],
);
