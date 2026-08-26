import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

Widget _tile(String label) {
  return ColoredBox(
    color: const Color(0xFFE7F5FF),
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Text(label),
    ),
  );
}

/// Horizontal MFlex (Mantine Flex).
@Preview(name: 'MFlex row', wrapper: wrapMantlePreview)
@Preview(
  name: 'MFlex row (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mFlexRowPreview gallery.
Widget mFlexRowPreview() {
  return MFlex(
    gap: 'sm',
    children: [_tile('1'), _tile('2'), _tile('3')],
  );
}

/// Vertical MFlex.
@Preview(name: 'MFlex column', wrapper: wrapMantlePreview)
@Preview(
  name: 'MFlex column (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mFlexColumnPreview gallery.
Widget mFlexColumnPreview() {
  return MFlex(
    direction: Axis.vertical,
    gap: 'sm',
    children: [_tile('A'), _tile('B'), _tile('C')],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'MFlex catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'MFlex catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mflexCatalogPreview gallery.
Widget mflexCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Row', child: mFlexRowPreview()),
      PreviewSection(title: 'Column', child: mFlexColumnPreview()),
    ],
  );
}
