import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gallery/app.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/pages/widget_page.dart';
import 'package:gallery/pages_registry.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('home catalog renders', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(const GalleryApp());
    await tester.pumpAndSettle();

    expect(find.text('Mantle'), findsWidgets);
    expect(find.text('Components'), findsOneWidget);
    expect(find.text('Button'), findsWidgets);
  });

  testWidgets('representative pages pump without missing delegates', (
    tester,
  ) async {
    const slugs = [
      'buttons/button',
      'combobox/select',
      'data-display/card',
      'feedback/alert',
      'inputs/text-input',
      'layout/group',
      'navigation/nav-link',
      'overlays/tooltip',
      'miscellaneous/paper',
      'typography/title',
    ];

    for (final slug in slugs) {
      final page = pageBySlug(galleryPages, slug);
      expect(page, isNotNull, reason: slug);
      await tester.pumpMantle(
        SizedBox(
          width: 800,
          height: 600,
          child: WidgetPage(page: page!),
        ),
        theme: BasicTheme(),
      );
      expect(find.text(page.title), findsWidgets, reason: slug);
    }
  });

  testWidgets('navbar opens a widget page and toggles scheme', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(const GalleryApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text('Button').first);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 50));

    expect(find.text('Show code'), findsWidgets);
    expect(find.text('Variants'), findsOneWidget);

    await tester.tap(find.text('☾').first);
    await tester.pump();
    expect(find.text('Show code'), findsWidgets);
  });
}
