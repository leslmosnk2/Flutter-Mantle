import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Checkbox variants', wrapper: wrapMantlePreview)
@Preview(
  name: 'Checkbox variants (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// checkboxVariantsPreview gallery.
Widget checkboxVariantsPreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Checkbox(label: Text('Default'), defaultChecked: true),
      Checkbox.filled(label: Text('Filled'), defaultChecked: true),
      Checkbox.outline(label: Text('Outline'), defaultChecked: true),
      Checkbox(label: Text('Indeterminate'), indeterminate: true),
      Checkbox(label: Text('Disabled'), disabled: true, defaultChecked: true),
    ],
  );
}

@Preview(name: 'CheckboxGroup usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'CheckboxGroup usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// checkboxGroupUsagePreview gallery.
Widget checkboxGroupUsagePreview() {
  return const CheckboxGroup(
    label: Text('Pick extras'),
    defaultValue: ['a'],
    children: [
      Checkbox(value: 'a', label: Text('A')),
      Checkbox(value: 'b', label: Text('B')),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Checkbox catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Checkbox catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// checkboxCatalogPreview gallery.
Widget checkboxCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Variants', child: checkboxVariantsPreview()),
      PreviewSection(title: 'Group', child: checkboxGroupUsagePreview()),
    ],
  );
}
