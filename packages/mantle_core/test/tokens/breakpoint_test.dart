import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';

void main() {
  group('MantleBreakpoint', () {
    final breakpoints = MantleBreakpoint(const {
      'sm': 0,
      'md': 600,
      'lg': 1024,
    });

    test('[] returns a breakpoint value', () {
      expect(breakpoints['md'], equals(600));
    });

    testWidgets('.fromContext() picks the largest matching breakpoint', (
      tester,
    ) async {
      late MantleSize resolved;

      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(size: Size(800, 600)),
          child: Builder(
            builder: (context) {
              resolved = breakpoints.fromContext(context);
              return const SizedBox.shrink();
            },
          ),
        ),
      );

      expect(resolved, equals('md'));
    });

    testWidgets('.fromContext() falls back to the smallest breakpoint', (
      tester,
    ) async {
      final positive = MantleBreakpoint(const {'md': 600, 'lg': 1024});
      late MantleSize resolved;

      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(size: Size(320, 600)),
          child: Builder(
            builder: (context) {
              resolved = positive.fromContext(context);
              return const SizedBox.shrink();
            },
          ),
        ),
      );

      expect(resolved, equals('md'));
    });

    test('.lerpWith() interpolates shared tokens', () {
      final a = MantleBreakpoint(const {'md': 500, 'lg': 900});
      final b = MantleBreakpoint(const {'md': 700, 'lg': 1100});
      final mid = a.lerpWith(b, 0.5);

      expect(mid['md'], equals(600));
      expect(mid['lg'], equals(1000));
    });

    test('.lerpWith() keeps tokens present in only one side', () {
      final a = MantleBreakpoint(const {'sm': 0});
      final b = MantleBreakpoint(const {'lg': 1024});
      final mid = a.lerpWith(b, 0.5);

      expect(mid['sm'], equals(0));
      expect(mid['lg'], equals(1024));
    });

    test('.mergeWith() prefers this for overlapping keys', () {
      final a = MantleBreakpoint(const {'sm': 0, 'md': 600});
      final b = MantleBreakpoint(const {'md': 700, 'lg': 1024});
      final merged = a.mergeWith(b);

      expect(merged['sm'], equals(0));
      expect(merged['md'], equals(600));
      expect(merged['lg'], equals(1024));
    });
  });
}
