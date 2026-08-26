import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

const _groceries = [
  ComboboxItem(value: 'apple', label: 'Apple'),
  ComboboxItem(value: 'banana', label: 'Banana'),
  ComboboxItem(value: 'orange', label: 'Orange'),
];

final selectPage = GalleryPage(
  slug: 'combobox/select',
  title: 'Select',
  category: 'Combobox',
  description: 'Pick a single value from a list.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Select(
        data: _groceries,
        label: 'Your favorite library',
        placeholder: 'Pick value',
      ),
      code: '''
Select(
  data: groceries,
  label: 'Your favorite library',
  placeholder: 'Pick value',
)
''',
    ),
    GalleryDemo(
      title: 'Searchable',
      builder: (context) => const Select(
        data: _groceries,
        label: 'Your favorite library',
        placeholder: 'Pick value',
        searchable: true,
      ),
      code: '''
Select(
  data: groceries,
  label: 'Your favorite library',
  placeholder: 'Pick value',
  searchable: true,
)
''',
    ),
  ],
);
