import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final dataListItemPage = GalleryPage(
  slug: 'data-display/data-list-item',
  title: 'DataListItem',
  category: 'Data display',
  description: 'One row in a DataList.',
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
DataListItem(
  children: [
    DataListItemLabel(child: Text('Email')),
    DataListItemValue(child: Text('you@site.com')),
  ],
)
''',
    ),
  ],
);
