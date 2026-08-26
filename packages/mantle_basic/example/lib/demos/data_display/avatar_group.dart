import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final avatarGroupPage = GalleryPage(
  slug: 'data-display/avatar-group',
  title: 'AvatarGroup',
  category: 'Data display',
  description: 'Overlapping avatars in a compact row.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const AvatarGroup(
        children: [
          Avatar(name: 'A'),
          Avatar(name: 'B'),
          Avatar(name: 'C'),
        ],
      ),
      code: '''
AvatarGroup(
  children: [
    Avatar(name: 'A'),
    Avatar(name: 'B'),
    Avatar(name: 'C'),
  ],
)
''',
    ),
  ],
);
