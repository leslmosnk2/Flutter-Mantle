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
  name: 'Autocomplete usage',
  wrapper: wrapMantlePreview,
  size: Size(280, 160),
)
@Preview(
  name: 'Autocomplete usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// autocompleteUsagePreview gallery.
Widget autocompleteUsagePreview() {
  return const SizedBox(
    width: 240,
    child: Autocomplete(
      data: _groceries,
      value: 'ban',
      dropdownOpened: true,
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Autocomplete catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Autocomplete catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// autocompleteCatalogPreview gallery.
Widget autocompleteCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: autocompleteUsagePreview()),
    ],
  );
}
