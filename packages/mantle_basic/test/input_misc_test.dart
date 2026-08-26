import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/inputs.dart' as m;

import 'input_test_theme.dart';

void main() {
  group('Fieldset / FileInput / NativeSelect / PinInput / Color', () {
    testWidgets('Fieldset shows a legend', (tester) async {
      await tester.pumpMantle(
        const m.Fieldset(
          legend: Text('Personal'),
          children: [Text('body')],
        ),
        theme: inputTestTheme(),
      );

      expect(find.text('Personal'), findsOneWidget);
      expect(find.text('body'), findsOneWidget);
    });

    testWidgets('FileInput tap fires onPick', (tester) async {
      var picks = 0;
      await tester.pumpMantle(
        m.FileInput(
          placeholder: 'Pick file',
          onPick: () => picks++,
        ),
        theme: inputTestTheme(),
      );

      await tester.tap(find.text('Pick file'));
      expect(picks, 1);
    });

    testWidgets('NativeSelect picks an option', (tester) async {
      var value = '';
      await tester.pumpMantle(
        m.NativeSelect(
          placeholder: 'Choose',
          data: const [
            m.NativeSelectItem(value: 'react', label: 'React'),
            m.NativeSelectItem(value: 'ng', label: 'Angular'),
          ],
          onChanged: (next) => value = next,
        ),
        theme: inputTestTheme(),
      );

      await tester.tap(find.text('Choose'));
      await tester.pump();
      await tester.tap(find.text('React'));
      expect(value, 'react');
    });

    testWidgets('PinInput has the requested length', (tester) async {
      await tester.pumpMantle(
        const m.PinInput(length: 4),
        theme: inputTestTheme(),
      );

      expect(find.byType(EditableText), findsNWidgets(4));
    });

    testWidgets('ColorPicker and ColorInput render', (tester) async {
      await tester.pumpMantle(
        const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            m.ColorPicker(value: '#228be6'),
            m.ColorInput(label: Text('Color'), value: '#228be6'),
          ],
        ),
        theme: inputTestTheme(),
      );

      expect(find.byType(m.ColorPicker), findsOneWidget);
      expect(find.text('Color'), findsOneWidget);
    });

    testWidgets('InputWrapper shows label and error', (tester) async {
      await tester.pumpMantle(
        const m.InputWrapper(
          label: Text('Name'),
          error: Text('Required'),
          required: true,
          child: m.Input(),
        ),
        theme: inputTestTheme(),
      );

      expect(find.text('Name'), findsOneWidget);
      expect(find.text('Required'), findsOneWidget);
      expect(find.text(' *'), findsOneWidget);
    });
  });
}
