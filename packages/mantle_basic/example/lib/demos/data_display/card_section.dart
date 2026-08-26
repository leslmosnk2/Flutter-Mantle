import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final cardSectionPage = GalleryPage(
  slug: 'data-display/card-section',
  title: 'CardSection',
  category: 'Data display',
  description: 'A full-bleed section inside MCard.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const MCard(
        withBorder: true,
        children: [
          CardSection(
            child: Box(height: 80, color: Color(0xFF228BE6)),
          ),
          MText(child: Text('Sectioned card')),
        ],
      ),
      code: '''
MCard(
  withBorder: true,
  children: [
    CardSection(
      child: Box(height: 80, color: Color(0xFF228BE6)),
    ),
    MText(child: Text('Sectioned card')),
  ],
)
''',
    ),
  ],
);
