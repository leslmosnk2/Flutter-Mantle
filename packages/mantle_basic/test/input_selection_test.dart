import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/inputs.dart' as m;

import 'input_test_theme.dart';

void main() {
  group('Checkbox / Switch / Radio / Chip', () {
    testWidgets('Checkbox toggles when tapped', (tester) async {
      var checked = false;
      await tester.pumpMantle(
        m.Checkbox(
          label: const Text('Accept'),
          checked: checked,
          onChanged: (next) => checked = next,
        ),
        theme: inputTestTheme(),
      );

      await tester.tap(find.text('Accept'));
      expect(checked, isTrue);
    });

    testWidgets('CheckboxGroup collects values', (tester) async {
      var values = <String>[];
      await tester.pumpMantle(
        m.CheckboxGroup(
          onChanged: (next) => values = next,
          children: const [
            m.Checkbox(value: 'a', label: Text('A')),
            m.Checkbox(value: 'b', label: Text('B')),
          ],
        ),
        theme: inputTestTheme(),
      );

      await tester.tap(find.text('A'));
      await tester.pump();
      await tester.tap(find.text('B'));
      expect(values, ['a', 'b']);
    });

    testWidgets('Switch toggles when tapped', (tester) async {
      var checked = false;
      await tester.pumpMantle(
        m.Switch(
          label: const Text('On'),
          checked: checked,
          onChanged: (next) => checked = next,
        ),
        theme: inputTestTheme(),
      );

      await tester.tap(find.text('On'));
      expect(checked, isTrue);
    });

    testWidgets('RadioGroup is exclusive', (tester) async {
      var value = '';
      await tester.pumpMantle(
        m.RadioGroup(
          onChanged: (next) => value = next,
          children: const [
            m.Radio(value: 'one', label: Text('One')),
            m.Radio(value: 'two', label: Text('Two')),
          ],
        ),
        theme: inputTestTheme(),
      );

      await tester.tap(find.text('One'));
      await tester.pump();
      await tester.tap(find.text('Two'));
      expect(value, 'two');
    });

    testWidgets('Chip toggles checked state', (tester) async {
      var checked = false;
      await tester.pumpMantle(
        m.Chip(
          checked: checked,
          onChanged: (next) => checked = next,
          child: const Text('React'),
        ),
        theme: inputTestTheme(),
      );

      await tester.tap(find.text('React'));
      expect(checked, isTrue);
    });
  });
}
