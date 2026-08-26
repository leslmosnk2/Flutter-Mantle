import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

void _noop() {}

void main() {
  group('BasicCloseButtonDelegate', () {
    testWidgets('renders the default icon', (tester) async {
      await tester.pumpMantle(
        const CloseButton(onPressed: _noop),
        theme: BasicTheme(),
      );

      expect(find.byKey(BasicCloseButtonDelegate.iconKey), findsOneWidget);
      expect(tester.getSize(find.byType(CloseButton)), const Size(28, 28));
    });

    testWidgets('uses a custom icon when provided', (tester) async {
      await tester.pumpMantle(
        const CloseButton(
          onPressed: _noop,
          icon: Text('x'),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('x'), findsOneWidget);
      expect(find.byKey(BasicCloseButtonDelegate.iconKey), findsNothing);
    });

    testWidgets('onPressed fires when tapped', (tester) async {
      var taps = 0;
      await tester.pumpMantle(
        CloseButton(onPressed: () => taps++),
        theme: BasicTheme(),
      );

      await tester.tap(find.byType(CloseButton));
      expect(taps, 1);
    });

    testWidgets('onPressed does not fire when disabled', (tester) async {
      var taps = 0;
      await tester.pumpMantle(
        CloseButton(disabled: true, onPressed: () => taps++),
        theme: BasicTheme(),
      );

      await tester.tap(find.byType(CloseButton));
      expect(taps, 0);
    });
  });
}
