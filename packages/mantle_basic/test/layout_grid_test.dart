import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart' as m;

void main() {
  group('SimpleGrid', () {
    testWidgets('places two columns side by side', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 216,
          height: 80,
          child: m.SimpleGrid(
            cols: 2,
            spacing: 'md',
            children: [
              SizedBox(key: Key('a'), height: 20),
              SizedBox(key: Key('b'), height: 20),
            ],
          ),
        ),
        theme: BasicTheme(),
      );

      final a = tester.getRect(find.byKey(const Key('a')));
      final b = tester.getRect(find.byKey(const Key('b')));
      expect(a.width, closeTo(100, 0.5));
      expect(b.left, closeTo(a.right + 16, 0.5));
    });
  });

  group('Grid', () {
    testWidgets('span 6 occupies half the row', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 240,
          height: 80,
          child: m.Grid(
            gutter: 'md',
            children: [
              m.GridCol(
                span: 6,
                child: SizedBox(key: Key('a'), height: 20),
              ),
              m.GridCol(
                span: 6,
                child: SizedBox(key: Key('b'), height: 20),
              ),
            ],
          ),
        ),
        theme: BasicTheme(),
      );

      final a = tester.getRect(find.byKey(const Key('a')));
      final b = tester.getRect(find.byKey(const Key('b')));
      expect(b.left, greaterThan(a.right));
      expect(a.width, closeTo(b.width, 1));
    });
  });
}
