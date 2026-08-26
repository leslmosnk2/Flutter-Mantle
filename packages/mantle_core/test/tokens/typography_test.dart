import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';

MantleTypography _typography({
  String fontFamily = 'Sans',
  String fontFamilyMono = 'Mono',
  double fontSize = 14,
  double lineHeight = 1.4,
}) {
  return MantleTypography(
    fontFamily: fontFamily,
    fontFamilyMono: fontFamilyMono,
    fontSize: MantleSizeScale({'md': fontSize}),
    headings: MantleHeadings(
      h1: TextStyle(fontSize: fontSize + 10),
      h2: TextStyle(fontSize: fontSize + 8),
      h3: TextStyle(fontSize: fontSize + 6),
      h4: TextStyle(fontSize: fontSize + 4),
      h5: TextStyle(fontSize: fontSize + 2),
      h6: TextStyle(fontSize: fontSize),
    ),
    body: TextStyle(fontSize: fontSize),
    label: TextStyle(fontSize: fontSize - 2),
    lineHeight: MantleSizeScale({'md': lineHeight}),
  );
}

void main() {
  group('MantleTypography', () {
    test('.lerpWith() snaps non-numeric fields below and at 0.5', () {
      final a = _typography(fontFamily: 'A', fontSize: 10, lineHeight: 1);
      final b = _typography(fontFamily: 'B', fontSize: 20, lineHeight: 2);

      final before = a.lerpWith(b, 0.49);
      final after = a.lerpWith(b, 0.5);

      expect(before.fontFamily, equals('A'));
      expect(after.fontFamily, equals('B'));
      expect(before.fontSize['md'], closeTo(14.9, 0.001));
      expect(after.fontSize['md'], closeTo(15, 0.001));
      expect(before.lineHeight['md'], closeTo(1.49, 0.001));
      expect(after.lineHeight['md'], closeTo(1.5, 0.001));
    });

    test('.mergeWith() keeps this styles and merges scales', () {
      const a = MantleTypography(
        fontFamily: 'A',
        fontFamilyMono: 'AMono',
        fontSize: MantleSizeScale({'sm': 12, 'md': 14}),
        headings: MantleHeadings(
          h1: TextStyle(fontSize: 32),
          h2: TextStyle(fontSize: 28),
          h3: TextStyle(fontSize: 24),
          h4: TextStyle(fontSize: 20),
          h5: TextStyle(fontSize: 16),
          h6: TextStyle(fontSize: 14),
        ),
        body: TextStyle(fontSize: 14),
        label: TextStyle(fontSize: 12),
        lineHeight: MantleSizeScale({'sm': 1.2, 'md': 1.4}),
      );
      const b = MantleTypography(
        fontFamily: 'B',
        fontFamilyMono: 'BMono',
        fontSize: MantleSizeScale({'md': 18, 'lg': 20}),
        headings: MantleHeadings(
          h1: TextStyle(fontSize: 40),
          h2: TextStyle(fontSize: 36),
          h3: TextStyle(fontSize: 32),
          h4: TextStyle(fontSize: 28),
          h5: TextStyle(fontSize: 24),
          h6: TextStyle(fontSize: 20),
        ),
        body: TextStyle(fontSize: 16),
        label: TextStyle(fontSize: 14),
        lineHeight: MantleSizeScale({'md': 1.6, 'lg': 1.8}),
      );

      final merged = a.mergeWith(b);

      expect(merged.fontFamily, equals('A'));
      expect(merged.fontFamilyMono, equals('AMono'));
      expect(merged.body.fontSize, equals(14));
      expect(merged.label.fontSize, equals(12));
      expect(merged.headings.h1.fontSize, equals(32));
      expect(merged.headings.h6.fontSize, equals(14));
      expect(merged.fontSize['sm'], equals(12));
      expect(merged.fontSize['md'], equals(14));
      expect(merged.fontSize['lg'], equals(20));
      expect(merged.lineHeight['sm'], equals(1.2));
      expect(merged.lineHeight['md'], equals(1.4));
      expect(merged.lineHeight['lg'], equals(1.8));
    });
  });

  group('MantleHeadings', () {
    const a = MantleHeadings(
      h1: TextStyle(fontSize: 32),
      h2: TextStyle(fontSize: 28),
      h3: TextStyle(fontSize: 24),
      h4: TextStyle(fontSize: 20),
      h5: TextStyle(fontSize: 16),
      h6: TextStyle(fontSize: 14),
    );
    const b = MantleHeadings(
      h1: TextStyle(fontSize: 40),
      h2: TextStyle(fontSize: 36),
      h3: TextStyle(fontSize: 32),
      h4: TextStyle(fontSize: 28),
      h5: TextStyle(fontSize: 24),
      h6: TextStyle(fontSize: 20),
    );

    test('.lerpWith() interpolates each heading style', () {
      final mid = a.lerpWith(b, 0.5);

      expect(mid.h1, equals(TextStyle.lerp(a.h1, b.h1, 0.5)));
      expect(mid.h2, equals(TextStyle.lerp(a.h2, b.h2, 0.5)));
      expect(mid.h3, equals(TextStyle.lerp(a.h3, b.h3, 0.5)));
      expect(mid.h4, equals(TextStyle.lerp(a.h4, b.h4, 0.5)));
      expect(mid.h5, equals(TextStyle.lerp(a.h5, b.h5, 0.5)));
      expect(mid.h6, equals(TextStyle.lerp(a.h6, b.h6, 0.5)));
    });

    test('.mergeWith() keeps this heading sizes', () {
      expect(a.mergeWith(b).h1.fontSize, equals(32));
      expect(a.mergeWith(b).h6.fontSize, equals(14));
    });
  });
}
