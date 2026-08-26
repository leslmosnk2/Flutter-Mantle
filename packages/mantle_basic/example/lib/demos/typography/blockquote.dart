import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final blockquotePage = GalleryPage(
  slug: 'typography/blockquote',
  title: 'Blockquote',
  category: 'Typography',
  description: 'A bordered quote with cite and icon.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: Blockquote(
            cite: Text('– Forrest Guff'),
            child: Text('Life is like an npm install'),
          ),
        ),
      ),
      code: '''
Blockquote(
  cite: Text('– Forrest Guff'),
  child: Text('Life is like an npm install'),
)
''',
    ),
  ],
);
