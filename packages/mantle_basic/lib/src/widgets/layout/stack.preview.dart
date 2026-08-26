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

/// Vertical stack with gap tokens (Mantine Stack).
@Preview(name: 'MStack gap', wrapper: wrapMantlePreview)
@Preview(
  name: 'MStack gap (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mStackGapPreview gallery.
Widget mStackGapPreview() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      for (final gap in ['xs', 'sm', 'md', 'lg'])
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: SizedBox(
            width: 160,
            child: MStack(
              gap: gap,
              children: [_tile(gap), _tile(gap)],
            ),
          ),
        ),
    ],
  );
}

/// Alignment on the cross axis.
@Preview(name: 'MStack align', wrapper: wrapMantlePreview)
@Preview(
  name: 'MStack align (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mStackAlignPreview gallery.
Widget mStackAlignPreview() {
  return SizedBox(
    width: 240,
    child: MStack(
      gap: 'sm',
      align: CrossAxisAlignment.center,
      children: [_tile('A'), _tile('Centered')],
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'MStack catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'MStack catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mstackCatalogPreview gallery.
Widget mstackCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Gap', child: mStackGapPreview()),
      PreviewSection(title: 'Align', child: mStackAlignPreview()),
    ],
  );
}
