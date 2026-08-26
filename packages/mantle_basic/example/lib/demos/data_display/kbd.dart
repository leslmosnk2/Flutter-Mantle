import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final kbdPage = GalleryPage(
  slug: 'data-display/kbd',
  title: 'Kbd',
  category: 'Data display',
  description: 'Keyboard-key chrome around text.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Group(
        children: [
          Kbd(child: Text('⌘')),
          Kbd(child: Text('K')),
        ],
      ),
      code: '''
Group(
  children: [
    Kbd(child: Text('⌘')),
    Kbd(child: Text('K')),
  ],
)
''',
    ),
  ],
);
