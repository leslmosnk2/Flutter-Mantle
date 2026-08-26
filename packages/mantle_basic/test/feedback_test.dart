import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

void main() {
  group('Alert', () {
    testWidgets('renders title and body', (tester) async {
      await tester.pumpMantle(
        const Alert(
          title: Text('Bummer!'),
          child: Text('Something happened'),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Bummer!'), findsOneWidget);
      expect(find.text('Something happened'), findsOneWidget);
    });

    testWidgets('close button fires onClose', (tester) async {
      var closed = 0;
      await tester.pumpMantle(
        Alert(
          title: const Text('Heads up'),
          withCloseButton: true,
          closeButtonLabel: 'Dismiss',
          onClose: () => closed++,
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.byType(CloseButton));
      expect(closed, 1);
    });
  });

  group('EmptyState', () {
    testWidgets('renders title, description, and action', (tester) async {
      await tester.pumpMantle(
        const EmptyState(
          icon: SizedBox(width: 12, height: 12, key: Key('icon')),
          title: Text('No results found'),
          description: Text('Try a different query'),
          action: Text('Reset filters'),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('No results found'), findsOneWidget);
      expect(find.text('Try a different query'), findsOneWidget);
      expect(find.text('Reset filters'), findsOneWidget);
      expect(find.byKey(const Key('icon')), findsOneWidget);
    });
  });

  group('Loader', () {
    testWidgets('default size is md (36px)', (tester) async {
      await tester.pumpMantle(const Loader(), theme: BasicTheme());

      expect(tester.getSize(find.byType(Loader)), const Size(36, 36));
    });

    testWidgets('xs is 18px', (tester) async {
      await tester.pumpMantle(
        const Loader.bars(size: 'xs'),
        theme: BasicTheme(),
      );

      expect(tester.getSize(find.byType(Loader)), const Size(18, 18));
    });

    testWidgets('child replaces the spinner', (tester) async {
      await tester.pumpMantle(
        const Loader(child: Text('custom')),
        theme: BasicTheme(),
      );

      expect(find.text('custom'), findsOneWidget);
    });
  });

  group('MNotification', () {
    testWidgets('renders title and message', (tester) async {
      await tester.pumpMantle(
        const MNotification(
          title: Text('We notify you that'),
          message: Text('Give a star to Mantine'),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('We notify you that'), findsOneWidget);
      expect(find.text('Give a star to Mantine'), findsOneWidget);
    });

    testWidgets('close button fires onClose', (tester) async {
      var closed = 0;
      await tester.pumpMantle(
        MNotification(
          message: const Text('Hi'),
          onClose: () => closed++,
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.byType(CloseButton));
      expect(closed, 1);
    });

    testWidgets('withClose false hides the close control', (tester) async {
      await tester.pumpMantle(
        const MNotification(
          message: Text('Hi'),
          withClose: false,
        ),
        theme: BasicTheme(),
      );

      expect(find.byType(CloseButton), findsNothing);
    });
  });

  group('Progress', () {
    testWidgets('md track is 8px tall', (tester) async {
      await tester.pumpMantle(
        const SizedBox(width: 200, child: Progress(value: 50)),
        theme: BasicTheme(),
      );

      expect(tester.getSize(find.byType(Progress)).height, 8);
    });

    testWidgets('value 50 fills half the track', (tester) async {
      await tester.pumpMantle(
        const SizedBox(width: 200, child: Progress(value: 50)),
        theme: BasicTheme(),
      );

      final track = tester.getSize(find.byType(Progress));
      expect(track.width, 200);
      final section = tester.getSize(find.byType(FractionallySizedBox));
      expect(section.width, closeTo(100, 0.5));
    });
  });

  group('RingProgress', () {
    testWidgets('default size is 120 and shows a label', (tester) async {
      await tester.pumpMantle(
        const RingProgress(value: 40, label: Text('40%')),
        theme: BasicTheme(),
      );

      expect(tester.getSize(find.byType(RingProgress)), const Size(120, 120));
      expect(find.text('40%'), findsOneWidget);
    });
  });

  group('SemiCircleProgress', () {
    testWidgets('is a half-height ring with a label', (tester) async {
      await tester.pumpMantle(
        const SemiCircleProgress(value: 40, label: Text('40%')),
        theme: BasicTheme(),
      );

      expect(
        tester.getSize(find.byType(SemiCircleProgress)),
        const Size(200, 100),
      );
      expect(find.text('40%'), findsOneWidget);
    });
  });

  group('Skeleton', () {
    testWidgets('uses width and height', (tester) async {
      await tester.pumpMantle(
        const Skeleton(width: 120, height: 8),
        theme: BasicTheme(),
      );

      expect(tester.getSize(find.byType(Skeleton)), const Size(120, 8));
    });

    testWidgets('circle uses height for both axes', (tester) async {
      await tester.pumpMantle(
        const Skeleton(circle: true, height: 40),
        theme: BasicTheme(),
      );

      expect(tester.getSize(find.byType(Skeleton)), const Size(40, 40));
    });

    testWidgets('visible false shows the child', (tester) async {
      await tester.pumpMantle(
        const Skeleton(visible: false, child: Text('Ready')),
        theme: BasicTheme(),
      );

      expect(find.text('Ready'), findsOneWidget);
    });
  });
}
