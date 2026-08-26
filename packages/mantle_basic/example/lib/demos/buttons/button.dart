import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final buttonPage = GalleryPage(
  slug: 'buttons/button',
  title: 'Button',
  category: 'Buttons',
  description: 'A pressable control with variants, sizes, and sections.',
  demos: [
    GalleryDemo(
      title: 'Variants',
      builder: (context) => const Group(
        children: [
          Button(
            onPressed: galleryNoop,
            child: Text('Default'),
          ),
          Button.filled(
            onPressed: galleryNoop,
            child: Text('Filled'),
          ),
          Button.light(
            onPressed: galleryNoop,
            child: Text('Light'),
          ),
          Button.outline(
            onPressed: galleryNoop,
            child: Text('Outline'),
          ),
          Button.subtle(
            onPressed: galleryNoop,
            child: Text('Subtle'),
          ),
          Button.transparent(
            onPressed: galleryNoop,
            child: Text('Transparent'),
          ),
          Button.white(
            onPressed: galleryNoop,
            child: Text('White'),
          ),
        ],
      ),
      code: '''
Button.filled(
  onPressed: () {},
  child: const Text('Filled'),
)
''',
    ),
    GalleryDemo(
      title: 'Sizes',
      builder: (context) => const Group(
        children: [
          Button.filled(
            onPressed: galleryNoop,
            size: 'xs',
            child: Text('xs'),
          ),
          Button.filled(
            onPressed: galleryNoop,
            size: 'sm',
            child: Text('sm'),
          ),
          Button.filled(
            onPressed: galleryNoop,
            size: 'md',
            child: Text('md'),
          ),
          Button.filled(
            onPressed: galleryNoop,
            size: 'lg',
            child: Text('lg'),
          ),
          Button.filled(
            onPressed: galleryNoop,
            size: 'xl',
            child: Text('xl'),
          ),
        ],
      ),
      code: '''
Button.filled(
  onPressed: () {},
  size: 'xl',
  child: const Text('xl'),
)
''',
    ),
    GalleryDemo(
      title: 'Loading and disabled',
      builder: (context) => const Group(
        children: [
          Button.filled(
            onPressed: galleryNoop,
            loading: true,
            child: Text('Loading'),
          ),
          Button(
            onPressed: galleryNoop,
            disabled: true,
            child: Text('Disabled'),
          ),
        ],
      ),
      code: '''
Button.filled(
  onPressed: () {},
  loading: true,
  child: const Text('Loading'),
)
''',
    ),
    GalleryDemo(
      title: 'Prefix',
      builder: (context) => const Group(
        children: [
          Button.filled(
            onPressed: galleryNoop,
            prefix: Text('+'),
            child: Text('Save'),
          ),
          Button(
            onPressed: galleryNoop,
            suffix: Text('→'),
            child: Text('Next'),
          ),
        ],
      ),
      code: '''
Button.filled(
  onPressed: () {},
  prefix: const Text('+'),
  child: const Text('Save'),
)
''',
    ),
  ],
);
