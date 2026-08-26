import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart' as m;

void main() {
  group('Dialog', () {
    testWidgets('shows the child when opened', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 400,
          height: 400,
          child: m.Dialog(opened: true, child: Text('Subscribe')),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Subscribe'), findsOneWidget);
    });

    testWidgets('hides when closed', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 400,
          height: 400,
          child: m.Dialog(child: Text('Subscribe')),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Subscribe'), findsNothing);
    });

    testWidgets('close control calls onClose', (tester) async {
      var closed = 0;
      await tester.pumpMantle(
        SizedBox(
          width: 400,
          height: 400,
          child: m.Dialog(
            opened: true,
            onClose: () => closed++,
            child: const Text('Subscribe'),
          ),
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.text('×'));
      expect(closed, 1);
    });
  });

  group('Modal', () {
    testWidgets('shows title and child when opened', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 500,
          height: 400,
          child: m.Modal(
            opened: true,
            title: Text('Edit'),
            child: Text('Body'),
          ),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Edit'), findsOneWidget);
      expect(find.text('Body'), findsOneWidget);
    });

    testWidgets('ModalRoot shows child over a barrier', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 500,
          height: 400,
          child: m.ModalRoot(opened: true, child: Text('Raw')),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Raw'), findsOneWidget);
    });
  });

  group('Drawer', () {
    testWidgets('shows a left panel when opened', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 500,
          height: 400,
          child: m.Drawer(
            opened: true,
            title: Text('Nav'),
            child: Text('Links'),
          ),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Nav'), findsOneWidget);
      expect(find.text('Links'), findsOneWidget);
      expect(tester.getRect(find.text('Links')).left, lessThan(250));
    });

    testWidgets('opens from the right', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 500,
          height: 400,
          child: m.Drawer(
            opened: true,
            position: m.DrawerPosition.right,
            child: Text('Aside'),
          ),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Aside'), findsOneWidget);
      expect(tester.getRect(find.text('Aside')).left, greaterThan(50));
    });
  });
}
