import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final stepperPage = GalleryPage(
  slug: 'navigation/stepper',
  title: 'Stepper',
  category: 'Navigation',
  description: 'A sequence of labeled steps with optional completed content.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Stepper(
        active: 1,
        children: [
          StepperStep(
            label: Text('First'),
            child: Text('Step 1'),
          ),
          StepperStep(
            label: Text('Second'),
            child: Text('Step 2'),
          ),
          StepperCompleted(
            child: Text('Done'),
          ),
        ],
      ),
      code: '''
Stepper(
  active: 1,
  children: [
    StepperStep(
      label: Text('First'),
      child: Text('Step 1'),
    ),
    StepperStep(
      label: Text('Second'),
      child: Text('Step 2'),
    ),
    StepperCompleted(
      child: Text('Done'),
    ),
  ],
)
''',
    ),
  ],
);
