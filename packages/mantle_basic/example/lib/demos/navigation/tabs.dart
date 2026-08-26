import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final tabsPage = GalleryPage(
  slug: 'navigation/tabs',
  title: 'Tabs',
  category: 'Navigation',
  description: 'A tabbed panel with a list of tabs and matching panels.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Tabs(
        value: 'gallery',
        children: [
          TabsList(
            children: [
              TabsTab(value: 'gallery', child: Text('Gallery')),
              TabsTab(value: 'api', child: Text('API')),
            ],
          ),
          TabsPanel(
            value: 'gallery',
            child: Text('Gallery panel'),
          ),
          TabsPanel(
            value: 'api',
            child: Text('API panel'),
          ),
        ],
      ),
      code: '''
Tabs(
  value: 'gallery',
  children: [
    TabsList(
      children: [
        TabsTab(value: 'gallery', child: Text('Gallery')),
        TabsTab(value: 'api', child: Text('API')),
      ],
    ),
    TabsPanel(
      value: 'gallery',
      child: Text('Gallery panel'),
    ),
    TabsPanel(
      value: 'api',
      child: Text('API panel'),
    ),
  ],
)
''',
    ),
    GalleryDemo(
      title: 'Vertical',
      builder: (context) => const Tabs(
        value: 'gallery',
        orientation: Axis.vertical,
        children: [
          TabsList(
            children: [
              TabsTab(value: 'gallery', child: Text('Gallery')),
              TabsTab(value: 'api', child: Text('API')),
            ],
          ),
          TabsPanel(
            value: 'gallery',
            child: Text('Gallery panel'),
          ),
          TabsPanel(
            value: 'api',
            child: Text('API panel'),
          ),
        ],
      ),
      code: '''
Tabs(
  value: 'gallery',
  orientation: Axis.vertical,
  children: [
    TabsList(
      children: [
        TabsTab(value: 'gallery', child: Text('Gallery')),
        TabsTab(value: 'api', child: Text('API')),
      ],
    ),
    TabsPanel(
      value: 'gallery',
      child: Text('Gallery panel'),
    ),
    TabsPanel(
      value: 'api',
      child: Text('API panel'),
    ),
  ],
)
''',
    ),
  ],
);
