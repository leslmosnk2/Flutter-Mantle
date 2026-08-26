// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/combobox/types.dart';

part 'combobox_popover.g.dart';

/// Source-of-truth contract for ComboboxPopover: dropdown on any target.
///
/// Mantine `ComboboxPopover.Target` is [ComboboxPopoverTarget].
@MantleComponent(
  name: 'ComboboxPopover',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<List<ComboboxItem>>('data'),
    MantleProperty<List<String>>('value', nullable: true),
    MantleProperty<MultiSelectChanged>('onChange', nullable: true),
    MantleProperty<bool>('multiple', nullable: true, defaultValue: false),
    MantleProperty<bool>('searchable', nullable: true, defaultValue: false),
    MantleProperty<String>('searchValue', nullable: true),
    MantleProperty<ComboboxSearchChanged>('onSearchChange', nullable: true),
    MantleProperty<String>('nothingFoundMessage', nullable: true),
    MantleProperty<bool>('allowDeselect', nullable: true, defaultValue: true),
    MantleProperty<bool>('withCheckIcon', nullable: true, defaultValue: true),
    MantleProperty<ComboboxCheckIconPosition>(
      'checkIconPosition',
      nullable: true,
      defaultValue: ComboboxCheckIconPosition.left,
    ),
    MantleProperty<bool>('dropdownOpened', nullable: true),
    MantleProperty<VoidCallback>('onDropdownOpen', nullable: true),
    MantleProperty<VoidCallback>('onDropdownClose', nullable: true),
    MantleProperty<int>('limit', nullable: true),
    MantleProperty<double>(
      'maxDropdownHeight',
      nullable: true,
      defaultValue: 250.0,
    ),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
  ],
)
abstract class MantleComboboxPopoverContract {
  /// Builds the target + combobox dropdown.
  @MantleComponent.slot()
  Widget root(ComboboxPopoverContext context);
}

/// Source-of-truth contract for ComboboxPopoverTarget.
@MantleComponent(
  name: 'ComboboxPopoverTarget',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleComboboxPopoverTargetContract {
  /// Builds the popover target wrapper.
  @MantleComponent.slot()
  Widget root(ComboboxPopoverTargetContext context);
}
