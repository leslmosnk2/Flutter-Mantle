import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final nativeSelectPage = GalleryPage(
  slug: 'inputs/native-select',
  title: 'NativeSelect',
  category: 'Inputs',
  description: 'A simple option dropdown.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: NativeSelect(
            label: Text('OS'),
            data: [
              NativeSelectItem(value: 'linux', label: 'Linux'),
              NativeSelectItem(value: 'macos', label: 'macOS'),
            ],
          ),
        ),
      ),
      code: '''
NativeSelect(
  label: Text('OS'),
  data: [
    NativeSelectItem(value: 'linux', label: 'Linux'),
    NativeSelectItem(value: 'macos', label: 'macOS'),
  ],
)
''',
    ),
  ],
);
