import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final treeSelectPage = GalleryPage(
  slug: 'combobox/tree-select',
  title: 'TreeSelect',
  category: 'Combobox',
  description: 'Pick values from a nested tree of nodes.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const TreeSelect(
        data: [
          TreeNodeData(
            value: 'src',
            label: 'src',
            children: [
              TreeNodeData(value: 'lib', label: 'lib'),
            ],
          ),
        ],
      ),
      code: '''
TreeSelect(
  data: [
    TreeNodeData(
      value: 'src',
      label: 'src',
      children: [
        TreeNodeData(value: 'lib', label: 'lib'),
      ],
    ),
  ],
)
''',
    ),
  ],
);
