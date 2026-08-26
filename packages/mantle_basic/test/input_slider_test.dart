import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/inputs.dart' as m;

import 'input_test_theme.dart';

void main() {
  group('Slider / Rating / SegmentedControl / AngleSlider', () {
    testWidgets('Slider tap changes value', (tester) async {
      var value = 0.0;
      await tester.pumpMantle(
        SizedBox(
          width: 200,
          child: m.Slider(
            value: value,
            onChanged: (next) => value = next,
          ),
        ),
        theme: inputTestTheme(),
      );

      await tester.tapAt(tester.getCenter(find.byType(m.Slider)));
      expect(value, greaterThan(0));
    });

    testWidgets('RangeSlider has two thumbs from a range value', (
      tester,
    ) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 200,
          child: m.RangeSlider(
            value: m.RangeSliderValue(20, 80),
          ),
        ),
        theme: inputTestTheme(),
      );

      expect(find.byType(m.RangeSlider), findsOneWidget);
    });

    testWidgets('Rating tap sets a value', (tester) async {
      var value = 0.0;
      await tester.pumpMantle(
        m.Rating(onChanged: (next) => value = next),
        theme: inputTestTheme(),
      );

      final stars = find.byType(CustomPaint);
      await tester.tap(stars.at(2));
      expect(value, 3);
    });

    testWidgets('SegmentedControl selects a segment', (tester) async {
      var value = 'react';
      await tester.pumpMantle(
        m.SegmentedControl(
          value: value,
          onChanged: (next) => value = next,
          data: const [
            m.SegmentedControlItem(value: 'react', label: Text('React')),
            m.SegmentedControlItem(value: 'ng', label: Text('Angular')),
          ],
        ),
        theme: inputTestTheme(),
      );

      await tester.tap(find.text('Angular'));
      expect(value, 'ng');
    });

    testWidgets('AngleSlider renders a label', (tester) async {
      await tester.pumpMantle(
        const m.AngleSlider(value: 45),
        theme: inputTestTheme(),
      );

      expect(find.byType(m.AngleSlider), findsOneWidget);
    });

    testWidgets('HueSlider and AlphaSlider render', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 200,
          child: Column(
            children: [
              m.HueSlider(value: 180),
              m.AlphaSlider(value: 0.5, color: '#228be6'),
            ],
          ),
        ),
        theme: inputTestTheme(),
      );

      expect(find.byType(m.HueSlider), findsOneWidget);
      expect(find.byType(m.AlphaSlider), findsOneWidget);
    });
  });
}
