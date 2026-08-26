import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Kbd usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Kbd usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// kbdUsagePreview gallery.
Widget kbdUsagePreview() {
  return const Wrap(
    spacing: 8,
    runSpacing: 8,
    children: [
      Kbd(child: Text('⌘')),
      Kbd(child: Text('Ctrl')),
      Kbd(child: Text('Shift')),
      Kbd(child: Text('K')),
    ],
  );
}

@Preview(name: 'Kbd sizes', wrapper: wrapMantlePreview)
@Preview(
  name: 'Kbd sizes (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// kbdSizesPreview gallery.
Widget kbdSizesPreview() {
  return Wrap(
    spacing: 8,
    runSpacing: 8,
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      for (final size in ['xs', 'sm', 'md', 'lg', 'xl'])
        Kbd(size: size, child: Text(size)),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Kbd catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Kbd catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// kbdCatalogPreview gallery.
Widget kbdCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: kbdUsagePreview()),
      PreviewSection(title: 'Sizes', child: kbdSizesPreview()),
    ],
  );
}
