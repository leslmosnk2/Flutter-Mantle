import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_core/testing.dart';

class _Capture {
  double? size;
  Color? color;

  Widget builder({
    double size = 0,
    Color color = const Color(0x00000000),
  }) {
    this.size = size;
    this.color = color;
    return const SizedBox.shrink();
  }
}

void main() {
  tearDown(() {
    Mantle.detachRoot();
    MantleLog.resetForTest();
  });

  group('MantleIcon', () {
    testWidgets('passes explicit size and color to the builder', (
      tester,
    ) async {
      final capture = _Capture();

      await tester.pumpMantle(
        MantleIcon(
          icon: capture.builder,
          size: 18,
          color: const Color(0xFF00FF00),
        ),
        theme: testTheme(),
      );

      expect(capture.size, 18);
      expect(capture.color, const Color(0xFF00FF00));
    });

    testWidgets('reads size and color from IconTheme', (tester) async {
      final capture = _Capture();

      await tester.pumpMantle(
        IconTheme(
          data: const IconThemeData(size: 20, color: Color(0xFF0000FF)),
          child: MantleIcon(icon: capture.builder),
        ),
        theme: testTheme(),
      );

      expect(capture.size, 20);
      expect(capture.color, const Color(0xFF0000FF));
    });

    testWidgets('widget props override IconTheme', (tester) async {
      final capture = _Capture();

      await tester.pumpMantle(
        IconTheme(
          data: const IconThemeData(size: 20, color: Color(0xFF0000FF)),
          child: MantleIcon(
            icon: capture.builder,
            size: 12,
            color: const Color(0xFFFF0000),
          ),
        ),
        theme: testTheme(),
      );

      expect(capture.size, 12);
      expect(capture.color, const Color(0xFFFF0000));
    });

    testWidgets('falls back to MantleTheme black in light scheme', (
      tester,
    ) async {
      final capture = _Capture();

      await tester.pumpMantle(
        MantleIcon(icon: capture.builder),
        theme: testTheme(),
      );

      expect(capture.size, MantleIcon.fallbackSize);
      expect(capture.color, testTheme().black);
    });

    testWidgets('falls back to MantleTheme white in dark scheme', (
      tester,
    ) async {
      final capture = _Capture();

      await tester.pumpMantle(
        MantleIcon(icon: capture.builder),
        theme: testTheme(),
        forceColorScheme: MantleColorScheme.dark,
      );

      expect(capture.color, testTheme().white);
    });

    testWidgets('applies IconTheme opacity to the resolved color', (
      tester,
    ) async {
      final capture = _Capture();

      await tester.pumpMantle(
        IconTheme(
          data: const IconThemeData(
            color: Color(0xFF0000FF),
            opacity: 0.5,
          ),
          child: MantleIcon(icon: capture.builder),
        ),
        theme: testTheme(),
      );

      expect(capture.color!.a, closeTo(0.5, 0.01));
      expect(capture.color!.r, const Color(0xFF0000FF).r);
    });
  });
}
