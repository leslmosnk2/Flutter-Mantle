import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final dataListItemValuePage = GalleryPage(
  slug: 'data-display/data-list-item-value',
  title: 'DataListItemValue',
  category: 'Data display',
  description: 'The value side of a DataList row.',
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
DataListItemValue(child: Text('you@site.com'))
''',
    ),
  ],
);
