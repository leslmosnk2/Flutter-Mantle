import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final tooltipPage = GalleryPage(
  slug: 'overlays/tooltip',
  title: 'Tooltip',
  category: 'Overlays',
  description: 'A short label shown when the child is hovered.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Tooltip(
        label: 'Tooltip',
        child: Button.filled(
          onPressed: galleryNoop,
          child: Text('Hover'),
        ),
      ),
      code: '''
Tooltip(
  label: 'Tooltip',
  child: Button.filled(
    onPressed: () {},
    child: Text('Hover'),
  ),
)
''',
    ),
  ],
);
