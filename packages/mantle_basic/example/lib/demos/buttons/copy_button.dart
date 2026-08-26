import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final copyButtonPage = GalleryPage(
  slug: 'buttons/copy-button',
  title: 'CopyButton',
  category: 'Buttons',
  description:
      'Headless clipboard copy that exposes copied state to a builder.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => Group(
        children: [
          CopyButton(
            value: 'https://mantine.dev',
            builder: (context, {required copied, required copy}) {
              return Button(
                onPressed: copy,
                child: Text(copied ? 'Copied' : 'Copy'),
              );
            },
          ),
        ],
      ),
      code: '''
CopyButton(
  value: 'https://mantine.dev',
  builder: (context, {required copied, required copy}) {
    return Button(
      onPressed: copy,
      child: Text(copied ? 'Copied' : 'Copy'),
    );
  },
)
''',
    ),
    GalleryDemo(
      title: 'Timeout',
      builder: (context) => Group(
        children: [
          CopyButton(
            value: 'mantle',
            timeout: 2000,
            builder: (context, {required copied, required copy}) {
              return Button.filled(
                onPressed: copy,
                child: Text(copied ? 'Copied' : 'Copy'),
              );
            },
          ),
        ],
      ),
      code: '''
CopyButton(
  value: 'mantle',
  timeout: 2000,
  builder: (context, {required copied, required copy}) {
    return Button.filled(
      onPressed: copy,
      child: Text(copied ? 'Copied' : 'Copy'),
    );
  },
)
''',
    ),
  ],
);
