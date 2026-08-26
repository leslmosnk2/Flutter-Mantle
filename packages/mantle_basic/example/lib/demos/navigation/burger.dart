import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/opened_demo.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final burgerPage = GalleryPage(
  slug: 'navigation/burger',
  title: 'Burger',
  category: 'Navigation',
  description: 'A three-line menu toggle that animates to a close icon.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => OpenedDemo(
        builder:
            (
              context, {
              required opened,
              required open,
              required close,
            }) {
              return Burger(
                opened: opened,
                onTap: opened ? close : open,
              );
            },
      ),
      code: '''
OpenedDemo(
  builder: (context, opened, open, close) {
    return Burger(
      opened: opened,
      onTap: opened ? close : open,
    );
  },
)
''',
    ),
  ],
);
