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

/// 12-column Grid with GridCol spans (Mantine Grid / Grid.Col).
@Preview(name: 'Grid spans', wrapper: wrapMantlePreview, size: Size(420, 160))
@Preview(
  name: 'Grid spans (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// gridSpansPreview gallery.
Widget gridSpansPreview() {
  return Grid(
    gutter: 'sm',
    children: [
      GridCol(span: 6, child: _cell('span 6')),
      GridCol(span: 6, child: _cell('span 6')),
      GridCol(span: 4, child: _cell('span 4')),
      GridCol(span: 8, child: _cell('span 8')),
    ],
  );
}

/// Offset leaves empty columns before the cell.
@Preview(name: 'Grid offset', wrapper: wrapMantlePreview, size: Size(420, 80))
@Preview(
  name: 'Grid offset (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// gridOffsetPreview gallery.
Widget gridOffsetPreview() {
  return Grid(
    gutter: 'sm',
    children: [
      GridCol(span: 4, offset: 4, child: _cell('offset 4')),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Grid catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Grid catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// gridCatalogPreview gallery.
Widget gridCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Spans', child: gridSpansPreview()),
      PreviewSection(title: 'Offset', child: gridOffsetPreview()),
    ],
  );
}
