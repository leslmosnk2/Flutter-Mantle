import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final floatingWindowPage = GalleryPage(
  slug: 'overlays/floating-window',
  title: 'FloatingWindow',
  category: 'Overlays',
  description: 'A positioned panel that can be dragged around its parent.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const SizedBox(
        width: 400,
        height: 300,
        child: FloatingWindow(
          title: Text('Window'),
          width: 200,
          height: 120,
          child: Text('Drag me'),
        ),
      ),
      code: '''
SizedBox(
  width: 400,
  height: 300,
  child: FloatingWindow(
    title: Text('Window'),
    width: 200,
    height: 120,
    child: Text('Drag me'),
  ),
)
''',
    ),
  ],
);
