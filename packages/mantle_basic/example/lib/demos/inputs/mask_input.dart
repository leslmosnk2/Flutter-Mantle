import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final maskInputPage = GalleryPage(
  slug: 'inputs/mask-input',
  title: 'MaskInput',
  category: 'Inputs',
  description: 'A text field that formats input to a mask.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: MaskInput(
            mask: '+1 (000) 000-0000',
            label: Text('Phone'),
          ),
        ),
      ),
      code: '''
MaskInput(
  mask: '+1 (000) 000-0000',
  label: Text('Phone'),
)
''',
    ),
  ],
);
