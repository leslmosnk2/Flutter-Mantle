import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final dataListItemLabelPage = GalleryPage(
  slug: 'data-display/data-list-item-label',
  title: 'DataListItemLabel',
  category: 'Data display',
  description: 'The label side of a DataList row.',
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
DataListItemLabel(child: Text('Email'))
''',
    ),
  ],
);
