import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Chip variants', wrapper: wrapMantlePreview)
@Preview(
  name: 'Chip variants (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// chipVariantsPreview gallery.
Widget chipVariantsPreview() {
  const label = Text('React');
  return const Wrap(
    spacing: 8,
    runSpacing: 8,
    children: [
      Chip(defaultChecked: true, child: label),
      Chip.outline(defaultChecked: true, child: label),
      Chip.filled(defaultChecked: true, child: label),
      Chip.light(defaultChecked: true, child: label),
    ],
  );
}

@Preview(name: 'ChipGroup usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'ChipGroup usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// chipGroupUsagePreview gallery.
Widget chipGroupUsagePreview() {
  return const ChipGroup(
    multiple: true,
    defaultValue: ['react'],
    children: [
      Chip(value: 'react', child: Text('React')),
      Chip(value: 'ng', child: Text('Angular')),
      Chip(value: 'vue', child: Text('Vue')),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Chip catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Chip catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// chipCatalogPreview gallery.
Widget chipCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Variants', child: chipVariantsPreview()),
      PreviewSection(title: 'Group', child: chipGroupUsagePreview()),
    ],
  );
}
