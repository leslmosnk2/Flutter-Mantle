import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final textPage = GalleryPage(
  slug: 'typography/text',
  title: 'MText',
  category: 'Typography',
  description: 'Themed text with size and weight tokens.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const MStack(
        children: [
          MText(child: Text('Default')),
          MText(size: 'xs', child: Text('xs')),
          MText(fw: FontWeight.w700, child: Text('Bold')),
        ],
      ),
      code: '''
MStack(
  children: [
    MText(child: Text('Default')),
    MText(size: 'xs', child: Text('xs')),
    MText(fw: FontWeight.w700, child: Text('Bold')),
  ],
)
''',
    ),
    GalleryDemo(
      title: 'Sizes',
      builder: (context) => const MStack(
        children: [
          MText(size: 'xs', child: Text('xs')),
          MText(size: 'sm', child: Text('sm')),
          MText(size: 'md', child: Text('md')),
          MText(size: 'lg', child: Text('lg')),
          MText(size: 'xl', child: Text('xl')),
        ],
      ),
      code: '''
MText(
  size: 'lg',
  child: Text('lg'),
)
''',
    ),
  ],
);
