import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final avatarPage = GalleryPage(
  slug: 'data-display/avatar',
  title: 'Avatar',
  category: 'Data display',
  description: 'Image, initials, or a placeholder for a person.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Group(
        children: [
          Avatar(name: 'John Doe'),
          Avatar(child: Text('MK')),
        ],
      ),
      code: '''
Group(
  children: [
    Avatar(name: 'John Doe'),
    Avatar(child: Text('MK')),
  ],
)
''',
    ),
  ],
);
