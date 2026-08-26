import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final textInputPage = GalleryPage(
  slug: 'inputs/text-input',
  title: 'TextInput',
  category: 'Inputs',
  description: 'A wrapped single-line text field.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: TextInput(
            label: Text('Email'),
            placeholder: 'you@site.com',
          ),
        ),
      ),
      code: '''
TextInput(
  label: Text('Email'),
  placeholder: 'you@site.com',
)
''',
    ),
    GalleryDemo(
      title: 'Filled',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: TextInput.filled(
            label: Text('Email'),
            placeholder: 'you@site.com',
          ),
        ),
      ),
      code: '''
TextInput.filled(
  label: Text('Email'),
  placeholder: 'you@site.com',
)
''',
    ),
    GalleryDemo(
      title: 'Sizes',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: MStack(
            children: [
              TextInput(
                size: 'xs',
                placeholder: 'xs',
              ),
              TextInput(
                size: 'sm',
                placeholder: 'sm',
              ),
              TextInput(
                size: 'md',
                placeholder: 'md',
              ),
            ],
          ),
        ),
      ),
      code: '''
TextInput(
  size: 'xs',
  placeholder: 'xs',
)
''',
    ),
  ],
);
