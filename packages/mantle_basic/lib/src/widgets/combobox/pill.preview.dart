import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Pill variants', wrapper: wrapMantlePreview)
@Preview(
  name: 'Pill variants (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// pillVariantsPreview gallery.
Widget pillVariantsPreview() {
  return const Wrap(
    spacing: 8,
    runSpacing: 8,
    children: [
      Pill(child: Text('React')),
      Pill.contrast(child: Text('Contrast')),
      Pill(withRemoveButton: true, child: Text('Removable')),
    ],
  );
}

@Preview(name: 'PillGroup usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'PillGroup usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// pillGroupUsagePreview gallery.
Widget pillGroupUsagePreview() {
  return const PillGroup(
    children: [
      Pill(child: Text('React')),
      Pill(child: Text('Vue')),
      Pill(child: Text('Svelte')),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Pill catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Pill catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// pillCatalogPreview gallery.
Widget pillCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Variants', child: pillVariantsPreview()),
      PreviewSection(title: 'Group', child: pillGroupUsagePreview()),
    ],
  );
}
