import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final buttonGroupPage = GalleryPage(
  slug: 'buttons/button-group',
  title: 'ButtonGroup',
  category: 'Buttons',
  description: 'Joins Button children into a connected group.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const ButtonGroup(
        children: [
          Button(
            onPressed: galleryNoop,
            child: Text('First'),
          ),
          Button(
            onPressed: galleryNoop,
            child: Text('Second'),
          ),
          Button(
            onPressed: galleryNoop,
            child: Text('Third'),
          ),
        ],
      ),
      code: '''
ButtonGroup(
  children: [
    Button(onPressed: () {}, child: const Text('First')),
    Button(onPressed: () {}, child: const Text('Second')),
    Button(onPressed: () {}, child: const Text('Third')),
  ],
)
''',
    ),
    GalleryDemo(
      title: 'Vertical',
      builder: (context) => const ButtonGroup(
        orientation: Axis.vertical,
        children: [
          Button.filled(
            onPressed: galleryNoop,
            child: Text('One'),
          ),
          Button.filled(
            onPressed: galleryNoop,
            child: Text('Two'),
          ),
        ],
      ),
      code: '''
ButtonGroup(
  orientation: Axis.vertical,
  children: [
    Button.filled(onPressed: () {}, child: const Text('One')),
    Button.filled(onPressed: () {}, child: const Text('Two')),
  ],
)
''',
    ),
  ],
);
