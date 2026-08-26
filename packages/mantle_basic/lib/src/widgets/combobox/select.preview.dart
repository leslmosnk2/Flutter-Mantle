import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

const _groceries = [
  ComboboxItem(value: 'apple', label: 'Apple'),
  ComboboxItem(value: 'banana', label: 'Banana'),
  ComboboxItem(value: 'orange', label: 'Orange'),
];

@Preview(name: 'Select usage', wrapper: wrapMantlePreview, size: Size(280, 80))
@Preview(
  name: 'Select usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// selectUsagePreview gallery.
Widget selectUsagePreview() {
  return const SizedBox(
    width: 240,
    child: Select(data: _groceries, value: 'apple', placeholder: 'Pick fruit'),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Select catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Select catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// selectCatalogPreview gallery.
Widget selectCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: selectUsagePreview()),
    ],
  );
}
