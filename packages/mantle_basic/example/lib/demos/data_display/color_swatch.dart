import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final colorSwatchPage = GalleryPage(
  slug: 'data-display/color-swatch',
  title: 'MColorSwatch',
  category: 'Data display',
  description: 'A color square or circle, optionally checked.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const MColorSwatch(
        color: Color(0xFF228BE6),
        checked: true,
      ),
      code: '''
MColorSwatch(
  color: Color(0xFF228BE6),
  checked: true,
)
''',
    ),
  ],
);
