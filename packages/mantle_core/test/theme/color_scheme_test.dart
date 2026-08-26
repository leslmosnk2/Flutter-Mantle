import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_core/testing.dart';

void main() {
  tearDown(() {
    Mantle.detachRoot();
    MantleLog.resetForTest();
  });

  testWidgets('defaults to light', (tester) async {
    late MantleColorScheme scheme;
    await tester.pumpMantle(
      Builder(
        builder: (context) {
          scheme = MantleProvider.colorSchemeOf(context);
          return const SizedBox.shrink();
        },
      ),
      theme: testTheme(),
    );

    expect(scheme, MantleColorScheme.light);
  });

  testWidgets('forceColorScheme wins over default', (tester) async {
    late MantleColorScheme scheme;
    await tester.pumpMantle(
      Builder(
        builder: (context) {
          scheme = MantleProvider.colorSchemeOf(context);
          return const SizedBox.shrink();
        },
      ),
      theme: testTheme(),
      forceColorScheme: MantleColorScheme.dark,
    );

    expect(scheme, MantleColorScheme.dark);
  });

  testWidgets('auto follows MediaQuery platform brightness', (tester) async {
    late MantleColorScheme scheme;
    await tester.pumpWidget(
      MediaQuery(
        data: const MediaQueryData(platformBrightness: Brightness.dark),
        child: MantleProvider(
          theme: testTheme(),
          defaultColorScheme: MantleColorScheme.auto,
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Builder(
              builder: (context) {
                scheme = MantleProvider.colorSchemeOf(context);
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      ),
    );

    expect(scheme, MantleColorScheme.dark);
  });

  testWidgets('nested forceColorScheme creates a dark island', (tester) async {
    late MantleColorScheme outer;
    late MantleColorScheme inner;
    await tester.pumpWidget(
      MantleProvider(
        theme: testTheme(),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Builder(
            builder: (context) {
              outer = MantleProvider.colorSchemeOf(context);
              return MantleProvider(
                theme: const MantleTheme(),
                forceColorScheme: MantleColorScheme.dark,
                child: Builder(
                  builder: (context) {
                    inner = MantleProvider.colorSchemeOf(context);
                    return const SizedBox.shrink();
                  },
                ),
              );
            },
          ),
        ),
      ),
    );

    expect(outer, MantleColorScheme.light);
    expect(inner, MantleColorScheme.dark);
  });

  testWidgets('set and toggle update the root scheme', (tester) async {
    await tester.pumpMantle(
      Builder(
        builder: (context) {
          return GestureDetector(
            onTap: () => MantleProvider.toggleColorScheme(context),
            child: Text('${MantleProvider.colorSchemeOf(context)}'),
          );
        },
      ),
      theme: testTheme(),
    );

    expect(find.text('MantleColorScheme.light'), findsOneWidget);
    await tester.tap(find.byType(GestureDetector));
    await tester.pump();
    expect(find.text('MantleColorScheme.dark'), findsOneWidget);
  });

  testWidgets('set and toggle are ignored when forced', (tester) async {
    await tester.pumpMantle(
      Builder(
        builder: (context) {
          return GestureDetector(
            onTap: () => MantleProvider.toggleColorScheme(context),
            child: Text('${MantleProvider.colorSchemeOf(context)}'),
          );
        },
      ),
      theme: testTheme(),
      forceColorScheme: MantleColorScheme.dark,
    );

    expect(find.text('MantleColorScheme.dark'), findsOneWidget);
    await tester.tap(find.byType(GestureDetector));
    await tester.pump();
    expect(find.text('MantleColorScheme.dark'), findsOneWidget);
  });

  testWidgets('manager load and save', (tester) async {
    final manager = MemoryColorSchemeManager(MantleColorScheme.dark);

    await tester.pumpMantle(
      Builder(
        builder: (context) {
          return GestureDetector(
            onTap: () => MantleProvider.setColorScheme(
              context,
              MantleColorScheme.light,
            ),
            child: Text('${MantleProvider.colorSchemeOf(context)}'),
          );
        },
      ),
      theme: testTheme(),
      colorSchemeManager: manager,
    );

    expect(find.text('MantleColorScheme.dark'), findsOneWidget);
    await tester.tap(find.byType(GestureDetector));
    await tester.pump();
    expect(find.text('MantleColorScheme.light'), findsOneWidget);
    expect(manager.load(), MantleColorScheme.light);
  });
}
