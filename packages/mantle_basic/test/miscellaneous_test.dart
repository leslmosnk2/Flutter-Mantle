import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart' as m;

void main() {
  group('Box', () {
    testWidgets('applies size, padding, and background', (tester) async {
      await tester.pumpMantle(
        const m.Box(
          width: 80,
          height: 40,
          padding: EdgeInsets.all(8),
          color: Color(0xFF228BE6),
          child: SizedBox(key: Key('child')),
        ),
        theme: BasicTheme(),
      );

      expect(tester.getSize(find.byType(m.Box)), const Size(80, 40));
      expect(find.byKey(const Key('child')), findsOneWidget);
    });
  });

  group('Collapse', () {
    testWidgets('hides the child when closed', (tester) async {
      await tester.pumpMantle(
        const m.Collapse(
          child: SizedBox(width: 40, height: 40, key: Key('panel')),
        ),
        theme: BasicTheme(),
      );

      expect(find.byKey(const Key('panel')), findsNothing);
    });

    testWidgets('shows the child when opened', (tester) async {
      await tester.pumpMantle(
        const m.Collapse(
          opened: true,
          transitionDuration: 0,
          child: SizedBox(width: 40, height: 40, key: Key('panel')),
        ),
        theme: BasicTheme(),
      );

      expect(find.byKey(const Key('panel')), findsOneWidget);
      expect(tester.getSize(find.byKey(const Key('panel'))).height, 40);
    });

    testWidgets('keepMounted leaves a zero-height child', (tester) async {
      await tester.pumpMantle(
        const m.Collapse(
          keepMounted: true,
          transitionDuration: 0,
          child: SizedBox(width: 40, height: 40, key: Key('panel')),
        ),
        theme: BasicTheme(),
      );
      await tester.pump();

      expect(find.byKey(const Key('panel')), findsOneWidget);
      expect(tester.getSize(find.byType(m.Collapse)).height, 0);
    });
  });

  group('Divider', () {
    testWidgets('paints a horizontal rule', (tester) async {
      await tester.pumpMantle(
        const SizedBox(width: 200, child: m.Divider()),
        theme: BasicTheme(),
      );

      expect(tester.getSize(find.byType(m.Divider)).height, 1);
      expect(tester.getSize(find.byType(m.Divider)).width, 200);
    });

    testWidgets('shows a label', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 200,
          child: m.Divider(label: Text('Label')),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Label'), findsOneWidget);
    });

    testWidgets('stretches vertically', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          height: 40,
          child: m.Divider(orientation: Axis.vertical),
        ),
        theme: BasicTheme(),
      );

      expect(tester.getSize(find.byType(m.Divider)).width, 1);
      expect(tester.getSize(find.byType(m.Divider)).height, 40);
    });
  });

  group('FocusTrap', () {
    testWidgets('autofocuses its scope when active', (tester) async {
      await tester.pumpMantle(
        const m.FocusTrap(
          child: SizedBox(width: 20, height: 20, key: Key('child')),
        ),
        theme: BasicTheme(),
      );
      await tester.pump();

      final scope = FocusScope.of(
        tester.element(find.byKey(const Key('child'))),
      );
      expect(scope.hasFocus, isTrue);
    });

    testWidgets('does not autofocus when inactive', (tester) async {
      await tester.pumpMantle(
        const m.FocusTrap(
          active: false,
          child: SizedBox(width: 20, height: 20, key: Key('child')),
        ),
        theme: BasicTheme(),
      );
      await tester.pump();

      final scope = FocusScope.of(
        tester.element(find.byKey(const Key('child'))),
      );
      expect(scope.hasFocus, isFalse);
    });
  });

  group('Marquee', () {
    testWidgets('renders its children', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 120,
          height: 24,
          child: m.Marquee(
            duration: 1000,
            repeat: 2,
            fadeEdges: false,
            children: [Text('One'), Text('Two')],
          ),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('One'), findsWidgets);
      expect(find.text('Two'), findsWidgets);
    });
  });

  group('Paper', () {
    testWidgets('wraps the child in a surface', (tester) async {
      await tester.pumpMantle(
        const m.Paper(
          withBorder: true,
          padding: 'md',
          child: Text('Paper is the most basic ui component'),
        ),
        theme: BasicTheme(),
      );

      expect(
        find.text('Paper is the most basic ui component'),
        findsOneWidget,
      );
      expect(find.byType(DecoratedBox), findsWidgets);
    });
  });

  group('Portal', () {
    testWidgets('paints the child through an overlay', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 200,
          height: 200,
          child: m.Portal(child: Text('ported')),
        ),
        theme: BasicTheme(),
      );
      await tester.pump();

      expect(find.text('ported'), findsOneWidget);
    });
  });

  group('ScrollArea', () {
    testWidgets('scrolls and reports position', (tester) async {
      Offset? last;
      await tester.pumpMantle(
        SizedBox(
          width: 80,
          height: 80,
          child: m.ScrollArea(
            scrollbars: m.ScrollAreaScrollbars.y,
            onScrollPositionChange: (offset) => last = offset,
            child: const SizedBox(width: 80, height: 400, key: Key('tall')),
          ),
        ),
        theme: BasicTheme(),
      );

      expect(find.byKey(const Key('tall')), findsOneWidget);
      await tester.drag(find.byType(m.ScrollArea), const Offset(0, -40));
      await tester.pumpAndSettle();
      expect(last, isNotNull);
      expect(last!.dy, greaterThan(0));
    });
  });

  group('Scroller', () {
    testWidgets('shows an end control when content overflows', (tester) async {
      await tester.pumpMantle(
        SizedBox(
          width: 120,
          height: 40,
          child: m.Scroller(
            child: Row(
              children: [
                for (var i = 0; i < 10; i++)
                  const SizedBox(width: 40, height: 40),
              ],
            ),
          ),
        ),
        theme: BasicTheme(),
      );
      await tester.pump();

      expect(find.byKey(BasicScrollerDelegate.endControlKey), findsOneWidget);
      await tester.tap(find.byKey(BasicScrollerDelegate.endControlKey));
      await tester.pumpAndSettle();
    });
  });

  group('Transition', () {
    testWidgets('shows the child when mounted', (tester) async {
      await tester.pumpMantle(
        const m.MTransition(
          mounted: true,
          duration: 0,
          child: Text('Your modal'),
        ),
        theme: BasicTheme(),
      );
      await tester.pump();

      expect(find.text('Your modal'), findsOneWidget);
    });

    testWidgets('hides the child when unmounted', (tester) async {
      await tester.pumpMantle(
        const m.MTransition(
          mounted: false,
          duration: 0,
          child: Text('Your modal'),
        ),
        theme: BasicTheme(),
      );
      await tester.pump();

      expect(find.text('Your modal'), findsNothing);
    });
  });

  group('VisuallyHidden', () {
    testWidgets('clips to 1px and keeps the child', (tester) async {
      await tester.pumpMantle(
        const m.VisuallyHidden(child: Text('Like post')),
        theme: BasicTheme(),
      );

      expect(find.text('Like post'), findsOneWidget);
      expect(tester.getSize(find.byType(m.VisuallyHidden)), const Size(1, 1));
    });
  });
}
