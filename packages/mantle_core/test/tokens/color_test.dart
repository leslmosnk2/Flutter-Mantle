import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';

List<Color> _palette(int seed) => [
  for (var i = 0; i < 10; i++) Color.fromARGB(255, seed, i * 25, 100),
];

void main() {
  group('MantleColor', () {
    test('.fromList() creates a palette of 10 colors', () {
      final colors = _palette(10);
      final palette = MantleColor(colors);

      for (var i = 0; i < 10; i++) {
        expect(palette[i], equals(colors[i]));
      }
    });

    test('.fromList() asserts when length is not 10', () {
      expect(
        () => MantleColor(const [Color(0xFF000000)]),
        throwsA(isA<AssertionError>()),
      );
    });

    test('[] clamps index to [0, 9]', () {
      final palette = MantleColor(_palette(20));

      expect(palette[-1], equals(palette[0]));
      expect(palette[100], equals(palette[9]));
    });

    test('.lerpWith() interpolates each shade', () {
      final a = MantleColor(_palette(0));
      final b = MantleColor(_palette(255));
      final mid = a.lerpWith(b, 0.5);

      for (var i = 0; i < 10; i++) {
        expect(mid[i], equals(Color.lerp(a[i], b[i], 0.5)));
      }
    });
  });
}
