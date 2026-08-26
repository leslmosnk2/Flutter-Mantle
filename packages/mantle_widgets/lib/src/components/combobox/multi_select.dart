import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/combobox/types.dart';

part 'multi_select.g.dart';

/// Source-of-truth contract for MultiSelect: several values as pills.
@MantleComponent(
  name: 'MultiSelect',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<ComboboxItem>>('data'),
    MantleProperty<List<String>>('value', nullable: true),
    MantleProperty<MultiSelectChanged>('onChange', nullable: true),
    MantleProperty<ComboboxOptionSubmit>('onRemove', nullable: true),
    MantleProperty<String>('placeholder', nullable: true),
    MantleProperty<String>('label', nullable: true),
    MantleProperty<String>('description', nullable: true),
    MantleProperty<String>('error', nullable: true),
    MantleProperty<bool>('searchable', nullable: true, defaultValue: false),
    MantleProperty<String>('searchValue', nullable: true),
    MantleProperty<ComboboxSearchChanged>('onSearchChange', nullable: true),
    MantleProperty<int>('maxValues', nullable: true),
    MantleProperty<bool>(
      'hidePickedOptions',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<bool>('clearable', nullable: true, defaultValue: false),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('readOnly', nullable: true, defaultValue: false),
    MantleProperty<bool>('dropdownOpened', nullable: true),
    MantleProperty<VoidCallback>('onDropdownOpen', nullable: true),
    MantleProperty<VoidCallback>('onDropdownClose', nullable: true),
    MantleProperty<String>('nothingFoundMessage', nullable: true),
    MantleProperty<bool>('withCheckIcon', nullable: true, defaultValue: true),
    MantleProperty<ComboboxCheckIconPosition>(
      'checkIconPosition',
      nullable: true,
      defaultValue: ComboboxCheckIconPosition.left,
    ),
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
abstract class MantleMultiSelectContract {
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
  MultiSelectStyle get style;

  /// Disabled / open flags.
  @MantleComponent.state(
    properties: [
      MantleProperty<bool>('disabled', defaultValue: false),
      MantleProperty<bool>('searchable', defaultValue: false),
    ],
  )
  MultiSelectState get state;

  /// Builds pills input + combobox dropdown.
  @MantleComponent.slot()
  Widget root(MultiSelectContext context);
}
