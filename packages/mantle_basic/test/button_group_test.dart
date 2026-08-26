import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

void _noop() {}

void main() {
  group('BasicButtonGroupDelegate', () {
    testWidgets('lays children in a row by default', (tester) async {
      await tester.pumpMantle(
        const ButtonGroup(
          children: [
            Button(onPressed: _noop, child: Text('First')),
            Button(onPressed: _noop, child: Text('Second')),
          ],
        ),
        theme: BasicTheme(),
      );

      final first = tester.getTopLeft(find.text('First'));
      final second = tester.getTopLeft(find.text('Second'));
      expect(second.dx, greaterThan(first.dx));
    });

    testWidgets('lays children in a column when vertical', (tester) async {
      await tester.pumpMantle(
        const ButtonGroup(
          orientation: Axis.vertical,
          children: [
            Button(onPressed: _noop, child: Text('First')),
            Button(onPressed: _noop, child: Text('Second')),
          ],
        ),
        theme: BasicTheme(),
      );

      final first = tester.getTopLeft(find.text('First'));
      final second = tester.getTopLeft(find.text('Second'));
      expect(second.dy, greaterThan(first.dy));
    });
  });
}
