import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final fileInputPage = GalleryPage(
  slug: 'inputs/file-input',
  title: 'FileInput',
  category: 'Inputs',
  description: 'A tap-to-pick file field.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: FileInput(
            label: Text('Upload files'),
            placeholder: 'Pick file',
          ),
        ),
      ),
      code: '''
FileInput(
  label: Text('Upload files'),
  placeholder: 'Pick file',
)
''',
    ),
  ],
);
