import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/noop.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final comboboxPage = GalleryPage(
  slug: 'combobox/combobox',
  title: 'Combobox',
  category: 'Combobox',
  description: 'Overlay and list primitive shared by select widgets.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Combobox(
        children: [
          ComboboxTarget(
            child: Button(
              onPressed: galleryNoop,
              child: Text('Open'),
            ),
          ),
          ComboboxDropdown(
            child: ComboboxOptions(
              children: [
                ComboboxOption(
                  value: 'apple',
                  child: Text('Apple'),
                ),
                ComboboxOption(
                  value: 'banana',
                  child: Text('Banana'),
                ),
              ],
            ),
          ),
        ],
      ),
      code: '''
Combobox(
  children: [
    ComboboxTarget(
      child: Button(
        onPressed: () {},
        child: Text('Open'),
      ),
    ),
    ComboboxDropdown(
      child: ComboboxOptions(
        children: [
          ComboboxOption(value: 'apple', child: Text('Apple')),
          ComboboxOption(value: 'banana', child: Text('Banana')),
        ],
      ),
    ),
  ],
)
''',
    ),
  ],
);
