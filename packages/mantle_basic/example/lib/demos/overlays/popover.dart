import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final popoverPage = GalleryPage(
  slug: 'overlays/popover',
  title: 'Popover',
  category: 'Overlays',
  description: 'A floating dropdown anchored to a target.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Popover(
        children: [
          PopoverTarget(
            child: Button.filled(
              onPressed: galleryNoop,
              child: Text('Toggle'),
            ),
          ),
          PopoverDropdown(
            child: Text('Popover'),
          ),
        ],
      ),
      code: '''
Popover(
  children: [
    PopoverTarget(
      child: Button.filled(
        onPressed: () {},
        child: Text('Toggle'),
      ),
    ),
    PopoverDropdown(
      child: Text('Popover'),
    ),
  ],
)
''',
    ),
  ],
);
