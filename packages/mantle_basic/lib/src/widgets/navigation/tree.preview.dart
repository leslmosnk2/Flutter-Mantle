import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/navigation.dart';

@Preview(name: 'Tree usage', wrapper: wrapMantlePreview, size: Size(280, 180))
@Preview(
  name: 'Tree usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// treeUsagePreview gallery.
Widget treeUsagePreview() {
  return const SizedBox(
    width: 240,
    child: Tree(
      expanded: ['src'],
      data: [
        TreeNodeData(
          value: 'src',
          label: 'src',
          children: [
            TreeNodeData(value: 'components', label: 'components'),
            TreeNodeData(value: 'hooks', label: 'hooks'),
          ],
        ),
      ],
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Tree catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Tree catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// treeCatalogPreview gallery.
Widget treeCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: treeUsagePreview()),
    ],
  );
}
