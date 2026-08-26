import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final hoverCardPage = GalleryPage(
  slug: 'overlays/hover-card',
  title: 'HoverCard',
  category: 'Overlays',
  description: 'A popover that opens when the target is hovered.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const HoverCard(
        children: [
          HoverCardTarget(
            child: Button.filled(
              onPressed: galleryNoop,
              child: Text('Hover'),
            ),
          ),
          HoverCardDropdown(
            child: Text('Hover content'),
          ),
        ],
      ),
      code: '''
HoverCard(
  children: [
    HoverCardTarget(
      child: Button.filled(
        onPressed: () {},
        child: Text('Hover'),
      ),
    ),
    HoverCardDropdown(
      child: Text('Hover content'),
    ),
  ],
)
''',
    ),
  ],
);
