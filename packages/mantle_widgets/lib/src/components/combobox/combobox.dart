import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/combobox/types.dart';

part 'combobox.g.dart';

// Compound contracts below are single-method by design.
// ignore_for_file: one_member_abstracts

/// Source-of-truth contract for Combobox: overlay/list primitive.
///
/// Mantine `Combobox.Target`, `Dropdown`, `Options`, `Option`, `Group`,
/// `Empty`, `Search`, and `Chevron` are sibling widgets.
@MantleComponent(
  name: 'Combobox',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<bool>('dropdownOpened', nullable: true),
    MantleProperty<VoidCallback>('onDropdownOpen', nullable: true),
    MantleProperty<VoidCallback>('onDropdownClose', nullable: true),
    MantleProperty<ComboboxOptionSubmit>('onOptionSubmit', nullable: true),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
    MantleProperty<double>(
      'dropdownPadding',
      nullable: true,
      defaultValue: 4.0,
    ),
    MantleProperty<bool>('readOnly', nullable: true, defaultValue: false),
    MantleProperty<bool>(
      'resetSelectionOnOptionHover',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<double>(
      'maxDropdownHeight',
      nullable: true,
      defaultValue: 250.0,
    ),
    MantleProperty<bool>('withScrollArea', nullable: true, defaultValue: true),
  ],
)
abstract class MantleComboboxContract {
  /// Resolved dropdown chrome.
  @MantleComponent.style(
    properties: [
      MantleProperty<Color>('background'),
      MantleProperty<Color>('borderColor'),
      MantleProperty<BorderRadiusGeometry>(
        'radius',
        defaultBuilder: defaultComboboxRadius,
      ),
      MantleProperty<double>('dropdownPadding'),
    ],
  )
  ComboboxStyle get style;

  /// Read-only flag.
  @MantleComponent.state(
    properties: [
      MantleProperty<bool>('readOnly', defaultValue: false),
    ],
  )
  ComboboxState get state;

  /// Builds the target + dropdown host and publishes `ComboboxScope`.
  @MantleComponent.slot()
  Widget root(ComboboxContext context);
}

/// Source-of-truth contract for ComboboxTarget (Mantine `Combobox.Target`).
@MantleComponent(
  name: 'ComboboxTarget',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleComboboxTargetContract {
  /// Builds the clickable target that toggles the dropdown.
  @MantleComponent.slot()
  Widget root(ComboboxTargetContext context);
}

/// Source-of-truth contract for ComboboxDropdown (Mantine `Combobox.Dropdown`).
@MantleComponent(
  name: 'ComboboxDropdown',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<bool>('hidden', nullable: true, defaultValue: false),
  ],
)
abstract class MantleComboboxDropdownContract {
  /// Builds the dropdown panel, or nothing when closed / `hidden`.
  @MantleComponent.slot()
  Widget root(ComboboxDropdownContext context);
}

/// Source-of-truth contract for ComboboxOptions (Mantine `Combobox.Options`).
@MantleComponent(
  name: 'ComboboxOptions',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
  ],
)
abstract class MantleComboboxOptionsContract {
  /// Builds the listbox.
  @MantleComponent.slot()
  Widget root(ComboboxOptionsContext context);
}

/// Source-of-truth contract for ComboboxOption (Mantine `Combobox.Option`).
@MantleComponent(
  name: 'ComboboxOption',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<String>('value'),
    MantleProperty<Widget>('child'),
    MantleProperty<bool>('selected', nullable: true, defaultValue: false),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('active', nullable: true, defaultValue: false),
  ],
)
abstract class MantleComboboxOptionContract {
  /// Builds a selectable option row.
  @MantleComponent.slot()
  Widget root(ComboboxOptionContext context);
}

/// Source-of-truth contract for ComboboxGroup (Mantine `Combobox.Group`).
@MantleComponent(
  name: 'ComboboxGroup',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<String>('label', nullable: true),
  ],
)
abstract class MantleComboboxGroupContract {
  /// Builds a labelled option group.
  @MantleComponent.slot()
  Widget root(ComboboxGroupContext context);
}

/// Source-of-truth contract for ComboboxEmpty (Mantine `Combobox.Empty`).
@MantleComponent(
  name: 'ComboboxEmpty',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleComboboxEmptyContract {
  /// Builds the empty-state message.
  @MantleComponent.slot()
  Widget root(ComboboxEmptyContext context);
}

/// Source-of-truth contract for ComboboxSearch (Mantine `Combobox.Search`).
@MantleComponent(
  name: 'ComboboxSearch',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<String>('value', nullable: true, defaultValue: ''),
    MantleProperty<ComboboxSearchChanged>('onChanged', nullable: true),
    MantleProperty<String>('placeholder', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
  ],
)
abstract class MantleComboboxSearchContract {
  /// Builds the search field inside the dropdown.
  @MantleComponent.slot()
  Widget root(ComboboxSearchContext context);
}

/// Source-of-truth contract for ComboboxChevron (Mantine `Combobox.Chevron`).
@MantleComponent(
  name: 'ComboboxChevron',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<String>('size', nullable: true),
    MantleProperty<bool>('error', nullable: true, defaultValue: false),
  ],
)
abstract class MantleComboboxChevronContract {
  /// Builds the expand chevron.
  @MantleComponent.slot()
  Widget root(ComboboxChevronContext context);
}

/// Source-of-truth contract for ComboboxHeader (Mantine `Combobox.Header`).
@MantleComponent(
  name: 'ComboboxHeader',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleComboboxHeaderContract {
  /// Builds the dropdown header.
  @MantleComponent.slot()
  Widget root(ComboboxHeaderContext context);
}

/// Source-of-truth contract for ComboboxFooter (Mantine `Combobox.Footer`).
@MantleComponent(
  name: 'ComboboxFooter',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleComboboxFooterContract {
  /// Builds the dropdown footer.
  @MantleComponent.slot()
  Widget root(ComboboxFooterContext context);
}
