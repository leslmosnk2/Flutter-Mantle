import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';

void main() {
  group('MantleShadow', () {
    const soft = BoxShadow(
      color: Color(0x33000000),
      blurRadius: 4,
      offset: Offset(0, 2),
    );
    const hard = BoxShadow(
      color: Color(0x66000000),
      blurRadius: 12,
      offset: Offset(0, 8),
    );

    test('[] returns shadows for a size', () {
      final shadows = MantleShadow({
        'sm': const [soft],
        'lg': const [hard],
      });

      expect(shadows['sm'], equals(const [soft]));
      expect(shadows['lg'], equals(const [hard]));
    });

    test('.lerpWith() interpolates matching shadows', () {
      final a = MantleShadow({
        'md': const [soft],
      });
      final b = MantleShadow({
        'md': const [hard],
      });
      final mid = a.lerpWith(b, 0.5);

      expect(mid['md'], equals([BoxShadow.lerp(soft, hard, 0.5)]));
    });

    test('.lerpWith() handles unequal shadow list lengths', () {
      final a = MantleShadow({
        'md': const [soft],
      });
      final b = MantleShadow({
        'md': const [soft, hard],
      });
      final mid = a.lerpWith(b, 0.5);

      expect(mid['md'].length, equals(2));
      expect(mid['md'][0], equals(BoxShadow.lerp(soft, soft, 0.5)));
      expect(mid['md'][1], equals(BoxShadow.lerp(null, hard, 0.5)));
    });

    test('.lerpWith() keeps tokens present in only one side', () {
      final a = MantleShadow({
        'sm': const [soft],
      });
      final b = MantleShadow({
        'lg': const [hard],
      });
      final mid = a.lerpWith(b, 0.5);

      expect(mid['sm'], equals(const [soft]));
      expect(mid['lg'], equals(const [hard]));
    });

    test('.mergeWith() prefers this for overlapping keys', () {
      final a = MantleShadow({
        'sm': const [soft],
        'md': const [soft],
      });
      final b = MantleShadow({
        'md': const [hard],
        'lg': const [hard],
      });
      final merged = a.mergeWith(b);

      expect(merged['sm'], equals(const [soft]));
      expect(merged['md'], equals(const [soft]));
      expect(merged['lg'], equals(const [hard]));
    });
  });
}
