import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';

void main() {
  group('MantleSizeScale', () {
    test('tokens returns the size keys', () {
      const scale = MantleSizeScale<double>({'sm': 4, 'md': 8});

      expect(scale.tokens, equals({'sm', 'md'}));
    });

    test('[] returns the value for a key', () {
      const scale = MantleSizeScale<double>({'sm': 4});

      expect(scale['sm'], equals(4));
    });

    test('[] throws when key is missing', () {
      const scale = MantleSizeScale<double>({});

      expect(
        () => scale['missing'],
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            'No size named "missing"',
          ),
        ),
      );
    });

    test('.getOrNull() returns null for missing keys', () {
      const scale = MantleSizeScale<double>({'sm': 4});

      expect(scale.getOrNull('sm'), equals(4));
      expect(scale.getOrNull('missing'), isNull);
    });

    test('.merge() prefers this for overlapping keys', () {
      const a = MantleSizeScale<double>({'sm': 4, 'md': 8});
      const b = MantleSizeScale<double>({'md': 16, 'lg': 24});
      final merged = a.merge(b);

      expect(merged['sm'], equals(4));
      expect(merged['md'], equals(8));
      expect(merged['lg'], equals(24));
    });

    test('.map() transforms every value', () {
      const scale = MantleSizeScale<double>({'sm': 4, 'md': 8});
      final doubled = scale.map((value) => value * 2);

      expect(doubled['sm'], equals(8));
      expect(doubled['md'], equals(16));
    });
  });

  group('MantleSizeScaleRem', () {
    test('.resolveRem() scales px-at-remBase with a linear scaler', () {
      const scale = MantleSizeScale<double>({'sm': 16, 'md': 32});
      final resolved = scale.resolveRem(textScaler: const TextScaler.linear(2));

      expect(resolved['sm'], equals(32));
      expect(resolved['md'], equals(64));
    });

    test('.resolveRem() honors a custom remBase', () {
      const scale = MantleSizeScale<double>({'md': 20});
      final resolved = scale.resolveRem(
        textScaler: const TextScaler.linear(2),
        remBase: 10,
      );

      expect(resolved['md'], equals(40));
    });

    testWidgets('.fromMedia() uses the ambient text scaler', (tester) async {
      const scale = MantleSizeScale<double>({'md': 16});
      late MantleSizeScale<double> resolved;

      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(textScaler: TextScaler.linear(1.5)),
          child: Builder(
            builder: (context) {
              resolved = scale.fromMedia(context);
              return const SizedBox.shrink();
            },
          ),
        ),
      );

      expect(resolved['md'], equals(24));
    });
  });

  group('MantleSizeScaleLerper', () {
    test('.lerp() interpolates shared tokens', () {
      const a = MantleSizeScale<double>({'sm': 0, 'md': 10});
      const b = MantleSizeScale<double>({'sm': 10, 'md': 30});
      final mid = a.lerp(b, 0.5);

      expect(mid['sm'], equals(5));
      expect(mid['md'], equals(20));
    });

    test('.lerp() keeps tokens present in only one side', () {
      const a = MantleSizeScale<double>({'sm': 4});
      const b = MantleSizeScale<double>({'lg': 24});
      final mid = a.lerp(b, 0.5);

      expect(mid['sm'], equals(4));
      expect(mid['lg'], equals(24));
    });
  });
}
