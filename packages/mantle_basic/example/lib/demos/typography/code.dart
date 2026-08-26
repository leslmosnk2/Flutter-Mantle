import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final codePage = GalleryPage(
  slug: 'typography/code',
  title: 'Code',
  category: 'Typography',
  description: 'An inline or block monospace chip.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Group(
        children: [
          Code(child: Text('React.createElement()')),
          Code(block: true, child: Text('npm install')),
        ],
      ),
      code: '''
Group(
  children: [
    Code(child: Text('React.createElement()')),
    Code(block: true, child: Text('npm install')),
  ],
)
''',
    ),
  ],
);
