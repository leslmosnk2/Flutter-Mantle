import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final switchGroupPage = GalleryPage(
  slug: 'inputs/switch-group',
  title: 'SwitchGroup',
  category: 'Inputs',
  description: 'A group of switches that share a list of values.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const SwitchGroup(
        children: [
          Switch(value: 'email', label: Text('Email')),
          Switch(value: 'push', label: Text('Push')),
        ],
      ),
      code: '''
SwitchGroup(
  children: [
    Switch(value: 'email', label: Text('Email')),
    Switch(value: 'push', label: Text('Push')),
  ],
)
''',
    ),
  ],
);
