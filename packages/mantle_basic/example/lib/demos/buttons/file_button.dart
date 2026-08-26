import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final fileButtonPage = GalleryPage(
  slug: 'buttons/file-button',
  title: 'FileButton',
  category: 'Buttons',
  description: 'A file-picker trigger. v1 does not open a platform picker.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => Group(
        children: [
          FileButton(
            onPressed: galleryNoop,
            builder: (onPressed) => Button(
              onPressed: onPressed,
              child: const Text('Select file'),
            ),
          ),
        ],
      ),
      code: '''
FileButton(
  onPressed: () {},
  builder: (onPressed) => Button(
    onPressed: onPressed,
    child: const Text('Select file'),
  ),
)
''',
    ),
    GalleryDemo(
      title: 'Multiple',
      builder: (context) => Group(
        children: [
          FileButton(
            onPressed: galleryNoop,
            multiple: true,
            accept: 'image/*',
            builder: (onPressed) => Button.filled(
              onPressed: onPressed,
              child: const Text('Select images'),
            ),
          ),
        ],
      ),
      code: '''
FileButton(
  onPressed: () {},
  multiple: true,
  accept: 'image/*',
  builder: (onPressed) => Button.filled(
    onPressed: onPressed,
    child: const Text('Select images'),
  ),
)
''',
    ),
  ],
);
