import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';

MantleColor _palette(int seed) => MantleColor([
  for (var i = 0; i < 10; i++) Color.fromARGB(255, seed, i * 25, 100),
]);

void main() {
  group('MantleColors', () {
    test('[] returns a named palette', () {
      final colors = MantleColors({'primary': _palette(10)});

      expect(
        colors['primary'][0],
        equals(const Color.fromARGB(255, 10, 0, 100)),
      );
    });

    test('[] throws when palette is missing', () {
      const colors = MantleColors({});

      expect(
        () => colors['missing'],
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            'No palette named "missing"',
          ),
        ),
      );
    });

    test('.lerpWith() interpolates shared palettes', () {
      final a = MantleColors({'primary': _palette(0)});
      final b = MantleColors({'primary': _palette(255)});
      final mid = a.lerpWith(b, 0.5);

      expect(
        mid['primary'][0],
        equals(Color.lerp(a['primary'][0], b['primary'][0], 0.5)),
      );
    });

    test('.lerpWith() keeps tokens present in only one side', () {
      final a = MantleColors({'primary': _palette(0)});
      final b = MantleColors({'secondary': _palette(255)});
      final mid = a.lerpWith(b, 0.5);

      expect(mid['primary'][0], equals(a['primary'][0]));
      expect(mid['secondary'][0], equals(b['secondary'][0]));
    });

    test('.mergeWith() prefers this for overlapping keys', () {
      final a = MantleColors({
        'primary': _palette(0),
        'shared': _palette(10),
      });
      final b = MantleColors({
        'shared': _palette(200),
        'secondary': _palette(255),
      });
      final merged = a.mergeWith(b);

      expect(merged['primary'][0], equals(a['primary'][0]));
      expect(merged['shared'][0], equals(a['shared'][0]));
      expect(merged['secondary'][0], equals(b['secondary'][0]));
    });
  });
}
