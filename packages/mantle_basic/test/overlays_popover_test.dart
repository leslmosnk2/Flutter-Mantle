import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart' as m;

void main() {
  group('Popover', () {
    testWidgets('shows the dropdown when opened', (tester) async {
      await tester.pumpMantle(
        const m.Popover(
          opened: true,
          children: [
            m.PopoverTarget(child: Text('Toggle')),
            m.PopoverDropdown(child: Text('Flyout')),
          ],
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Toggle'), findsOneWidget);
      expect(find.text('Flyout'), findsOneWidget);
    });

    testWidgets('hides the dropdown when closed', (tester) async {
      await tester.pumpMantle(
        const m.Popover(
          children: [
            m.PopoverTarget(child: Text('Toggle')),
            m.PopoverDropdown(child: Text('Flyout')),
          ],
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Toggle'), findsOneWidget);
      expect(find.text('Flyout'), findsNothing);
    });
  });

  group('HoverCard', () {
    testWidgets('shows the dropdown on hover', (tester) async {
      await tester.pumpMantle(
        const m.HoverCard(
          children: [
            m.HoverCardTarget(child: Text('Hover')),
            m.HoverCardDropdown(child: Text('Card')),
          ],
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Card'), findsNothing);

      final gesture = await tester.createGesture(kind: PointerDeviceKind.mouse);
      await gesture.addPointer(location: Offset.zero);
      addTearDown(gesture.removePointer);
      await tester.pump();
      await gesture.moveTo(tester.getCenter(find.text('Hover')));
      await tester.pump();

      expect(find.text('Card'), findsOneWidget);
    });
  });

  group('Menu', () {
    testWidgets('shows items when opened', (tester) async {
      await tester.pumpMantle(
        const m.Menu(
          opened: true,
          children: [
            m.MenuTarget(child: Text('Open')),
            m.MenuDropdown(
              children: [
                m.MenuLabel(child: Text('Actions')),
                m.MenuItem(child: Text('Copy')),
                m.MenuDivider(),
                m.MenuItem(child: Text('Delete')),
              ],
            ),
          ],
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Open'), findsOneWidget);
      expect(find.text('Actions'), findsOneWidget);
      expect(find.text('Copy'), findsOneWidget);
      expect(find.text('Delete'), findsOneWidget);
    });

    testWidgets('item tap calls onPressed', (tester) async {
      var copies = 0;
      await tester.pumpMantle(
        m.Menu(
          opened: true,
          children: [
            const m.MenuTarget(child: Text('Open')),
            m.MenuDropdown(
              children: [
                m.MenuItem(
                  onPressed: () => copies++,
                  child: const Text('Copy'),
                ),
              ],
            ),
          ],
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.text('Copy'));
      expect(copies, 1);
    });
  });
}
