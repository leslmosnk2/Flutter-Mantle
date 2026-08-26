import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

const _groceries = [
  ComboboxItem(value: 'apple', label: 'Apple'),
  ComboboxItem(value: 'banana', label: 'Banana'),
  ComboboxItem(value: 'orange', label: 'Orange'),
];

final tagsInputPage = GalleryPage(
  slug: 'combobox/tags-input',
  title: 'TagsInput',
  category: 'Combobox',
  description: 'Free-form tags with optional suggestions.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const TagsInput(
        data: _groceries,
        label: 'Press Enter to submit a tag',
        placeholder: 'Enter tag',
      ),
      code: '''
TagsInput(
  data: groceries,
  label: 'Press Enter to submit a tag',
  placeholder: 'Enter tag',
)
''',
    ),
  ],
);
