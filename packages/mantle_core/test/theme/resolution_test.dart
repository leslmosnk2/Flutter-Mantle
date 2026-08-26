import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_core/testing.dart';

import '../helpers.dart';

void main() {
  tearDown(() {
    Mantle.detachRoot();
    MantleLog.resetForTest();
  });

  testWidgets('inner > outer > baseline for the same contract', (tester) async {
    final baseline = testTheme(
      debugName: 'Baseline',
      components: const DelegateRegistry({ToyDelegate: ToyDelegate('base')}),
    );
    final outer = testTheme(debugName: 'Outer');
    const inner = MantleTheme(
      components: DelegateRegistry({ToyDelegate: ToyDelegate('inner')}),
    );

    late String id;
    await tester.pumpWidget(
      MantleProvider(
        theme: outer,
        baseline: baseline,
        child: MantleProvider(
          theme: inner,
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Builder(
              builder: (context) {
                id = MantleTheme.of(context).delegate<ToyDelegate>().id;
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      ),
    );

    expect(id, 'inner');
  });

  testWidgets('baseline is used and warns once per pair', (tester) async {
    final records = MantleLog.capture();
    final baseline = testTheme(
      debugName: 'Baseline',
      components: const DelegateRegistry({ToyDelegate: ToyDelegate('base')}),
    );
    final theme = testTheme(debugName: 'Partial');

    late String first;
    late String second;
    await tester.pumpMantle(
      Builder(
        builder: (context) {
          final resolved = MantleTheme.of(context);
          first = resolved.delegate<ToyDelegate>().id;
          second = resolved.delegate<ToyDelegate>().id;
          return const SizedBox.shrink();
        },
      ),
      theme: theme,
      baseline: baseline,
    );

    expect(first, 'base');
    expect(second, 'base');
    expect(records, hasLength(1));
    expect(records.single.delegate, ToyDelegate);
    expect(records.single.theme, 'Partial');
  });

  testWidgets('FallbackPolicy.throwing fails on baseline use', (tester) async {
    MantleLog.fallbackPolicy = FallbackPolicy.throwing;
    final baseline = testTheme(
      debugName: 'Baseline',
      components: const DelegateRegistry({ToyDelegate: ToyDelegate('base')}),
    );

    await tester.pumpMantle(
      Builder(
        builder: (context) {
          expect(
            () => MantleTheme.of(context).delegate<ToyDelegate>(),
            throwsA(isA<MissingDelegateError>()),
          );
          return const SizedBox.shrink();
        },
      ),
      theme: testTheme(debugName: 'Partial'),
      baseline: baseline,
    );
  });

  testWidgets('MissingDelegateError mentions a null baseline', (tester) async {
    await tester.pumpMantle(
      Builder(
        builder: (context) {
          expect(
            () => MantleTheme.of(context).delegate<ToyDelegate>(),
            throwsA(
              isA<MissingDelegateError>().having(
                (e) => e.message,
                'message',
                contains('Baseline: none (MantleProvider.baseline was null)'),
              ),
            ),
          );
          return const SizedBox.shrink();
        },
      ),
      theme: testTheme(debugName: 'Solo'),
    );
  });
}
