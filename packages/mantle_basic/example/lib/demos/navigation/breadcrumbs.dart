import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final breadcrumbsPage = GalleryPage(
  slug: 'navigation/breadcrumbs',
  title: 'Breadcrumbs',
  category: 'Navigation',
  description: 'A trail of links with separators between items.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Breadcrumbs(
        children: [
          Text('Gallery'),
          Text('Buttons'),
          Text('Button'),
        ],
      ),
      code: '''
Breadcrumbs(
  children: [
    Text('Gallery'),
    Text('Buttons'),
    Text('Button'),
  ],
)
''',
    ),
  ],
);
