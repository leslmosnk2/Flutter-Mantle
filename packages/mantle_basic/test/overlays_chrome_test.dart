import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart' as m;

void main() {
  group('Menubar', () {
    testWidgets('renders targets in a row and opens by index', (tester) async {
      await tester.pumpMantle(
        const m.Menubar(
          openIndex: 0,
          children: [
            m.MenubarMenu(
              children: [
                m.MenubarTarget(child: Text('File')),
                m.MenubarDropdown(
                  children: [m.MenuItem(child: Text('New'))],
                ),
              ],
            ),
            m.MenubarMenu(
              children: [
                m.MenubarTarget(child: Text('Edit')),
                m.MenubarDropdown(
                  children: [m.MenuItem(child: Text('Undo'))],
                ),
              ],
            ),
          ],
        ),
        theme: BasicTheme(),
      );

      expect(find.text('File'), findsOneWidget);
      expect(find.text('Edit'), findsOneWidget);
      expect(find.text('New'), findsOneWidget);
      expect(find.text('Undo'), findsNothing);
    });
  });

  group('FloatingIndicator', () {
    testWidgets('highlights the active child', (tester) async {
      await tester.pumpMantle(
        const m.FloatingIndicator(
          active: 1,
          children: [Text('One'), Text('Two')],
        ),
        theme: BasicTheme(),
      );

      expect(find.text('One'), findsOneWidget);
      expect(find.text('Two'), findsOneWidget);
      expect(
        find.byKey(BasicFloatingIndicatorDelegate.indicatorKey),
        findsOneWidget,
      );
    });
  });

  group('FloatingWindow', () {
    testWidgets('shows title and child at the given origin', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 400,
          height: 400,
          child: m.FloatingWindow(
            left: 24,
            top: 40,
            width: 200,
            title: Text('Notes'),
            child: Text('Body'),
          ),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Notes'), findsOneWidget);
      expect(find.text('Body'), findsOneWidget);
      final window = tester.getRect(find.byType(m.FloatingWindow));
      final title = tester.getRect(find.text('Notes'));
      expect(title.left, greaterThan(window.left));
      expect(title.top, greaterThan(window.top));
    });
  });
}
