import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/preview_box.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final centerPage = GalleryPage(
  slug: 'layout/center',
  title: 'MCenter',
  category: 'Layout',
  description: 'Centers a child on both axes.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const SizedBox(
        height: 120,
        child: MCenter(
          child: PreviewBox(label: 'Centered'),
        ),
      ),
      code: '''
SizedBox(
  height: 120,
  child: MCenter(
    child: PreviewBox(label: 'Centered'),
  ),
)
''',
    ),
  ],
);
