import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final accordionPage = GalleryPage(
  slug: 'data-display/accordion',
  title: 'Accordion',
  category: 'Data display',
  description: 'An expandable list of labeled sections.',
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
Accordion(
  defaultValue: ['flex'],
  children: [
    AccordionItem(
      value: 'flex',
      label: Text('Flexibility'),
      child: Text('Configure components...'),
    ),
  ],
)
''',
    ),
    GalleryDemo(
      title: 'Multiple',
      builder: (context) => const Accordion(
        multiple: true,
        defaultValue: ['flex'],
        children: [
          AccordionItem(
            value: 'flex',
            label: Text('Flexibility'),
            child: Text('Configure components...'),
          ),
          AccordionItem(
            value: 'scale',
            label: Text('Scale'),
            child: Text('Scale with your product'),
          ),
        ],
      ),
      code: '''
Accordion(
  multiple: true,
  children: [
    AccordionItem(
      value: 'flex',
      label: Text('Flexibility'),
      child: Text('Configure components...'),
    ),
  ],
)
''',
    ),
  ],
);
