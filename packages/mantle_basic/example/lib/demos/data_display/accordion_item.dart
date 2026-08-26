import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final accordionItemPage = GalleryPage(
  slug: 'data-display/accordion-item',
  title: 'AccordionItem',
  category: 'Data display',
  description: 'A labeled panel inside Accordion.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Accordion(
        defaultValue: ['flex'],
        children: [
          AccordionItem(
            value: 'flex',
            label: Text('Flexibility'),
            child: Text('Configure components...'),
          ),
        ],
      ),
      code: '''
AccordionItem(
  value: 'flex',
  label: Text('Flexibility'),
  child: Text('Configure components...'),
)
''',
    ),
  ],
);
