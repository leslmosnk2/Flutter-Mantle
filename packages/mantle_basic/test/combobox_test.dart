import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

const _groceries = [
  ComboboxItem(value: 'apple', label: 'Apple'),
  ComboboxItem(value: 'banana', label: 'Banana'),
  ComboboxItem(value: 'orange', label: 'Orange'),
];

void main() {
  group('Combobox', () {
    testWidgets('opens and submits an option', (tester) async {
      String? submitted;
      await tester.pumpMantle(
        Combobox(
          onOptionSubmit: (value) => submitted = value,
          children: const [
            ComboboxTarget(child: Text('Open')),
            ComboboxDropdown(
              child: ComboboxOptions(
                children: [
                  ComboboxOption(value: 'apple', child: Text('Apple')),
                ],
              ),
            ),
          ],
        ),
        theme: BasicTheme(),
      );

      expect(find.byKey(BasicComboboxDelegate.dropdownKey), findsNothing);

      await tester.tap(find.text('Open'));
      await tester.pump();

      expect(find.byKey(BasicComboboxDelegate.dropdownKey), findsOneWidget);
      await tester.tap(find.text('Apple'));
      await tester.pump();
      expect(submitted, 'apple');
    });

    testWidgets('disabled option does not submit', (tester) async {
      var submitted = 0;
      await tester.pumpMantle(
        Combobox(
          dropdownOpened: true,
          onOptionSubmit: (_) => submitted++,
          children: const [
            ComboboxTarget(child: Text('Open')),
            ComboboxDropdown(
              child: ComboboxOptions(
                children: [
                  ComboboxOption(
                    value: 'x',
                    disabled: true,
                    child: Text('Nope'),
                  ),
                ],
              ),
            ),
          ],
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.text('Nope'));
      await tester.pump();
      expect(submitted, 0);
    });
  });

  group('Select', () {
    testWidgets('picks a value from the dropdown', (tester) async {
      String? value;
      await tester.pumpMantle(
        SizedBox(
          width: 240,
          child: Select(
            data: _groceries,
            value: value,
            placeholder: 'Pick fruit',
            onChange: (next) => value = next,
          ),
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.byType(Select));
      await tester.pump();
      await tester.tap(find.byKey(BasicComboboxDelegate.optionKey('banana')));
      await tester.pump();
      expect(value, 'banana');
    });

    testWidgets('shows the selected label', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 240,
          child: Select(
            data: _groceries,
            value: 'apple',
          ),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Apple'), findsOneWidget);
    });
  });

  group('Autocomplete', () {
    testWidgets('filters suggestions as the value changes', (tester) async {
      await tester.pumpMantle(
        const SizedBox(
          width: 240,
          child: Autocomplete(
            data: _groceries,
            value: 'ban',
            dropdownOpened: true,
          ),
        ),
        theme: BasicTheme(),
      );

      expect(
        find.byKey(BasicComboboxDelegate.optionKey('banana')),
        findsOneWidget,
      );
      expect(
        find.byKey(BasicComboboxDelegate.optionKey('apple')),
        findsNothing,
      );
    });
  });

  group('MultiSelect', () {
    testWidgets('adds a pill when an option is picked', (tester) async {
      var value = <String>[];
      await tester.pumpMantle(
        SizedBox(
          width: 280,
          child: MultiSelect(
            data: _groceries,
            value: value,
            placeholder: 'Pick',
            onChange: (next) => value = next,
          ),
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.byType(MultiSelect));
      await tester.pump();
      await tester.tap(find.byKey(BasicComboboxDelegate.optionKey('apple')));
      await tester.pump();
      expect(value, ['apple']);
    });
  });

  group('TagsInput', () {
    testWidgets('creates a tag from split characters', (tester) async {
      var value = <String>[];
      await tester.pumpMantle(
        SizedBox(
          width: 280,
          child: TagsInput(
            value: value,
            placeholder: 'Tags',
            onChange: (next) => value = next,
          ),
        ),
        theme: BasicTheme(),
      );

      await tester.enterText(find.byType(PillsInputField), 'react,');
      await tester.pump();
      expect(value, ['react']);
    });
  });

  group('Pill', () {
    testWidgets('remove button fires onRemove', (tester) async {
      var removed = 0;
      await tester.pumpMantle(
        Pill(
          withRemoveButton: true,
          onRemove: () => removed++,
          child: const Text('React'),
        ),
        theme: BasicTheme(),
      );

      expect(find.text('React'), findsOneWidget);
      await tester.tap(find.text('×'));
      expect(removed, 1);
    });
  });

  group('ComboboxPopover', () {
    testWidgets('selects from a custom target', (tester) async {
      var value = <String>[];
      await tester.pumpMantle(
        ComboboxPopover(
          data: _groceries,
          value: value,
          onChange: (next) => value = next,
          child: const Text('Pick'),
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.text('Pick'));
      await tester.pump();
      await tester.tap(find.byKey(BasicComboboxDelegate.optionKey('orange')));
      await tester.pump();
      expect(value, ['orange']);
    });
  });

  group('Cascader', () {
    const data = [
      CascaderOption(
        value: 'asia',
        label: 'Asia',
        children: [
          CascaderOption(value: 'jp', label: 'Japan'),
        ],
      ),
    ];

    testWidgets('selects a leaf path', (tester) async {
      List<String>? path;
      await tester.pumpMantle(
        SizedBox(
          width: 320,
          child: Cascader(
            data: data,
            placeholder: 'Location',
            onChange: (next) => path = next,
          ),
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.byType(Cascader));
      await tester.pump();
      await tester.tap(find.byKey(BasicComboboxDelegate.optionKey('asia')));
      await tester.pump();
      await tester.tap(find.byKey(BasicComboboxDelegate.optionKey('jp')));
      await tester.pump();
      expect(path, ['asia', 'jp']);
    });
  });

  group('TreeSelect', () {
    const data = [
      TreeNodeData(
        value: 'fruits',
        label: 'Fruits',
        children: [
          TreeNodeData(value: 'apple', label: 'Apple'),
        ],
      ),
    ];

    testWidgets('selects a leaf node', (tester) async {
      var value = <String>[];
      await tester.pumpMantle(
        SizedBox(
          width: 280,
          child: TreeSelect(
            data: data,
            defaultExpandAll: true,
            onChange: (next) => value = next,
          ),
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.byType(TreeSelect));
      await tester.pump();
      await tester.tap(find.byKey(BasicComboboxDelegate.optionKey('apple')));
      await tester.pump();
      expect(value, ['apple']);
    });
  });
}
