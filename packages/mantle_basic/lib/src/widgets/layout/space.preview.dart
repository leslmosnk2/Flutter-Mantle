import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Vertical and horizontal Space tokens (xs–xl).
@Preview(name: 'Space sizes', wrapper: wrapMantlePreview)
@Preview(
  name: 'Space sizes (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// spaceSizesPreview gallery.
Widget spaceSizesPreview() {
  return const Row(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      ColoredBox(
        color: Color(0xFF228BE6),
        child: Space(h: 'xs', w: 'xs'),
      ),
      Space(w: 'sm'),
      ColoredBox(
        color: Color(0xFF228BE6),
        child: Space(h: 'sm', w: 'sm'),
      ),
      Space(w: 'sm'),
      ColoredBox(
        color: Color(0xFF228BE6),
        child: Space(h: 'md', w: 'md'),
      ),
      Space(w: 'sm'),
      ColoredBox(
        color: Color(0xFF228BE6),
        child: Space(h: 'lg', w: 'lg'),
      ),
      Space(w: 'sm'),
      ColoredBox(
        color: Color(0xFF228BE6),
        child: Space(h: 'xl', w: 'xl'),
      ),
    ],
  );
}

/// Explicit pixel width/height wins over tokens.
@Preview(name: 'Space pixels', wrapper: wrapMantlePreview)
@Preview(
  name: 'Space pixels (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// spacePixelsPreview gallery.
Widget spacePixelsPreview() {
  return const Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      ColoredBox(color: Color(0xFF15AABF), child: Space(width: 40, height: 12)),
      Space(w: 'md'),
      ColoredBox(color: Color(0xFF15AABF), child: Space(width: 80, height: 12)),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Space catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Space catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// spaceCatalogPreview gallery.
Widget spaceCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Sizes', child: spaceSizesPreview()),
      PreviewSection(title: 'Pixels', child: spacePixelsPreview()),
    ],
  );
}
