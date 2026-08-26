import 'package:flutter/painting.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_core/testing.dart';

import '../helpers.dart';

void main() {
  group('MantleTheme', () {
    test('resolves primary color and shade from keys', () {
      final theme = testTheme(
        primaryColor: 'red',
        primaryShade: const MantleShade(light: 4, dark: 9),
      );

      expect(theme.primaryColor, 'red');
      expect(theme.primary[0], theme.colors['red'][0]);
      expect(
        theme.primaryShadeColor(),
        theme.colors['red'][4],
      );
      expect(
        theme.primaryShadeColor(MantleColorScheme.dark),
        theme.colors['red'][9],
      );
    });

    test('resolves defaultRadius through the radius scale', () {
      final theme = testTheme(defaultRadius: 'sm');

      expect(theme.defaultRadius, 'sm');
      expect(theme.resolvedDefaultRadius, const Radius.circular(4));
    });

    test('resolves defaultGradient against colors', () {
      final theme = testTheme(
        defaultGradient: const MantleGradient(
          from: 'blue',
          to: 'red',
          fromShade: 2,
          toShade: 8,
        ),
      );
      final gradient = theme.resolvedDefaultGradient as LinearGradient;

      expect(gradient.colors.first, theme.colors['blue'][2]);
      expect(gradient.colors.last, theme.colors['red'][8]);
    });

    test('copyWith replaces selected fields', () {
      final theme = testTheme(debugName: 'A', primaryColor: 'blue');
      final copy = theme.copyWith(debugName: 'B', primaryColor: 'red');

      expect(copy.debugName, 'B');
      expect(copy.primaryColor, 'red');
      expect(identical(copy.colors, theme.colors), isTrue);
    });

    test('mergeWith lets this win and fills gaps from other', () {
      final a = testTheme(
        colors: MantleColors({
          'blue': mantleTestPalette(0),
          'shared': mantleTestPalette(10),
        }),
        primaryColor: 'blue',
      );
      final b = testTheme(
        colors: MantleColors({
          'shared': mantleTestPalette(200),
          'red': mantleTestPalette(255),
        }),
        primaryColor: 'red',
      );

      final merged = a.mergeWith(b);

      expect(merged.colors['blue'][0], a.colors['blue'][0]);
      expect(merged.colors['shared'][0], a.colors['shared'][0]);
      expect(merged.colors['red'][0], b.colors['red'][0]);
      expect(merged.primaryColor, 'blue');
    });

    test('overriddenBy lets the inner theme win', () {
      final outer = testTheme(primaryColor: 'blue', debugName: 'outer');
      final inner = MantleTheme(
        colors: MantleColors({'blue': mantleTestPalette(0)}),
        primaryColor: 'blue',
        debugName: 'inner',
      );

      final effective = outer.overriddenBy(inner);

      expect(effective.debugName, 'inner');
      expect(effective.primaryColor, 'blue');
    });

    test('lerpWith interpolates tokens and snaps the registry at 0.5', () {
      final a = testTheme(
        colors: MantleColors({'blue': mantleTestPalette(0)}),
        components: const DelegateRegistry({ToyDelegate: ToyDelegate('a')}),
      );
      final b = testTheme(
        colors: MantleColors({'blue': mantleTestPalette(255)}),
        components: const DelegateRegistry({ToyDelegate: ToyDelegate('b')}),
      );

      final before = a.lerpWith(b, 0.49);
      final mid = a.lerpWith(b, 0.5);

      expect(
        before.colors['blue'][0],
        Color.lerp(a.colors['blue'][0], b.colors['blue'][0], 0.49),
      );
      expect(before.delegate<ToyDelegate>().id, 'a');
      expect(mid.delegate<ToyDelegate>().id, 'b');
    });

    test('delegate throws MissingDelegateError without a baseline', () {
      final theme = testTheme(debugName: 'Solo');

      expect(
        () => theme.delegate<ToyDelegate>(),
        throwsA(
          isA<MissingDelegateError>()
              .having((e) => e.themeName, 'themeName', 'Solo')
              .having(
                (e) => e.message,
                'message',
                contains('Baseline: none (MantleProvider.baseline was null)'),
              ),
        ),
      );
    });

    test('Mantine scalar defaults', () {
      const theme = MantleTheme();

      expect(theme.focusRing, MantleFocusRing.auto);
      expect(theme.scale, 1);
      expect(theme.white, const Color(0xFFFFFFFF));
      expect(theme.black, const Color(0xFF000000));
      expect(theme.autoContrast, isFalse);
      expect(theme.luminanceThreshold, 0.3);
      expect(theme.respectReducedMotion, isFalse);
      expect(theme.cursorType, MantleCursorType.system);
    });

    test('variantColorResolver filled uses primary shade', () {
      final theme = testTheme();
      final colors = theme.variantColorResolver(
        VariantColorsInput(
          theme: theme,
          variant: 'filled',
          colorScheme: MantleColorScheme.light,
        ),
      );

      expect(colors.background, theme.primary[6]);
      expect(colors.color, theme.white);
    });
  });
}
