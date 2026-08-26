import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final pillPage = GalleryPage(
  slug: 'combobox/pill',
  title: 'Pill',
  category: 'Combobox',
  description: 'A compact value chip, optionally removable.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Group(
        children: [
          Pill(child: Text('React')),
          Pill.contrast(child: Text('Vue')),
          Pill(
            withRemoveButton: true,
            onRemove: galleryNoop,
            child: Text('Svelte'),
          ),
        ],
      ),
      code: '''
Group(
  children: [
    Pill(child: Text('React')),
    Pill.contrast(child: Text('Vue')),
    Pill(
      withRemoveButton: true,
      onRemove: () {},
      child: Text('Svelte'),
    ),
  ],
)
''',
    ),
  ],
);
