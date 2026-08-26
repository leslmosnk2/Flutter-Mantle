import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/preview_box.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final groupPage = GalleryPage(
  slug: 'layout/group',
  title: 'Group',
  category: 'Layout',
  description: 'A wrapping horizontal flex container.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Group(
        children: [
          PreviewBox(label: 'One'),
          PreviewBox(label: 'Two'),
          PreviewBox(label: 'Three'),
        ],
      ),
      code: '''
Group(
  children: [
    PreviewBox(label: 'One'),
    PreviewBox(label: 'Two'),
    PreviewBox(label: 'Three'),
  ],
)
''',
    ),
  ],
);
