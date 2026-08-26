import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final passwordInputPage = GalleryPage(
  slug: 'inputs/password-input',
  title: 'PasswordInput',
  category: 'Inputs',
  description: 'An obscured text field with a visibility toggle.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: PasswordInput(
            label: Text('Password'),
            placeholder: 'Your password',
          ),
        ),
      ),
      code: '''
PasswordInput(
  label: Text('Password'),
  placeholder: 'Your password',
)
''',
    ),
  ],
);
