import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

void _noop() {}

void main() {
  group('BasicButtonDelegate', () {
    testWidgets('renders the label', (tester) async {
      await tester.pumpMantle(
        const Button(onPressed: _noop, child: Text('Save')),
        theme: BasicTheme(),
      );

      expect(find.text('Save'), findsOneWidget);
    });

    testWidgets('default size is sm (36px tall)', (tester) async {
      await tester.pumpMantle(
        const Button.filled(onPressed: _noop, child: Text('Save')),
        theme: BasicTheme(),
      );

      expect(tester.getSize(find.byType(Button)).height, 36);
    });

    testWidgets('disabled uses the disabled fill color', (tester) async {
      await tester.pumpMantle(
        const Button.filled(
          disabled: true,
          onPressed: _noop,
          child: Text('Save'),
        ),
        theme: BasicTheme(),
      );

      final box = tester.widget<DecoratedBox>(
        find.byType(DecoratedBox).first,
      );
      final decoration = box.decoration as BoxDecoration;
      expect(decoration.color, basicColors['gray'][2]);
    });

    testWidgets('loading shows a loader and keeps the label', (tester) async {
      await tester.pumpMantle(
        const Button.filled(
          loading: true,
          onPressed: _noop,
          child: Text('Save'),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Save'), findsOneWidget);
      expect(find.byKey(BasicButtonDelegate.loaderKey), findsOneWidget);
    });

    testWidgets('grow expands to the parent width', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 280,
          child: Button.filled(
            grow: true,
            onPressed: _noop,
            child: Text('Wide'),
          ),
        ),
        theme: BasicTheme(),
      );

      expect(tester.getSize(find.byType(Button)).width, 280);
    });

    testWidgets('onPressed fires when tapped', (tester) async {
      var taps = 0;
      await tester.pumpMantle(
        Button(
          onPressed: () => taps++,
          child: const Text('Save'),
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.text('Save'));
      expect(taps, 1);
    });

    testWidgets('onPressed does not fire when disabled', (tester) async {
      var taps = 0;
      await tester.pumpMantle(
        Button(
          disabled: true,
          onPressed: () => taps++,
          child: const Text('Save'),
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.text('Save'));
      expect(taps, 0);
    });
  });
}
