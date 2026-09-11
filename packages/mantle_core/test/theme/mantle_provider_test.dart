import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_core/testing.dart';

import '../helpers.dart';

class _Counter {
  int value = 0;
}

class _AspectProbe extends StatelessWidget {
  const _AspectProbe({required this.aspect, required this.counter});

  final MantleAspect aspect;
  final _Counter counter;

  @override
  Widget build(BuildContext context) {
    MantleProvider.of(context, aspect: aspect);
    counter.value++;
    return const SizedBox.shrink();
  }
}

class _ThemeHost extends StatefulWidget {
  const _ThemeHost({
    required this.initial,
    required this.child,
  });

  final MantleTheme initial;
  final Widget child;

  @override
  State<_ThemeHost> createState() => _ThemeHostState();
}

class _ThemeHostState extends State<_ThemeHost> {
  late MantleTheme theme = widget.initial;

  void update(MantleTheme next) => setState(() => theme = next);

  @override
  Widget build(BuildContext context) {
    return MantleProvider(
      theme: theme,
      child: widget.child,
    );
  }
}

void main() {
  tearDown(() {
    Mantle.detachRoot();
    MantleLog.resetForTest();
  });

  testWidgets('of throws FlutterError when no provider is in scope', (
    tester,
  ) async {
    await tester.pumpWidget(
      Builder(
        builder: (context) {
          expect(
            () => MantleTheme.of(context),
            throwsA(
              isA<FlutterError>().having(
                (error) => error.toString(),
                'message',
                contains('No MantleProvider found'),
              ),
            ),
          );
          return const SizedBox.shrink();
        },
      ),
    );
  });

  testWidgets('maybeOf returns null when no provider is in scope', (
    tester,
  ) async {
    MantleTheme? theme;
    await tester.pumpWidget(
      Builder(
        builder: (context) {
          theme = MantleTheme.maybeOf(context);
          return const SizedBox.shrink();
        },
      ),
    );

    expect(theme, isNull);
  });

  testWidgets('aspect-scoped rebuilds skip unrelated subscribers', (
    tester,
  ) async {
    final colorsCounter = _Counter();
    final componentsCounter = _Counter();
    final theme = testTheme(
      components: const DelegateRegistry({ToyDelegate: ToyDelegate('a')}),
    );
    final child = Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        children: [
          _AspectProbe(
            aspect: MantleAspect.colors,
            counter: colorsCounter,
          ),
          _AspectProbe(
            aspect: MantleAspect.components,
            counter: componentsCounter,
          ),
        ],
      ),
    );

    await tester.pumpWidget(_ThemeHost(initial: theme, child: child));
    expect(colorsCounter.value, 1);
    expect(componentsCounter.value, 1);

    final state = tester.state<_ThemeHostState>(find.byType(_ThemeHost))
      ..update(
        theme.copyWith(
          colors: MantleColors({
            'blue': mantleTestPalette(1),
            'red': mantleTestPalette(2),
            'gray': mantleTestPalette(3),
          }),
        ),
      );
    await tester.pump();
    expect(colorsCounter.value, 2);
    expect(componentsCounter.value, 1);

    state.update(
      state.theme.copyWith(
        components: const DelegateRegistry({ToyDelegate: ToyDelegate('b')}),
      ),
    );
    await tester.pump();
    expect(colorsCounter.value, 2);
    expect(componentsCounter.value, 2);
  });

  testWidgets('nested provider: inner tokens and delegates win', (
    tester,
  ) async {
    final outer = testTheme(
      colors: MantleColors({
        'blue': mantleTestPalette(0),
        'red': mantleTestPalette(10),
      }),
      components: const DelegateRegistry({ToyDelegate: ToyDelegate('outer')}),
    );
    final inner = MantleTheme(
      colors: MantleColors({'blue': mantleTestPalette(50)}),
      components: const DelegateRegistry({ToyDelegate: ToyDelegate('inner')}),
    );

    late MantleTheme captured;
    await tester.pumpWidget(
      MantleProvider(
        theme: outer,
        child: MantleProvider(
          theme: inner,
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Builder(
              builder: (context) {
                captured = MantleTheme.of(context);
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      ),
    );

    expect(captured.colors['blue'][0], inner.colors['blue'][0]);
    expect(captured.colors['red'][0], outer.colors['red'][0]);
    expect(captured.delegate<ToyDelegate>().id, 'inner');
  });

  testWidgets('effective theme identity is stable across rebuilds', (
    tester,
  ) async {
    final theme = testTheme();
    final captured = <MantleTheme>[];

    Widget host() {
      return MantleProvider(
        theme: theme,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Builder(
            builder: (context) {
              captured.add(MantleTheme.of(context));
              return const SizedBox.shrink();
            },
          ),
        ),
      );
    }

    await tester.pumpWidget(host());
    await tester.pumpWidget(host());

    expect(captured, hasLength(2));
    expect(identical(captured[0], captured[1]), isTrue);
  });

  testWidgets('MantleOverride patches delegates only', (tester) async {
    final theme = testTheme(
      components: const DelegateRegistry({ToyDelegate: ToyDelegate('root')}),
    );

    late String id;
    await tester.pumpMantle(
      MantleOverride(
        delegates: const DelegateRegistry({ToyDelegate: ToyDelegate('ov')}),
        child: Builder(
          builder: (context) {
            id = MantleTheme.of(context).delegate<ToyDelegate>().id;
            return const SizedBox.shrink();
          },
        ),
      ),
      theme: theme,
    );

    expect(id, 'ov');
  });

  testWidgets('spacingBuilder resolves against the reading context', (
    tester,
  ) async {
    late double md;

    await tester.pumpMantle(
      Builder(
        builder: (context) {
          md = MantleTheme.of(context).spacing['md'];
          return const SizedBox.shrink();
        },
      ),
      theme: MantleTheme(
        spacingBuilder: (context) => MantleSpacing({'md': 24}),
      ),
    );

    expect(md, equals(24));
  });

  testWidgets('of() rebuilds spacing when the text scaler changes', (
    tester,
  ) async {
    late double md;

    Widget host(TextScaler scaler) {
      return MediaQuery(
        data: MediaQueryData(textScaler: scaler),
        child: MantleProvider(
          theme: MantleTheme(
            spacingBuilder: (context) => MantleSpacing({
              'md': 1.emOf(context),
            }),
          ),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Builder(
              builder: (context) {
                md = MantleTheme.of(context).spacing['md'];
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      );
    }

    await tester.pumpWidget(host(TextScaler.noScaling));
    expect(md, equals(16));

    await tester.pumpWidget(host(const TextScaler.linear(2)));
    expect(md, equals(32));
  });
}
