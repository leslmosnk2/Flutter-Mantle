import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final closeButtonPage = GalleryPage(
  slug: 'buttons/close-button',
  title: 'CloseButton',
  category: 'Buttons',
  description: 'An ActionIcon-like X control for dismiss actions.',
  demos: [
    GalleryDemo(
      title: 'Variants',
      builder: (context) => const Group(
        children: [
          CloseButton(onPressed: galleryNoop),
          CloseButton.subtle(onPressed: galleryNoop),
          CloseButton.transparent(onPressed: galleryNoop),
        ],
      ),
      code: '''
CloseButton(
  onPressed: () {},
)
''',
    ),
    GalleryDemo(
      title: 'Disabled',
      builder: (context) => const Group(
        children: [
          CloseButton(
            onPressed: galleryNoop,
            disabled: true,
          ),
        ],
      ),
      code: '''
CloseButton(
  onPressed: () {},
  disabled: true,
)
''',
    ),
  ],
);
