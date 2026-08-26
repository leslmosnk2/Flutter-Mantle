import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final switchPage = GalleryPage(
  slug: 'inputs/switch',
  title: 'Switch',
  category: 'Inputs',
  description: 'A labeled on/off control.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Switch(
        label: Text('I agree to sell my privacy'),
      ),
      code: '''
Switch(
  label: Text('I agree to sell my privacy'),
)
''',
    ),
  ],
);
