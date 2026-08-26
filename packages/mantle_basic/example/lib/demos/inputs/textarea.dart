import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final textareaPage = GalleryPage(
  slug: 'inputs/textarea',
  title: 'Textarea',
  category: 'Inputs',
  description: 'A wrapped multiline text field.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: Textarea(
            label: Text('Bio'),
            placeholder: 'Your comment',
          ),
        ),
      ),
      code: '''
Textarea(
  label: Text('Bio'),
  placeholder: 'Your comment',
)
''',
    ),
  ],
);
