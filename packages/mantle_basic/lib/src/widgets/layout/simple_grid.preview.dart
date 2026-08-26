import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

Widget _cell(String label) {
  return ColoredBox(
    color: const Color(0xFFE7F5FF),
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Text(label),
    ),
  );
}

/// Equal columns (Mantine SimpleGrid).
@Preview(
  name: 'SimpleGrid cols',
  wrapper: wrapMantlePreview,
  size: Size(400, 180),
)
@Preview(
  name: 'SimpleGrid cols (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// simpleGridColsPreview gallery.
Widget simpleGridColsPreview() {
  return SimpleGrid(
    cols: 3,
    spacing: 'sm',
    children: [_cell('1'), _cell('2'), _cell('3'), _cell('4'), _cell('5')],
  );
}

/// Two columns with larger spacing.
@Preview(
  name: 'SimpleGrid spacing',
  wrapper: wrapMantlePreview,
  size: Size(400, 140),
)
@Preview(
  name: 'SimpleGrid spacing (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// simpleGridSpacingPreview gallery.
Widget simpleGridSpacingPreview() {
  return SimpleGrid(
    cols: 2,
    spacing: 'lg',
    children: [_cell('A'), _cell('B'), _cell('C'), _cell('D')],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'SimpleGrid catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'SimpleGrid catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// simpleGridCatalogPreview gallery.
Widget simpleGridCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Cols', child: simpleGridColsPreview()),
      PreviewSection(title: 'Spacing', child: simpleGridSpacingPreview()),
    ],
  );
}
