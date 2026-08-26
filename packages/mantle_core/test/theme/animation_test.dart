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

  testWidgets('lerps tokens and snaps delegates at the midpoint', (
    tester,
  ) async {
    final start = testTheme(
      colors: MantleColors({'blue': mantleTestPalette(0)}),
      components: const DelegateRegistry({ToyDelegate: ToyDelegate('start')}),
    );
    final end = testTheme(
      colors: MantleColors({'blue': mantleTestPalette(255)}),
      components: const DelegateRegistry({ToyDelegate: ToyDelegate('end')}),
    );

    late MantleTheme captured;

    Widget host(MantleTheme theme) {
      return MantleProvider(
        theme: theme,
        animation: const AnimationStyle(
          duration: Duration(milliseconds: 200),
        ),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Builder(
            builder: (context) {
              captured = MantleTheme.of(context);
              return const SizedBox.shrink();
            },
          ),
        ),
      );
    }

    await tester.pumpWidget(host(start));
    expect(captured.delegate<ToyDelegate>().id, 'start');

    await tester.pumpWidget(host(end));
    await tester.pump(const Duration(milliseconds: 100));

    expect(
      captured.colors['blue'][0],
      Color.lerp(start.colors['blue'][0], end.colors['blue'][0], 0.5),
    );
    expect(captured.delegate<ToyDelegate>().id, 'end');

    await tester.pump(const Duration(milliseconds: 100));
    expect(captured.colors['blue'][0], end.colors['blue'][0]);
    expect(captured.delegate<ToyDelegate>().id, 'end');
  });
}
