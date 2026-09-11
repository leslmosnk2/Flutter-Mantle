import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';

void main() {
  group('MantleEm', () {
    testWidgets('1.emOf uses DefaultTextStyle font size', (tester) async {
      late double em;

      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(),
          child: DefaultTextStyle(
            style: const TextStyle(fontSize: 20),
            child: Builder(
              builder: (context) {
                em = 1.emOf(context);
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      );

      expect(em, equals(20));
    });

    testWidgets('emOf applies the text scaler', (tester) async {
      late double em;

      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(textScaler: TextScaler.linear(2)),
          child: DefaultTextStyle(
            style: const TextStyle(fontSize: 16),
            child: Builder(
              builder: (context) {
                em = 0.5.emOf(context);
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      );

      expect(em, equals(16));
    });

    testWidgets('emOf defaults to 16 without DefaultTextStyle', (tester) async {
      late double em;

      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(),
          child: Builder(
            builder: (context) {
              em = 1.emOf(context);
              return const SizedBox.shrink();
            },
          ),
        ),
      );

      expect(em, equals(16));
    });
  });
}
