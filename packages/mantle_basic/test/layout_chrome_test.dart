import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart' as m;

void main() {
  group('AppShell', () {
    testWidgets('shows header, navbar, and main', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 800,
          height: 400,
          child: m.AppShell(
            header: m.AppShellHeaderConfig(height: 48),
            navbar: m.AppShellNavbarConfig(width: 120),
            children: [
              m.AppShellHeader(child: Text('Logo')),
              m.AppShellNavbar(child: Text('Nav')),
              m.AppShellMain(child: Text('Body')),
            ],
          ),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Logo'), findsOneWidget);
      expect(find.text('Nav'), findsOneWidget);
      expect(find.text('Body'), findsOneWidget);
      expect(tester.getSize(find.byType(m.AppShellHeader)).height, 48);
      expect(tester.getSize(find.byType(m.AppShellNavbar)).width, 120);
    });

    testWidgets('disabled hides chrome', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 800,
          height: 400,
          child: m.AppShell(
            disabled: true,
            header: m.AppShellHeaderConfig(height: 48),
            children: [
              m.AppShellHeader(child: Text('Logo')),
              m.AppShellMain(child: Text('Body')),
            ],
          ),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Logo'), findsNothing);
      expect(find.text('Body'), findsOneWidget);
    });
  });

  group('Splitter', () {
    testWidgets('renders two panes', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 400,
          height: 120,
          child: m.Splitter(
            children: [
              m.SplitterPane(child: Text('Left')),
              m.SplitterPane(child: Text('Right')),
            ],
          ),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Left'), findsOneWidget);
      expect(find.text('Right'), findsOneWidget);
    });
  });
}
