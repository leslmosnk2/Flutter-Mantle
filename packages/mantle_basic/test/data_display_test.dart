import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

void main() {
  group('Kbd', () {
    testWidgets('renders the key label', (tester) async {
      await tester.pumpMantle(
        const Kbd(child: Text('⌘')),
        theme: BasicTheme(),
      );
      expect(find.text('⌘'), findsOneWidget);
    });
  });

  group('ColorSwatch', () {
    testWidgets('taps and shows a check', (tester) async {
      var taps = 0;
      await tester.pumpMantle(
        MColorSwatch(
          color: const Color(0xFF228BE6),
          checked: true,
          onTap: () => taps++,
        ),
        theme: BasicTheme(),
      );
      expect(find.byKey(BasicMColorSwatchDelegate.checkKey), findsOneWidget);
      await tester.tap(find.byType(MColorSwatch));
      expect(taps, 1);
    });
  });

  group('ThemeIcon', () {
    testWidgets('wraps the child', (tester) async {
      await tester.pumpMantle(
        const ThemeIcon(child: Text('*')),
        theme: BasicTheme(),
      );
      expect(find.text('*'), findsOneWidget);
      expect(tester.getSize(find.byType(ThemeIcon)).width, 28);
    });
  });

  group('NumberFormatter', () {
    testWidgets('groups thousands and adds a prefix', (tester) async {
      await tester.pumpMantle(
        const NumberFormatter(
          value: 1000000,
          prefix: r'$ ',
          thousandSeparator: ',',
        ),
        theme: BasicTheme(),
      );
      expect(find.text(r'$ 1,000,000'), findsOneWidget);
    });

    testWidgets('renders nothing when value is null', (tester) async {
      await tester.pumpMantle(
        const NumberFormatter(),
        theme: BasicTheme(),
      );
      expect(find.byType(Text), findsNothing);
    });
  });

  group('Badge', () {
    testWidgets('renders the label', (tester) async {
      await tester.pumpMantle(
        const Badge(child: Text('New')),
        theme: BasicTheme(),
      );
      expect(find.text('New'), findsOneWidget);
      expect(tester.getSize(find.byType(Badge)).height, 20);
    });
  });

  group('Avatar', () {
    testWidgets('shows initials from a name', (tester) async {
      await tester.pumpMantle(
        const Avatar(name: 'Ada Lovelace'),
        theme: BasicTheme(),
      );
      expect(find.text('AL'), findsOneWidget);
      expect(tester.getSize(find.byType(Avatar)).width, 38);
    });
  });

  group('AvatarGroup', () {
    testWidgets('lays out overlapping avatars', (tester) async {
      await tester.pumpMantle(
        const AvatarGroup(
          children: [
            Avatar(name: 'Ada Lovelace'),
            Avatar(name: 'Grace Hopper'),
          ],
        ),
        theme: BasicTheme(),
      );
      expect(find.text('AL'), findsOneWidget);
      expect(find.text('GH'), findsOneWidget);
    });
  });

  group('MImage', () {
    testWidgets('shows fallback when src is missing', (tester) async {
      await tester.pumpMantle(
        const MImage(fallback: Text('broken')),
        theme: BasicTheme(),
      );
      expect(find.text('broken'), findsOneWidget);
    });
  });

  group('BackgroundImage', () {
    testWidgets('shows the child over the background', (tester) async {
      await tester.pumpMantle(
        const BackgroundImage(
          child: Text('caption'),
        ),
        theme: BasicTheme(),
      );
      expect(find.text('caption'), findsOneWidget);
    });
  });

  group('Indicator', () {
    testWidgets('overlays a label on the child', (tester) async {
      await tester.pumpMantle(
        const Indicator(
          label: Text('3'),
          child: SizedBox(width: 40, height: 40),
        ),
        theme: BasicTheme(),
      );
      expect(find.text('3'), findsOneWidget);
      expect(find.byKey(BasicIndicatorDelegate.markerKey), findsOneWidget);
    });

    testWidgets('hides the marker when disabled', (tester) async {
      await tester.pumpMantle(
        const Indicator(
          disabled: true,
          label: Text('3'),
          child: SizedBox(width: 40, height: 40),
        ),
        theme: BasicTheme(),
      );
      expect(find.byKey(BasicIndicatorDelegate.markerKey), findsNothing);
    });
  });

  group('MCard', () {
    testWidgets('renders body and a section', (tester) async {
      await tester.pumpMantle(
        const MCard(
          withBorder: true,
          children: [
            CardSection(child: Text('hero')),
            Text('title'),
          ],
        ),
        theme: BasicTheme(),
      );
      expect(find.text('hero'), findsOneWidget);
      expect(find.text('title'), findsOneWidget);
    });
  });

  group('Accordion', () {
    testWidgets('expands and collapses an item', (tester) async {
      await tester.pumpMantle(
        const Accordion(
          children: [
            AccordionItem(
              value: 'a',
              label: Text('Flexibility'),
              child: Text('Configure components'),
            ),
          ],
        ),
        theme: BasicTheme(),
      );

      final panel = find.text('Configure components');
      expect(find.text('Flexibility'), findsOneWidget);
      expect(
        tester.widget<AnimatedAlign>(find.byType(AnimatedAlign)).heightFactor,
        0,
      );

      await tester.tap(find.text('Flexibility'));
      await tester.pumpAndSettle();
      expect(
        tester.widget<AnimatedAlign>(find.byType(AnimatedAlign)).heightFactor,
        1,
      );
      expect(panel, findsOneWidget);

      await tester.tap(find.text('Flexibility'));
      await tester.pumpAndSettle();
      expect(
        tester.widget<AnimatedAlign>(find.byType(AnimatedAlign)).heightFactor,
        0,
      );
    });
  });

  group('Spoiler', () {
    testWidgets('toggles show more and hide', (tester) async {
      await tester.pumpMantle(
        const Spoiler(
          maxHeight: 40,
          showLabel: Text('Show more'),
          hideLabel: Text('Hide'),
          child: SizedBox(height: 200, child: Text('long copy')),
        ),
        theme: BasicTheme(),
      );
      await tester.pump();
      await tester.pump();
      expect(find.text('Show more'), findsOneWidget);

      await tester.tap(find.byKey(BasicSpoilerDelegate.controlKey));
      await tester.pumpAndSettle();
      expect(find.text('Hide'), findsOneWidget);
    });
  });

  group('Timeline', () {
    testWidgets('renders item titles', (tester) async {
      await tester.pumpMantle(
        const Timeline(
          active: 0,
          children: [
            TimelineItem(title: Text('New branch'), child: Text('Created')),
            TimelineItem(title: Text('Commit')),
          ],
        ),
        theme: BasicTheme(),
      );
      expect(find.text('New branch'), findsOneWidget);
      expect(find.text('Commit'), findsOneWidget);
      expect(find.text('Created'), findsOneWidget);
    });
  });

  group('DataList', () {
    testWidgets('renders labels and values', (tester) async {
      await tester.pumpMantle(
        const DataList(
          children: [
            DataListItem(
              children: [
                DataListItemLabel(child: Text('Name')),
                DataListItemValue(child: Text('John Doe')),
              ],
            ),
          ],
        ),
        theme: BasicTheme(),
      );
      expect(find.text('Name'), findsOneWidget);
      expect(find.text('John Doe'), findsOneWidget);
    });
  });

  group('OverflowList', () {
    testWidgets('hides extra items behind an overflow widget', (tester) async {
      await tester.pumpMantle(
        OverflowList(
          maxVisibleItems: 2,
          renderOverflow: (n) => Text('+$n more'),
          children: const [Text('A'), Text('B'), Text('C')],
        ),
        theme: BasicTheme(),
      );
      expect(find.text('A'), findsOneWidget);
      expect(find.text('B'), findsOneWidget);
      expect(find.text('C'), findsNothing);
      expect(find.text('+1 more'), findsOneWidget);
    });
  });

  group('RollingNumber', () {
    testWidgets('formats the value', (tester) async {
      await tester.pumpMantle(
        const RollingNumber(
          value: 1234,
          prefix: r'$ ',
          thousandSeparator: ',',
        ),
        theme: BasicTheme(),
      );
      expect(find.text(r'$ 1,234'), findsOneWidget);
    });
  });
}
