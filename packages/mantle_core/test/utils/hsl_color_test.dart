import 'dart:ui';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/src/utils/hsl_color.dart';

void main() {
  group('MantleHslColor', () {
    test('.fromHSLA()', () {
      final hsla = MantleHslColor.fromHSLA(
        hue: 100,
        saturation: 0.2,
        lightness: 0.3,
        alpha: 0.4,
      );
      expect(hsla.hue, equals(100));
      expect(hsla.saturation, equals(0.2));
      expect(hsla.lightness, equals(0.3));
      expect(hsla.alpha, equals(0.4));
    });

    test('.fromColor()', () {
      const color = Color(0xFF9926d3);
      final hsla = MantleHslColor.fromColor(color);
      expect(hsla.hue, moreOrLessEquals(280, epsilon: 1));
      expect(hsla.saturation, moreOrLessEquals(0.69, epsilon: 0.01));
      expect(hsla.lightness, moreOrLessEquals(0.49, epsilon: 0.01));
      expect(hsla.alpha, equals(1.0));
    });

    test('.toColor()', () {
      final hsla = MantleHslColor.fromHSLA(
        hue: 280,
        saturation: 0.69,
        lightness: 0.49,
        alpha: 1,
      );
      final color = hsla.toColor();
      expect(color.a, equals(1.0));
      expect(color.r, moreOrLessEquals(154 / 255, epsilon: 0.01));
      expect(color.g, moreOrLessEquals(39 / 255, epsilon: 0.01));
      expect(color.b, moreOrLessEquals(211 / 255, epsilon: 0.01));
    });

    test('.copyWith()', () {
      final hsla = MantleHslColor.fromHSLA(
        hue: 100,
        saturation: 0.2,
        lightness: 0.3,
        alpha: 0.4,
      );
      final hsla2 = hsla.copyWith(
        hue: 200,
        saturation: 0.5,
        lightness: 0.6,
        alpha: 0.7,
      );
      expect(hsla2.hue, equals(200));
      expect(hsla2.saturation, equals(0.5));
      expect(hsla2.lightness, equals(0.6));
      expect(hsla2.alpha, equals(0.7));
    });
  });

  group('MantleHslColorExtension', () {
    test('toHslColor', () {
      const color = Color(0xFF9926d3);
      final hsla = color.toHslColor();
      expect(hsla.hue, moreOrLessEquals(280, epsilon: 1));
      expect(hsla.saturation, moreOrLessEquals(0.69, epsilon: 0.01));
      expect(hsla.lightness, moreOrLessEquals(0.49, epsilon: 0.01));
      expect(hsla.alpha, equals(1.0));
    });
  });
}
