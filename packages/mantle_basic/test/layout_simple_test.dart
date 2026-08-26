import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart' as m;

void main() {
  group('Space', () {
    testWidgets('uses height from a spacing token', (tester) async {
      await tester.pumpMantle(
        const m.Space(h: 'md'),
        theme: BasicTheme(),
      );

      expect(tester.getSize(find.byType(m.Space)).height, 16);
    });

    testWidgets('explicit pixels win over tokens', (tester) async {
      await tester.pumpMantle(
        const m.Space(width: 40, w: 'md'),
        theme: BasicTheme(),
      );

      expect(tester.getSize(find.byType(m.Space)).width, 40);
    });
  });

  group('MCenter', () {
    testWidgets('centers its child', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 200,
          height: 100,
          child: m.MCenter(
            child: SizedBox(width: 20, height: 20, key: Key('child')),
          ),
        ),
        theme: BasicTheme(),
      );

      final parent = tester.getRect(find.byType(m.MCenter));
      final child = tester.getRect(find.byKey(const Key('child')));
      expect(child.center.dx, closeTo(parent.center.dx, 0.5));
      expect(child.center.dy, closeTo(parent.center.dy, 0.5));
    });
  });

  group('MAspectRatio', () {
    testWidgets('locks the child to 16/9', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 160,
          child: m.MAspectRatio(
            ratio: 16 / 9,
            child: ColoredBox(color: Color(0xFF000000)),
          ),
        ),
        theme: BasicTheme(),
      );

      expect(
        tester.getSize(find.byType(m.MAspectRatio)).height,
        closeTo(90, 0.5),
      );
    });
  });

  group('MContainer', () {
    testWidgets('caps width at the md size', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 1400,
          child: m.MContainer(child: Text('body')),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('body'), findsOneWidget);
      expect(tester.getSize(find.text('body')).width, lessThan(960));
    });
  });
}
