import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final themeIconPage = GalleryPage(
  slug: 'data-display/theme-icon',
  title: 'ThemeIcon',
  category: 'Data display',
  description: 'A colored square wrapping an icon.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const ThemeIcon(child: Text('★')),
      code: '''
ThemeIcon(child: Text('★'))
''',
    ),
  ],
);
