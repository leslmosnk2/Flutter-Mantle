import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/src/widgets/inputs/inputs.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/inputs.dart' as m;

import 'input_test_theme.dart';

void main() {
  group('Input / TextInput / Textarea', () {
    testWidgets('Input shows a placeholder', (tester) async {
      await tester.pumpMantle(
        const m.Input(placeholder: 'Name'),
        theme: inputTestTheme(),
      );

      expect(find.text('Name'), findsOneWidget);
    });

    testWidgets('TextInput shows a label and accepts text', (tester) async {
      var value = '';
      await tester.pumpMantle(
        m.TextInput(
          label: const Text('Email'),
          onChanged: (next) => value = next,
        ),
        theme: inputTestTheme(),
      );

      expect(find.text('Email'), findsOneWidget);
      await tester.enterText(find.byType(EditableText), 'a@b.c');
      expect(value, 'a@b.c');
    });

    testWidgets('Textarea is taller than TextInput', (tester) async {
      await tester.pumpMantle(
        const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            m.TextInput(placeholder: 'one'),
            m.Textarea(placeholder: 'many', minRows: 4),
          ],
        ),
        theme: inputTestTheme(),
      );

      expect(
        tester.getSize(find.byType(m.Textarea)).height,
        greaterThan(tester.getSize(find.byType(m.TextInput)).height),
      );
    });

    testWidgets('PasswordInput obscures then reveals', (tester) async {
      await tester.pumpMantle(
        const m.PasswordInput(defaultValue: 'secret'),
        theme: inputTestTheme(),
      );

      final field = tester.widget<EditableText>(find.byType(EditableText));
      expect(field.obscureText, isTrue);

      await tester.tap(
        find.byKey(BasicPasswordInputDelegate.visibilityToggleKey),
      );
      await tester.pump();

      expect(
        tester.widget<EditableText>(find.byType(EditableText)).obscureText,
        isFalse,
      );
    });

    testWidgets('NumberInput increment steps the value', (tester) async {
      var value = 1.0;
      await tester.pumpMantle(
        m.NumberInput(
          value: value,
          onChanged: (next) => value = next,
        ),
        theme: inputTestTheme(),
      );

      await tester.tap(find.byKey(BasicNumberInputDelegate.incrementKey));
      expect(value, 2);
    });

    testWidgets('MaskInput applies a digit mask', (tester) async {
      var value = '';
      await tester.pumpMantle(
        m.MaskInput(
          mask: '999-99',
          onChanged: (next) => value = next,
        ),
        theme: inputTestTheme(),
      );

      await tester.enterText(find.byType(EditableText), '12345');
      expect(value, '123-45');
    });

    testWidgets('JsonInput flags invalid JSON via validationError', (
      tester,
    ) async {
      await tester.pumpMantle(
        const m.JsonInput(
          defaultValue: '{',
          validationError: Text('Invalid JSON'),
        ),
        theme: inputTestTheme(),
      );

      expect(find.text('Invalid JSON'), findsNothing);
    });
  });
}
