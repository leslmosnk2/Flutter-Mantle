import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

const _groceries = [
  ComboboxItem(value: 'apple', label: 'Apple'),
  ComboboxItem(value: 'banana', label: 'Banana'),
  ComboboxItem(value: 'orange', label: 'Orange'),
];

final autocompletePage = GalleryPage(
  slug: 'combobox/autocomplete',
  title: 'Autocomplete',
  category: 'Combobox',
  description: 'Free-text input with a list of suggestions.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Autocomplete(
        data: _groceries,
        placeholder: 'Pick fruit',
        label: 'Fruit',
      ),
      code: '''
Autocomplete(
  data: groceries,
  placeholder: 'Pick fruit',
  label: 'Fruit',
)
''',
    ),
    GalleryDemo(
      title: 'Clearable',
      builder: (context) => const Autocomplete(
        data: _groceries,
        placeholder: 'Pick fruit',
        label: 'Fruit',
        value: 'apple',
        clearable: true,
      ),
      code: '''
Autocomplete(
  data: groceries,
  placeholder: 'Pick fruit',
  label: 'Fruit',
  value: 'apple',
  clearable: true,
)
''',
    ),
  ],
);
