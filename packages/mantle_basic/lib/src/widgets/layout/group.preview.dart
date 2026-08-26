import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

Widget _chip(String label) {
  return ColoredBox(
    color: const Color(0xFFE7F5FF),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Text(label),
    ),
  );
}

/// Horizontal group with gap (Mantine Group).
@Preview(name: 'Group gap', wrapper: wrapMantlePreview)
@Preview(
  name: 'Group gap (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// groupGapPreview gallery.
Widget groupGapPreview() {
  return Group(
    gap: 'sm',
    children: [_chip('First'), _chip('Second'), _chip('Third')],
  );
}

/// `grow: true` expands children.
@Preview(name: 'Group grow', wrapper: wrapMantlePreview, size: Size(400, 80))
@Preview(
  name: 'Group grow (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// groupGrowPreview gallery.
Widget groupGrowPreview() {
  return SizedBox(
    width: 360,
    child: Group(
      grow: true,
      gap: 'sm',
      children: [_chip('A'), _chip('B'), _chip('C')],
    ),
  );
}

/// Wrapping vs nowrap.
@Preview(name: 'Group wrap', wrapper: wrapMantlePreview, size: Size(220, 120))
@Preview(
  name: 'Group wrap (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// groupWrapPreview gallery.
Widget groupWrapPreview() {
  return SizedBox(
    width: 180,
    child: Group(
      wrap: true,
      gap: 'xs',
      children: [
        _chip('One'),
        _chip('Two'),
        _chip('Three'),
        _chip('Four'),
      ],
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Group catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Group catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// groupCatalogPreview gallery.
Widget groupCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Gap', child: groupGapPreview()),
      PreviewSection(title: 'Grow', child: groupGrowPreview()),
      PreviewSection(title: 'Wrap', child: groupWrapPreview()),
    ],
  );
}
