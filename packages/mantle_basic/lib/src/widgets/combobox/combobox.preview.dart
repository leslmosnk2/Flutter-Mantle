import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Combobox opened', wrapper: wrapMantlePreview)
@Preview(
  name: 'Combobox opened (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// comboboxOpenedPreview gallery.
Widget comboboxOpenedPreview() {
  return Combobox(
    dropdownOpened: true,
    onOptionSubmit: (_) {},
    children: const [
      ComboboxTarget(child: Text('Pick value')),
      ComboboxDropdown(
        child: ComboboxOptions(
          children: [
            ComboboxHeader(child: Text('Fruit')),
            ComboboxOption(value: 'apple', child: Text('Apple')),
            ComboboxOption(value: 'banana', child: Text('Banana')),
            ComboboxOption(
              value: 'disabled',
              disabled: true,
              child: Text('Disabled'),
            ),
            ComboboxEmpty(child: Text('Nothing found')),
            ComboboxFooter(child: Text('Footer')),
          ],
        ),
      ),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Combobox catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Combobox catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// comboboxCatalogPreview gallery.
Widget comboboxCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Opened', child: comboboxOpenedPreview()),
    ],
  );
}
