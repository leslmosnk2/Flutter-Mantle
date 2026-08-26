import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

const _groceries = [
  ComboboxItem(value: 'apple', label: 'Apple'),
  ComboboxItem(value: 'banana', label: 'Banana'),
  ComboboxItem(value: 'orange', label: 'Orange'),
];

final comboboxPopoverPage = GalleryPage(
  slug: 'combobox/combobox-popover',
  title: 'ComboboxPopover',
  category: 'Combobox',
  description: 'A dropdown of options anchored to any target.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const ComboboxPopover(
        data: _groceries,
        child: ComboboxPopoverTarget(
          child: Button(
            onPressed: galleryNoop,
            child: Text('Pick'),
          ),
        ),
      ),
      code: '''
ComboboxPopover(
  data: groceries,
  child: ComboboxPopoverTarget(
    child: Button(
      onPressed: () {},
      child: Text('Pick'),
    ),
  ),
)
''',
    ),
  ],
);
