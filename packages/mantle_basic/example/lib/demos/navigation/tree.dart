import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/navigation.dart';

const treePage = GalleryPage(
  slug: 'navigation/tree',
  title: 'Tree',
  category: 'Navigation',
  description: 'A nested, expandable node list driven by TreeNodeData.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: _treeUsage,
      code: '''
Tree(
  data: [
    TreeNodeData(
      value: 'src',
      label: 'src',
      children: [
        TreeNodeData(value: 'lib', label: 'lib'),
      ],
    ),
  ],
  expanded: ['src'],
)
''',
    ),
  ],
);

Widget _treeUsage(BuildContext context) => const Tree(
  expanded: ['src'],
  data: [
    TreeNodeData(
      value: 'src',
      label: 'src',
      children: [
        TreeNodeData(value: 'lib', label: 'lib'),
      ],
    ),
  ],
);
