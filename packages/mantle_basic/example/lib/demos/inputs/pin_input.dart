import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final pinInputPage = GalleryPage(
  slug: 'inputs/pin-input',
  title: 'PinInput',
  category: 'Inputs',
  description: 'A row of one-character fields.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: PinInput(),
      ),
      code: '''
PinInput()
''',
    ),
  ],
);
