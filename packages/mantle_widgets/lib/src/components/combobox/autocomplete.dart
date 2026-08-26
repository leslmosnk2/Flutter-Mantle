import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/combobox/types.dart';

part 'autocomplete.g.dart';

/// Source-of-truth contract for Autocomplete: free-text with suggestions.
@MantleComponent(
  name: 'Autocomplete',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<ComboboxItem>>('data'),
    MantleProperty<String>('value', nullable: true),
    MantleProperty<SelectChanged>('onChange', nullable: true),
    MantleProperty<String>('placeholder', nullable: true),
    MantleProperty<String>('label', nullable: true),
    MantleProperty<String>('description', nullable: true),
    MantleProperty<String>('error', nullable: true),
    MantleProperty<bool>('clearable', nullable: true, defaultValue: false),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('readOnly', nullable: true, defaultValue: false),
    MantleProperty<bool>('dropdownOpened', nullable: true),
    MantleProperty<VoidCallback>('onDropdownOpen', nullable: true),
    MantleProperty<VoidCallback>('onDropdownClose', nullable: true),
    MantleProperty<String>('nothingFoundMessage', nullable: true),
    MantleProperty<int>('limit', nullable: true),
    MantleProperty<double>(
      'maxDropdownHeight',
      nullable: true,
      defaultValue: 250.0,
    ),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: defaultComboboxRadius,
    ),
  ],
)
abstract class MantleAutocompleteContract {
  /// Input chrome.
  @MantleComponent.style(
    properties: [
      MantleProperty<Color>('background'),
      MantleProperty<Color>('borderColor'),
      MantleProperty<double>('height'),
      MantleProperty<BorderRadiusGeometry>(
        'radius',
        defaultBuilder: defaultComboboxRadius,
      ),
    ],
  )
  AutocompleteStyle get style;

  /// Disabled flag.
  @MantleComponent.state(
    properties: [
      MantleProperty<bool>('disabled', defaultValue: false),
    ],
  )
  AutocompleteState get state;

  /// Builds the text input + suggestion dropdown.
  @MantleComponent.slot()
  Widget root(AutocompleteContext context);
}
