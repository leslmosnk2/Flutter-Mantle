import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final paperPage = GalleryPage(
  slug: 'miscellaneous/paper',
  title: 'Paper',
  category: 'Miscellaneous',
  description: 'An elevated surface.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: Paper(
            withBorder: true,
            padding: 'md',
            child: Text('Paper is the most basic ui component'),
          ),
        ),
      ),
      code: '''
Paper(
  withBorder: true,
  padding: 'md',
  child: Text('Paper is the most basic ui component'),
)
''',
    ),
  ],
);
