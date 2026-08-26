import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final cascaderPage = GalleryPage(
  slug: 'combobox/cascader',
  title: 'Cascader',
  category: 'Combobox',
  description: 'Pick a path from hierarchical columns.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Cascader(
        data: [
          CascaderOption(
            value: 'fruits',
            label: 'Fruits',
            children: [
              CascaderOption(value: 'apple', label: 'Apple'),
            ],
          ),
        ],
        placeholder: 'Pick',
      ),
      code: '''
Cascader(
  data: [
    CascaderOption(
      value: 'fruits',
      label: 'Fruits',
      children: [
        CascaderOption(value: 'apple', label: 'Apple'),
      ],
    ),
  ],
  placeholder: 'Pick',
)
''',
    ),
  ],
);
