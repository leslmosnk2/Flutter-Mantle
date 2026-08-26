import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final spoilerPage = GalleryPage(
  slug: 'data-display/spoiler',
  title: 'Spoiler',
  category: 'Data display',
  description: 'Clamped height with show more and hide.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => Spoiler(
        maxHeight: 40,
        showLabel: const Text('Show more'),
        hideLabel: const Text('Hide'),
        child: Text('Long text ' * 20),
      ),
      code: '''
Spoiler(
  maxHeight: 40,
  showLabel: Text('Show more'),
  hideLabel: Text('Hide'),
  child: Text('Long text ' * 20),
)
''',
    ),
  ],
);
