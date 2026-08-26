import 'package:flutter/painting.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';

void main() {
  group('MantleRadius', () {
    final radius = MantleRadius(const {'sm': 4, 'md': 8, 'lg': 16});

    test('.border() builds a circular BorderRadius', () {
      expect(radius.border('md'), equals(BorderRadius.circular(8)));
    });

    test('.circular() builds a Radius', () {
      expect(radius.circular('sm'), equals(const Radius.circular(4)));
    });

    test('.elliptical() builds an elliptical Radius', () {
      expect(
        radius.elliptical('sm', 'lg'),
        equals(const Radius.elliptical(4, 16)),
      );
    });

    test('.lerpWith() interpolates shared tokens', () {
      final a = MantleRadius(const {'sm': 0, 'md': 10});
      final b = MantleRadius(const {'sm': 10, 'md': 30});
      final mid = a.lerpWith(b, 0.5);

      expect(mid.circular('sm'), equals(const Radius.circular(5)));
      expect(mid.circular('md'), equals(const Radius.circular(20)));
    });

    test('.lerpWith() keeps tokens present in only one side', () {
      final a = MantleRadius(const {'sm': 4});
      final b = MantleRadius(const {'lg': 16});
      final mid = a.lerpWith(b, 0.5);

      expect(mid.circular('sm'), equals(const Radius.circular(4)));
      expect(mid.circular('lg'), equals(const Radius.circular(16)));
    });

    test('.mergeWith() prefers this for overlapping keys', () {
      final a = MantleRadius(const {'sm': 4, 'md': 8});
      final b = MantleRadius(const {'md': 16, 'lg': 24});
      final merged = a.mergeWith(b);

      expect(merged.circular('sm'), equals(const Radius.circular(4)));
      expect(merged.circular('md'), equals(const Radius.circular(8)));
      expect(merged.circular('lg'), equals(const Radius.circular(24)));
    });
  });
}
