import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

void main() {
  group('BasicFileButtonDelegate', () {
    testWidgets('injects onPressed into the builder', (tester) async {
      var taps = 0;
      await tester.pumpMantle(
        FileButton(
          onPressed: () => taps++,
          builder: (onPressed) => UnstyledButton(
            onPressed: onPressed,
            child: const Text('Upload'),
          ),
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.text('Upload'));
      expect(taps, 1);
    });

    testWidgets('injected onPressed is a no-op when disabled', (tester) async {
      var taps = 0;
      await tester.pumpMantle(
        FileButton(
          disabled: true,
          onPressed: () => taps++,
          builder: (onPressed) => UnstyledButton(
            onPressed: onPressed,
            child: const Text('Upload'),
          ),
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.text('Upload'));
      expect(taps, 0);
    });
  });
}
