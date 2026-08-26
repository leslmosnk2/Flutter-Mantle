import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

void main() {
  group('MText', () {
    testWidgets('renders the child', (tester) async {
      await tester.pumpMantle(
        const MText(child: Text('Hello')),
        theme: BasicTheme(),
      );
      expect(find.text('Hello'), findsOneWidget);
    });

    testWidgets('lineClamp still paints the label', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 80,
          child: MText(
            lineClamp: 1,
            child: Text('A very long line of copy that should clamp'),
          ),
        ),
        theme: BasicTheme(),
      );
      expect(
        find.text('A very long line of copy that should clamp'),
        findsOneWidget,
      );
    });
  });

  group('MTitle', () {
    testWidgets('renders a heading', (tester) async {
      await tester.pumpMantle(
        const MTitle(order: 2, child: Text('Section')),
        theme: BasicTheme(),
      );
      expect(find.text('Section'), findsOneWidget);
    });
  });

  group('Code', () {
    testWidgets('renders inline code', (tester) async {
      await tester.pumpMantle(
        const Code(child: Text('npm install')),
        theme: BasicTheme(),
      );
      expect(find.text('npm install'), findsOneWidget);
    });
  });

  group('Mark', () {
    testWidgets('renders marked text', (tester) async {
      await tester.pumpMantle(
        const Mark(child: Text('chunk')),
        theme: BasicTheme(),
      );
      expect(find.text('chunk'), findsOneWidget);
    });
  });

  group('Highlight', () {
    testWidgets('marks matching substrings', (tester) async {
      await tester.pumpMantle(
        const Highlight(
          text: 'Highlight this',
          highlight: ['this'],
        ),
        theme: BasicTheme(),
      );
      expect(find.text('this'), findsOneWidget);
      expect(find.byType(Mark), findsOneWidget);
    });
  });

  group('Blockquote', () {
    testWidgets('renders quote and cite', (tester) async {
      await tester.pumpMantle(
        const Blockquote(
          cite: Text('– Forrest Gump'),
          child: Text('Life is like an npm install'),
        ),
        theme: BasicTheme(),
      );
      expect(find.text('Life is like an npm install'), findsOneWidget);
      expect(find.text('– Forrest Gump'), findsOneWidget);
    });
  });

  group('MList', () {
    testWidgets('renders items', (tester) async {
      await tester.pumpMantle(
        const MList(
          children: [
            ListItem(child: Text('Clone')),
            ListItem(child: Text('Install')),
          ],
        ),
        theme: BasicTheme(),
      );
      expect(find.text('Clone'), findsOneWidget);
      expect(find.text('Install'), findsOneWidget);
    });

    testWidgets('ordered list numbers items', (tester) async {
      await tester.pumpMantle(
        const MList(
          type: ListType.ordered,
          children: [
            ListItem(child: Text('First')),
          ],
        ),
        theme: BasicTheme(),
      );
      expect(find.text('1.'), findsOneWidget);
      expect(find.text('First'), findsOneWidget);
    });
  });

  group('MTable', () {
    testWidgets('renders cells', (tester) async {
      await tester.pumpMantle(
        const MTable(
          children: [
            TableThead(
              children: [
                TableTr(
                  children: [
                    TableTh(child: Text('Element')),
                    TableTh(child: Text('Symbol')),
                  ],
                ),
              ],
            ),
            TableTbody(
              children: [
                TableTr(
                  children: [
                    TableTd(child: Text('Carbon')),
                    TableTd(child: Text('C')),
                  ],
                ),
              ],
            ),
          ],
        ),
        theme: BasicTheme(),
      );
      expect(find.text('Element'), findsOneWidget);
      expect(find.text('Carbon'), findsOneWidget);
    });

    testWidgets('builds from data', (tester) async {
      await tester.pumpMantle(
        const MTable(
          data: TableData(
            head: [Text('Name')],
            body: [
              [Text('Ada')],
            ],
            caption: Text('People'),
          ),
        ),
        theme: BasicTheme(),
      );
      expect(find.text('Name'), findsOneWidget);
      expect(find.text('Ada'), findsOneWidget);
      expect(find.text('People'), findsOneWidget);
    });
  });

  group('Typography', () {
    testWidgets('wraps descendant text', (tester) async {
      await tester.pumpMantle(
        const Typography(
          child: MText(child: Text('Body')),
        ),
        theme: BasicTheme(),
      );
      expect(find.text('Body'), findsOneWidget);
      expect(find.byType(TypographyScope), findsOneWidget);
    });

    testWidgets('TypographyStylesProvider is Typography', (tester) async {
      await tester.pumpMantle(
        const TypographyStylesProvider(
          child: MText(child: Text('Alias')),
        ),
        theme: BasicTheme(),
      );
      expect(find.text('Alias'), findsOneWidget);
      expect(find.byType(Typography), findsOneWidget);
    });
  });
}
