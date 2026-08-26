import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final alertPage = GalleryPage(
  slug: 'feedback/alert',
  title: 'Alert',
  category: 'Feedback',
  description:
      'Inline feedback with an optional title, body, and close control.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Alert(
        title: Text('Bummer!'),
        child: Text('Something went wrong'),
      ),
      code: '''
Alert(
  title: Text('Bummer!'),
  child: Text('Something went wrong'),
)
''',
    ),
    GalleryDemo(
      title: 'Filled',
      builder: (context) => const Alert.filled(
        title: Text('Bummer!'),
        child: Text('Something went wrong'),
      ),
      code: '''
Alert.filled(
  title: Text('Bummer!'),
  child: Text('Something went wrong'),
)
''',
    ),
    GalleryDemo(
      title: 'Light',
      builder: (context) => const Alert.light(
        title: Text('Bummer!'),
        child: Text('Something went wrong'),
      ),
      code: '''
Alert.light(
  title: Text('Bummer!'),
  child: Text('Something went wrong'),
)
''',
    ),
  ],
);
