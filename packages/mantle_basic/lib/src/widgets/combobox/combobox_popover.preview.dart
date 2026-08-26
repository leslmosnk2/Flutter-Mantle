import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

const _groceries = [
  ComboboxItem(value: 'apple', label: 'Apple'),
  ComboboxItem(value: 'banana', label: 'Banana'),
  ComboboxItem(value: 'orange', label: 'Orange'),
];

@Preview(name: 'ComboboxPopover usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'ComboboxPopover usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// comboboxPopoverUsagePreview gallery.
Widget comboboxPopoverUsagePreview() {
  return ComboboxPopover(
    data: _groceries,
    value: const ['apple'],
    onChange: (_) {},
    child: const Text('Pick'),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'ComboboxPopover catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'ComboboxPopover catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// comboboxPopoverCatalogPreview gallery.
Widget comboboxPopoverCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: comboboxPopoverUsagePreview()),
    ],
  );
}
