import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/src/tokens/basic_colors.dart';
import 'package:mantle_basic/src/tokens/basic_tokens.dart';
import 'package:mantle_basic/src/widgets/navigation/navigation.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/navigation.dart';

MantleTheme _navTheme() {
  return MantleTheme(
    debugName: 'NavTest',
    colors: basicColors,
    typography: basicTypography,
    spacing: basicSpacing,
    radius: basicRadius,
    breakpoints: basicBreakpoints,
    primaryColor: 'blue',
    defaultRadius: 'sm',
    components: const DelegateRegistry({
      AnchorDelegate: BasicAnchorDelegate(),
      BreadcrumbsDelegate: BasicBreadcrumbsDelegate(),
      BurgerDelegate: BasicBurgerDelegate(),
      NavLinkDelegate: BasicNavLinkDelegate(),
      PaginationDelegate: BasicPaginationDelegate(),
      PaginationControlDelegate: BasicPaginationControlDelegate(),
      StepperDelegate: BasicStepperDelegate(),
      StepperStepDelegate: BasicStepperStepDelegate(),
      StepperCompletedDelegate: BasicStepperCompletedDelegate(),
      TableOfContentsDelegate: BasicTableOfContentsDelegate(),
      TabsDelegate: BasicTabsDelegate(),
      TabsListDelegate: BasicTabsListDelegate(),
      TabsTabDelegate: BasicTabsTabDelegate(),
      TabsPanelDelegate: BasicTabsPanelDelegate(),
      TreeDelegate: BasicTreeDelegate(),
      TreeNodeDelegate: BasicTreeNodeDelegate(),
    }),
  );
}

void main() {
  group('Anchor', () {
    testWidgets('renders the label and fires onPressed', (tester) async {
      var taps = 0;
      await tester.pumpMantle(
        Anchor(
          href: 'https://mantine.dev/',
          onPressed: () => taps++,
          child: const Text('Link'),
        ),
        theme: _navTheme(),
      );

      expect(find.text('Link'), findsOneWidget);
      await tester.tap(find.text('Link'));
      expect(taps, 1);
    });
  });

  group('Breadcrumbs', () {
    testWidgets('inserts a separator between children', (tester) async {
      await tester.pumpMantle(
        const Breadcrumbs(
          children: [Text('Gallery'), Text('Albums'), Text('Current')],
        ),
        theme: _navTheme(),
      );

      expect(find.text('Gallery'), findsOneWidget);
      expect(find.text('/'), findsNWidgets(2));
      expect(find.text('Current'), findsOneWidget);
    });
  });

  group('Burger', () {
    testWidgets('toggles via onTap', (tester) async {
      var opened = false;
      await tester.pumpMantle(
        Burger(
          opened: opened,
          onTap: () => opened = true,
        ),
        theme: _navTheme(),
      );

      expect(find.byType(Burger), findsOneWidget);
      await tester.tap(find.byType(Burger));
      expect(opened, isTrue);
    });
  });

  group('NavLink', () {
    testWidgets('shows nested children when opened', (tester) async {
      var taps = 0;
      await tester.pumpMantle(
        NavLink(
          label: const Text('Dashboard'),
          opened: true,
          onTap: () => taps++,
          children: const [
            NavLink(label: Text('Overview')),
          ],
        ),
        theme: _navTheme(),
      );

      expect(find.text('Dashboard'), findsOneWidget);
      expect(find.text('Overview'), findsOneWidget);
      await tester.tap(find.text('Dashboard'));
      expect(taps, 1);
    });

    testWidgets('hides nested children when closed', (tester) async {
      await tester.pumpMantle(
        const NavLink(
          label: Text('Dashboard'),
          children: [NavLink(label: Text('Overview'))],
        ),
        theme: _navTheme(),
      );

      expect(find.text('Overview'), findsNothing);
    });
  });

  group('Pagination', () {
    testWidgets('renders pages and changes value', (tester) async {
      var page = 1;
      await tester.pumpMantle(
        Pagination(
          total: 5,
          value: page,
          onChange: (value) => page = value,
        ),
        theme: _navTheme(),
      );

      expect(find.text('1'), findsOneWidget);
      expect(find.text('5'), findsOneWidget);
      await tester.tap(find.text('3'));
      expect(page, 3);
    });

    testWidgets('hides when total is 1 and hideWithOnePage is set', (
      tester,
    ) async {
      await tester.pumpMantle(
        const Pagination(total: 1, hideWithOnePage: true),
        theme: _navTheme(),
      );

      expect(find.byType(PaginationControl), findsNothing);
    });
  });

  group('paginationRange', () {
    test('returns every page when total is small', () {
      expect(
        paginationRange(total: 5, active: 1, siblings: 1, boundaries: 1),
        [1, 2, 3, 4, 5],
      );
    });

    test('inserts dots for a long range', () {
      expect(
        paginationRange(total: 20, active: 10, siblings: 1, boundaries: 1),
        [1, null, 9, 10, 11, null, 20],
      );
    });
  });

  group('Tabs', () {
    testWidgets('shows the active panel and switches on tap', (tester) async {
      var tab = 'gallery';
      await tester.pumpMantle(
        SizedBox(
          width: 400,
          height: 200,
          child: Tabs(
            value: tab,
            onChange: (value) => tab = value,
            children: const [
              TabsList(
                children: [
                  TabsTab(value: 'gallery', child: Text('Gallery')),
                  TabsTab(value: 'messages', child: Text('Messages')),
                ],
              ),
              TabsPanel(value: 'gallery', child: Text('Gallery panel')),
              TabsPanel(value: 'messages', child: Text('Messages panel')),
            ],
          ),
        ),
        theme: _navTheme(),
      );

      expect(find.text('Gallery panel'), findsOneWidget);
      expect(find.text('Messages panel'), findsNothing);
      await tester.tap(find.text('Messages'));
      expect(tab, 'messages');
    });
  });

  group('Stepper', () {
    testWidgets('shows the active step content', (tester) async {
      var active = 0;
      await tester.pumpMantle(
        SizedBox(
          width: 500,
          height: 200,
          child: Stepper(
            active: active,
            onStepClick: (index) => active = index,
            children: const [
              StepperStep(
                label: Text('First'),
                child: Text('Step 1 body'),
              ),
              StepperStep(
                label: Text('Second'),
                child: Text('Step 2 body'),
              ),
              StepperCompleted(child: Text('Done')),
            ],
          ),
        ),
        theme: _navTheme(),
      );

      expect(find.text('First'), findsOneWidget);
      expect(find.text('Step 1 body'), findsOneWidget);
      expect(find.text('Step 2 body'), findsNothing);
      await tester.tap(find.text('Second'));
      expect(active, 1);
    });
  });

  group('TableOfContents', () {
    testWidgets('fires onScrollTo for a heading', (tester) async {
      TocHeading? selected;
      await tester.pumpMantle(
        TableOfContents(
          active: 'intro',
          onScrollTo: (heading) => selected = heading,
          headings: const [
            TocHeading(value: 'intro', depth: 1, label: 'Intro'),
            TocHeading(value: 'details', depth: 2, label: 'Details'),
          ],
        ),
        theme: _navTheme(),
      );

      expect(find.text('Intro'), findsOneWidget);
      await tester.tap(find.text('Details'));
      expect(selected?.value, 'details');
    });
  });

  group('Tree', () {
    testWidgets('expands a parent on tap', (tester) async {
      var expanded = <String>[];
      await tester.pumpMantle(
        Tree(
          expanded: expanded,
          onExpandedChange: (next) => expanded = next,
          data: const [
            TreeNodeData(
              value: 'src',
              label: 'src',
              children: [TreeNodeData(value: 'widgets', label: 'widgets')],
            ),
          ],
        ),
        theme: _navTheme(),
      );

      expect(find.text('src'), findsOneWidget);
      expect(find.text('widgets'), findsNothing);
      await tester.tap(find.text('src'));
      expect(expanded, ['src']);
    });
  });
}
