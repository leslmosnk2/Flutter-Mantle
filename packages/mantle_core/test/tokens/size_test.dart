import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';

void main() {
  group('MantleSizes', () {
    test('[] returns a known size token', () {
      const sizes = MantleSizes({'sm', 'md', 'lg'});

      expect(sizes['md'], equals('md'));
    });

    test('[] throws when size is missing', () {
      const sizes = MantleSizes({'sm'});

      expect(
        () => sizes['xl'],
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            'No size named "xl"',
          ),
        ),
      );
    });

    test('.createScale() builds a scale from known sizes', () {
      const sizes = MantleSizes({'sm', 'md'});
      final scale = sizes.createScale<double>({'sm': 4, 'md': 8});

      expect(scale['sm'], equals(4));
      expect(scale['md'], equals(8));
    });

    test('.createScale() asserts when keys are unknown', () {
      const sizes = MantleSizes({'sm'});

      expect(
        () => sizes.createScale<double>({'sm': 4, 'md': 8}),
        throwsA(isA<AssertionError>()),
      );
    });
  });
}
