import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final numberFormatterPage = GalleryPage(
  slug: 'data-display/number-formatter',
  title: 'NumberFormatter',
  category: 'Data display',
  description: 'Formats a number as text.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const NumberFormatter(
        value: 1234.56,
        thousandSeparator: ',',
        prefix: r'$',
      ),
      code: r'''
NumberFormatter(
  value: 1234.56,
  thousandSeparator: ',',
  prefix: '$',
)
''',
    ),
  ],
);
