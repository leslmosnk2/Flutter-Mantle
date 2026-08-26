import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final indicatorPage = GalleryPage(
  slug: 'data-display/indicator',
  title: 'Indicator',
  category: 'Data display',
  description: 'A badge or dot overlaid on a child.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Indicator(
        label: Text('New'),
        child: Avatar(name: 'JD'),
      ),
      code: '''
Indicator(
  label: Text('New'),
  child: Avatar(name: 'JD'),
)
''',
    ),
  ],
);
