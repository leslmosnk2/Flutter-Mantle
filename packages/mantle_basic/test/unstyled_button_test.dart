import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

void _noop() {}

void main() {
  group('BasicUnstyledButtonDelegate', () {
    testWidgets('renders the child', (tester) async {
      await tester.pumpMantle(
        const UnstyledButton(onPressed: _noop, child: Text('Plain')),
        theme: BasicTheme(),
      );

      expect(find.text('Plain'), findsOneWidget);
    });

    testWidgets('onPressed fires when tapped', (tester) async {
      var taps = 0;
      await tester.pumpMantle(
        UnstyledButton(
          onPressed: () => taps++,
          child: const Text('Plain'),
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.text('Plain'));
      expect(taps, 1);
    });

    testWidgets('onPressed does not fire when disabled', (tester) async {
      var taps = 0;
      await tester.pumpMantle(
        UnstyledButton(
          disabled: true,
          onPressed: () => taps++,
          child: const Text('Plain'),
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.text('Plain'));
      expect(taps, 0);
    });
  });
}
