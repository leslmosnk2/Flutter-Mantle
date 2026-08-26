import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final inputWrapperPage = GalleryPage(
  slug: 'inputs/input-wrapper',
  title: 'InputWrapper',
  category: 'Inputs',
  description: 'Label, description, and error around an input child.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: InputWrapper(
            label: Text('Email'),
            child: Input(placeholder: 'you@site.com'),
          ),
        ),
      ),
      code: '''
InputWrapper(
  label: Text('Email'),
  child: Input(placeholder: 'you@site.com'),
)
''',
    ),
  ],
);
