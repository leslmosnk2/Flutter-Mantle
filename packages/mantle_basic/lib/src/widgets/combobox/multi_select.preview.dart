import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

const _groceries = [
  ComboboxItem(value: 'apple', label: 'Apple'),
  ComboboxItem(value: 'banana', label: 'Banana'),
  ComboboxItem(value: 'orange', label: 'Orange'),
];

@Preview(
  name: 'MultiSelect usage',
  wrapper: wrapMantlePreview,
  size: Size(320, 80),
)
@Preview(
  name: 'MultiSelect usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// multiSelectUsagePreview gallery.
Widget multiSelectUsagePreview() {
  return const SizedBox(
    width: 280,
    child: MultiSelect(
      data: _groceries,
      value: ['apple'],
      placeholder: 'Pick fruits',
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'MultiSelect catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'MultiSelect catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// multiSelectCatalogPreview gallery.
Widget multiSelectCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: multiSelectUsagePreview()),
    ],
  );
}
