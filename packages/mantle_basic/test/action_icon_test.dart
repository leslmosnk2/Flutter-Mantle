import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

void _noop() {}

void main() {
  group('BasicActionIconDelegate', () {
    testWidgets('renders the child', (tester) async {
      await tester.pumpMantle(
        const ActionIcon(onPressed: _noop, child: Text('*')),
        theme: BasicTheme(),
      );

      expect(find.text('*'), findsOneWidget);
    });

    testWidgets('default size is md (28px square)', (tester) async {
      await tester.pumpMantle(
        const ActionIcon.filled(onPressed: _noop, child: Text('*')),
        theme: BasicTheme(),
      );

      expect(tester.getSize(find.byType(ActionIcon)), const Size(28, 28));
    });

    testWidgets('loading shows a loader', (tester) async {
      await tester.pumpMantle(
        const ActionIcon.filled(
          loading: true,
          onPressed: _noop,
          child: Text('*'),
        ),
        theme: BasicTheme(),
      );

      expect(find.byKey(BasicActionIconDelegate.loaderKey), findsOneWidget);
    });

    testWidgets('onPressed fires when tapped', (tester) async {
      var taps = 0;
      await tester.pumpMantle(
        ActionIcon(
          onPressed: () => taps++,
          child: const Text('*'),
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.byType(ActionIcon));
      expect(taps, 1);
    });

    testWidgets('onPressed does not fire when disabled', (tester) async {
      var taps = 0;
      await tester.pumpMantle(
        ActionIcon(
          disabled: true,
          onPressed: () => taps++,
          child: const Text('*'),
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.byType(ActionIcon));
      expect(taps, 0);
    });
  });

  group('BasicActionIconGroupDelegate', () {
    testWidgets('lays children in a row', (tester) async {
      await tester.pumpMantle(
        const ActionIconGroup(
          children: [
            ActionIcon(onPressed: _noop, child: Text('a')),
            ActionIcon(onPressed: _noop, child: Text('b')),
          ],
        ),
        theme: BasicTheme(),
      );

      expect(find.text('a'), findsOneWidget);
      expect(find.text('b'), findsOneWidget);
      final a = tester.getTopLeft(find.text('a'));
      final b = tester.getTopLeft(find.text('b'));
      expect(b.dx, greaterThan(a.dx));
    });
  });
}
