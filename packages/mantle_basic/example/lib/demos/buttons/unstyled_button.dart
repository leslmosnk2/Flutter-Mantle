import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final unstyledButtonPage = GalleryPage(
  slug: 'buttons/unstyled-button',
  title: 'UnstyledButton',
  category: 'Buttons',
  description: 'Button semantics with no chrome.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Group(
        children: [
          UnstyledButton(
            onPressed: galleryNoop,
            child: Text('Unstyled'),
          ),
        ],
      ),
      code: '''
UnstyledButton(
  onPressed: () {},
  child: const Text('Unstyled'),
)
''',
    ),
    GalleryDemo(
      title: 'Disabled',
      builder: (context) => const Group(
        children: [
          UnstyledButton(
            onPressed: galleryNoop,
            disabled: true,
            child: Text('Disabled'),
          ),
        ],
      ),
      code: '''
UnstyledButton(
  onPressed: () {},
  disabled: true,
  child: const Text('Disabled'),
)
''',
    ),
  ],
);
