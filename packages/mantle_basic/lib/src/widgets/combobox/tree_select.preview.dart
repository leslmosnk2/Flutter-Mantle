import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

const _nodes = [
  TreeNodeData(
    value: 'fruits',
    label: 'Fruits',
    children: [
      TreeNodeData(value: 'apple', label: 'Apple'),
      TreeNodeData(value: 'banana', label: 'Banana'),
    ],
  ),
];

@Preview(
  name: 'TreeSelect usage',
  wrapper: wrapMantlePreview,
  size: Size(320, 80),
)
@Preview(
  name: 'TreeSelect usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// treeSelectUsagePreview gallery.
Widget treeSelectUsagePreview() {
  return const SizedBox(
    width: 280,
    child: TreeSelect(data: _nodes, defaultExpandAll: true),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'TreeSelect catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'TreeSelect catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// treeSelectCatalogPreview gallery.
Widget treeSelectCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: treeSelectUsagePreview()),
    ],
  );
}
