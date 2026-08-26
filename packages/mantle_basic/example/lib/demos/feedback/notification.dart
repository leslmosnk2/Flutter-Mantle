import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final notificationPage = GalleryPage(
  slug: 'feedback/notification',
  title: 'Notification',
  category: 'Feedback',
  description:
      'A visual notification card. The widget is named MNotification to '
      "avoid Flutter's Notification.",
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const MNotification(
        title: Text('We notify you'),
        message: Text('That you have been notified'),
      ),
      code: '''
MNotification(
  title: Text('We notify you'),
  message: Text('That you have been notified'),
)
''',
    ),
  ],
);
