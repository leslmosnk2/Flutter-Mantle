import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

final tablePage = GalleryPage(
  slug: 'typography/table',
  title: 'MTable',
  category: 'Typography',
  description: 'A styled table built from thead, tbody, and cells.',
  demos: [
    GalleryDemo(
      title: 'Usage',
      builder: (context) => const Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: 320,
          child: MTable(
            withTableBorder: true,
            children: [
              TableThead(
                children: [
                  TableTr(
                    children: [
                      TableTh(child: Text('Element')),
                      TableTh(child: Text('Position')),
                    ],
                  ),
                ],
              ),
              TableTbody(
                children: [
                  TableTr(
                    children: [
                      TableTd(child: Text('Anvil')),
                      TableTd(child: Text('1')),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      code: '''
MTable(
  withTableBorder: true,
  children: [
    TableThead(
      children: [
        TableTr(
          children: [
            TableTh(child: Text('Element')),
            TableTh(child: Text('Position')),
          ],
        ),
      ],
    ),
    TableTbody(
      children: [
        TableTr(
          children: [
            TableTd(child: Text('Anvil')),
            TableTd(child: Text('1')),
          ],
        ),
      ],
    ),
  ],
)
''',
    ),
  ],
);
