import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final portalPage = GalleryPage(
  slug: 'miscellaneous/portal',
  title: 'Portal',
  category: 'Miscellaneous',
  description: 'Paint the child in an overlay.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Portal(child: Text('Portaled')),
      code: '''
Portal(
  child: Text('Portaled'),
)
''',
    ),
  ],
);
