import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';

void main() {
  group('MantleSpacing', () {
    final spacing = MantleSpacing(const {'sm': 4, 'md': 8, 'lg': 16});

    test('.empty() yields to the other side in mergeWith', () {
      final filled = MantleSpacing(const {'md': 8});
      expect(const MantleSpacing.empty().mergeWith(filled)['md'], equals(8));
    });

    test('.all() builds equal insets', () {
      expect(spacing.all('md'), equals(const EdgeInsets.all(8)));
    });

    test('.only() builds directional insets', () {
      expect(
        spacing.only(top: 'sm', right: 'md', bottom: 'lg', left: 'sm'),
        equals(const EdgeInsets.only(top: 4, right: 8, bottom: 16, left: 4)),
      );
    });

    test('.only() defaults missing sides to 0', () {
      expect(spacing.only(top: 'md'), equals(const EdgeInsets.only(top: 8)));
    });

    test('.symmetric() builds vertical and horizontal insets', () {
      expect(
        spacing.symmetric(vertical: 'sm', horizontal: 'lg'),
        equals(const EdgeInsets.symmetric(vertical: 4, horizontal: 16)),
      );
    });

    test('.lerpWith() interpolates shared tokens', () {
      final a = MantleSpacing(const {'sm': 0, 'md': 10});
      final b = MantleSpacing(const {'sm': 10, 'md': 30});
      final mid = a.lerpWith(b, 0.5);

      expect(mid.all('sm'), equals(const EdgeInsets.all(5)));
      expect(mid.all('md'), equals(const EdgeInsets.all(20)));
    });

    test('.lerpWith() keeps tokens present in only one side', () {
      final a = MantleSpacing(const {'sm': 4});
      final b = MantleSpacing(const {'lg': 16});
      final mid = a.lerpWith(b, 0.5);

      expect(mid.all('sm'), equals(const EdgeInsets.all(4)));
      expect(mid.all('lg'), equals(const EdgeInsets.all(16)));
    });

    test('.mergeWith() prefers this for overlapping keys', () {
      final a = MantleSpacing(const {'sm': 4, 'md': 8});
      final b = MantleSpacing(const {'md': 16, 'lg': 24});
      final merged = a.mergeWith(b);

      expect(merged.all('sm'), equals(const EdgeInsets.all(4)));
      expect(merged.all('md'), equals(const EdgeInsets.all(8)));
      expect(merged.all('lg'), equals(const EdgeInsets.all(24)));
    });

    test('[] returns a raw spacing value', () {
      expect(spacing['md'], equals(8));
    });

    test('.getOrNull() returns null for missing keys', () {
      expect(spacing.getOrNull('md'), equals(8));
      expect(spacing.getOrNull('missing'), isNull);
    });

    test('.resolveRem() scales px-at-remBase values', () {
      final resolved = spacing.resolveRem(
        textScaler: const TextScaler.linear(2),
      );

      expect(resolved['md'], equals(16));
    });

    testWidgets('.fromMedia() uses the ambient text scaler', (tester) async {
      late MantleSpacing resolved;

      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(textScaler: TextScaler.linear(2)),
          child: Builder(
            builder: (context) {
              resolved = spacing.fromMedia(context);
              return const SizedBox.shrink();
            },
          ),
        ),
      );

      expect(resolved['md'], equals(16));
    });
  });
}
