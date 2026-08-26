import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final dataListPage = GalleryPage(
  slug: 'data-display/data-list',
  title: 'DataList',
  category: 'Data display',
  description: 'A label-value description list.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const DataList(
        children: [
          DataListItem(
            children: [
              DataListItemLabel(child: Text('Email')),
              DataListItemValue(child: Text('you@site.com')),
            ],
          ),
        ],
      ),
      code: '''
DataList(
  children: [
    DataListItem(
      children: [
        DataListItemLabel(child: Text('Email')),
        DataListItemValue(child: Text('you@site.com')),
      ],
    ),
  ],
)
''',
    ),
  ],
);
