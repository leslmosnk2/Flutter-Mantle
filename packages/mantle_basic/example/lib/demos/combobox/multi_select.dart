import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

const _groceries = [
  ComboboxItem(value: 'apple', label: 'Apple'),
  ComboboxItem(value: 'banana', label: 'Banana'),
  ComboboxItem(value: 'orange', label: 'Orange'),
];

final multiSelectPage = GalleryPage(
  slug: 'combobox/multi-select',
  title: 'MultiSelect',
  category: 'Combobox',
  description: 'Select several values, shown as pills.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const MultiSelect(
        data: _groceries,
        label: 'Fruits',
        placeholder: 'Pick',
      ),
      code: '''
MultiSelect(
  data: groceries,
  label: 'Fruits',
  placeholder: 'Pick',
)
''',
    ),
    GalleryDemo(
      title: 'Disabled',
      builder: (context) => const MultiSelect(
        data: _groceries,
        label: 'Fruits',
        placeholder: 'Pick',
        disabled: true,
      ),
      code: '''
MultiSelect(
  data: groceries,
  label: 'Fruits',
  placeholder: 'Pick',
  disabled: true,
)
''',
    ),
  ],
);
