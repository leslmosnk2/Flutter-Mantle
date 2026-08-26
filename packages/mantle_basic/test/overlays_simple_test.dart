import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart' as m;

void main() {
  group('Affix', () {
    testWidgets('pins the child to the bottom-right', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 400,
          height: 400,
          child: m.Affix(
            bottom: 8,
            right: 8,
            child: SizedBox(width: 40, height: 20, key: Key('chip')),
          ),
        ),
        theme: BasicTheme(),
      );

      final parent = tester.getRect(find.byType(m.Affix));
      final child = tester.getRect(find.byKey(const Key('chip')));
      expect(child.bottom, closeTo(parent.bottom - 8, 0.5));
      expect(child.right, closeTo(parent.right - 8, 0.5));
    });
  });

  group('MOverlay', () {
    testWidgets('shows a barrier and optional child when visible', (
      tester,
    ) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 200,
          height: 200,
          child: m.MOverlay(
            center: true,
            child: Text('Inside'),
          ),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Inside'), findsOneWidget);
      expect(find.byKey(BasicMOverlayDelegate.barrierKey), findsOneWidget);
    });

    testWidgets('hides when visible is false', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 200,
          height: 200,
          child: m.MOverlay(visible: false, child: Text('Inside')),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Inside'), findsNothing);
      expect(find.byKey(BasicMOverlayDelegate.barrierKey), findsNothing);
    });

    testWidgets('onTap fires', (tester) async {
      var taps = 0;
      await tester.pumpMantle(
        SizedBox(
          width: 200,
          height: 200,
          child: m.MOverlay(onTap: () => taps++),
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.byKey(BasicMOverlayDelegate.barrierKey));
      expect(taps, 1);
    });
  });

  group('LoadingOverlay', () {
    testWidgets('keeps the child and shows a loader when visible', (
      tester,
    ) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 200,
          height: 120,
          child: m.LoadingOverlay(visible: true, child: Text('Form')),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Form'), findsOneWidget);
      expect(find.byKey(BasicLoadingOverlayDelegate.loaderKey), findsOneWidget);
    });

    testWidgets('hides the loader when not visible', (tester) async {
      await tester.pumpMantle(
        const m.LoadingOverlay(child: Text('Form')),
        theme: BasicTheme(),
      );

      expect(find.text('Form'), findsOneWidget);
      expect(find.byKey(BasicLoadingOverlayDelegate.loaderKey), findsNothing);
    });
  });

  group('Tooltip', () {
    testWidgets('shows the label when opened is true', (tester) async {
      await tester.pumpMantle(
        const m.Tooltip(
          opened: true,
          label: 'Hint',
          child: Text('Target'),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Target'), findsOneWidget);
      expect(find.text('Hint'), findsOneWidget);
    });

    testWidgets('shows the label on hover when uncontrolled', (tester) async {
      await tester.pumpMantle(
        const m.Tooltip(label: 'Hint', child: Text('Target')),
        theme: BasicTheme(),
      );

      expect(find.text('Hint'), findsNothing);

      final gesture = await tester.createGesture(kind: PointerDeviceKind.mouse);
      await gesture.addPointer(location: Offset.zero);
      addTearDown(gesture.removePointer);
      await tester.pump();
      await gesture.moveTo(tester.getCenter(find.text('Target')));
      await tester.pump();

      expect(find.text('Hint'), findsOneWidget);
    });
  });
}
