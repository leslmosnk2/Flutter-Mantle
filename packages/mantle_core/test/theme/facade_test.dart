import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_core/testing.dart';

void main() {
  tearDown(() {
    Mantle.detachRoot();
    MantleLog.resetForTest();
  });

  testWidgets('Mantle.theme matches the root provider after mount', (
    tester,
  ) async {
    final theme = testTheme(debugName: 'Root');
    late MantleTheme fromContext;

    await tester.pumpMantle(
      Builder(
        builder: (context) {
          fromContext = MantleTheme.of(context);
          return const SizedBox.shrink();
        },
      ),
      theme: theme,
    );

    expect(Mantle.hasRoot, isTrue);
    expect(identical(Mantle.theme, fromContext), isTrue);
    expect(Mantle.theme.debugName, 'Root');
  });

  testWidgets('Mantle.theme asserts after the root is disposed', (
    tester,
  ) async {
    await tester.pumpMantle(
      const SizedBox.shrink(),
      theme: testTheme(),
    );
    expect(Mantle.hasRoot, isTrue);

    await tester.pumpWidget(const SizedBox.shrink());

    expect(Mantle.hasRoot, isFalse);
    expect(() => Mantle.theme, throwsA(isA<AssertionError>()));
  });

  testWidgets('a new root re-attaches the facade', (tester) async {
    await tester.pumpMantle(
      const SizedBox.shrink(),
      theme: testTheme(debugName: 'First'),
    );
    expect(Mantle.theme.debugName, 'First');

    await tester.pumpMantle(
      const SizedBox.shrink(),
      theme: testTheme(debugName: 'Second'),
    );
    expect(Mantle.theme.debugName, 'Second');
  });
}
