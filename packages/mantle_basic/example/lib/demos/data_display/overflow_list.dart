import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final overflowListPage = GalleryPage(
  slug: 'data-display/overflow-list',
  title: 'OverflowList',
  category: 'Data display',
  description: 'Hide items that do not fit and show a remainder.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => SizedBox(
        width: 180,
        child: OverflowList(
          maxVisibleItems: 2,
          renderOverflow: (n) => Text('+$n'),
          children: const [
            Badge(child: Text('One')),
            Badge(child: Text('Two')),
            Badge(child: Text('Three')),
          ],
        ),
      ),
      code: r'''
SizedBox(
  width: 180,
  child: OverflowList(
    maxVisibleItems: 2,
    renderOverflow: (n) => Text('+$n'),
    children: [
      Badge(child: Text('One')),
      Badge(child: Text('Two')),
      Badge(child: Text('Three')),
    ],
  ),
)
''',
    ),
  ],
);
