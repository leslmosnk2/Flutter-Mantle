import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final focusTrapPage = GalleryPage(
  slug: 'miscellaneous/focus-trap',
  title: 'FocusTrap',
  category: 'Miscellaneous',
  description: 'Autofocus the child subtree.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: FocusTrap(
            active: true,
            child: TextInput(placeholder: 'Trapped'),
          ),
        ),
      ),
      code: '''
FocusTrap(
  active: true,
  child: TextInput(placeholder: 'Trapped'),
)
''',
    ),
  ],
);
