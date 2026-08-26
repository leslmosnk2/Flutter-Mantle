import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart' as m;

void main() {
  group('MStack', () {
    testWidgets('lays children out vertically with a gap', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 200,
          height: 200,
          child: m.MStack(
            gap: 'md',
            children: [
              SizedBox(key: Key('a'), height: 10, width: 10),
              SizedBox(key: Key('b'), height: 10, width: 10),
            ],
          ),
        ),
        theme: BasicTheme(),
      );

      final a = tester.getRect(find.byKey(const Key('a')));
      final b = tester.getRect(find.byKey(const Key('b')));
      expect(b.top, closeTo(a.bottom + 16, 0.5));
    });
  });

  group('Group', () {
    testWidgets('lays children out horizontally', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 400,
          height: 40,
          child: m.Group(
            wrap: false,
            gap: 'md',
            children: [
              SizedBox(key: Key('a'), height: 10, width: 10),
              SizedBox(key: Key('b'), height: 10, width: 10),
            ],
          ),
        ),
        theme: BasicTheme(),
      );

      final a = tester.getRect(find.byKey(const Key('a')));
      final b = tester.getRect(find.byKey(const Key('b')));
      expect(b.left, closeTo(a.right + 16, 0.5));
    });
  });

  group('MFlex', () {
    testWidgets('uses a column when direction is vertical', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 200,
          height: 200,
          child: m.MFlex(
            direction: Axis.vertical,
            gap: 'sm',
            children: [
              SizedBox(key: Key('a'), height: 10, width: 10),
              SizedBox(key: Key('b'), height: 10, width: 10),
            ],
          ),
        ),
        theme: BasicTheme(),
      );

      final a = tester.getRect(find.byKey(const Key('a')));
      final b = tester.getRect(find.byKey(const Key('b')));
      expect(b.top, closeTo(a.bottom + 12, 0.5));
    });
  });
}
