import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/combobox/types.dart';

part 'cascader.g.dart';

/// Source-of-truth contract for Cascader: path from hierarchical columns.
@MantleComponent(
  name: 'Cascader',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<CascaderOption>>('data'),
    MantleProperty<List<String>>('value', nullable: true),
    MantleProperty<CascaderChanged>('onChange', nullable: true),
    MantleProperty<String>('placeholder', nullable: true),
    MantleProperty<String>('label', nullable: true),
    MantleProperty<String>('description', nullable: true),
    MantleProperty<String>('error', nullable: true),
    MantleProperty<bool>('searchable', nullable: true, defaultValue: false),
    MantleProperty<String>('searchValue', nullable: true),
    MantleProperty<ComboboxSearchChanged>('onSearchChange', nullable: true),
    MantleProperty<bool>('changeOnSelect', nullable: true, defaultValue: false),
    MantleProperty<bool>('withColumns', nullable: true, defaultValue: true),
    MantleProperty<CascaderExpandTrigger>(
      'expandTrigger',
      nullable: true,
      defaultValue: CascaderExpandTrigger.click,
    ),
    MantleProperty<bool>('allowDeselect', nullable: true, defaultValue: true),
    MantleProperty<bool>('clearable', nullable: true, defaultValue: false),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('dropdownOpened', nullable: true),
    MantleProperty<VoidCallback>('onDropdownOpen', nullable: true),
    MantleProperty<VoidCallback>('onDropdownClose', nullable: true),
    MantleProperty<String>('nothingFoundMessage', nullable: true),
    MantleProperty<String>('separator', nullable: true, defaultValue: ' / '),
    MantleProperty<double>(
      'columnWidth',
      nullable: true,
      defaultValue: 200.0,
    ),
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
abstract class MantleCascaderContract {
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
  CascaderStyle get style;

  /// Disabled flag.
  @MantleComponent.state(
    properties: [
      MantleProperty<bool>('disabled', defaultValue: false),
    ],
  )
  CascaderState get state;

  /// Builds the input + cascading columns dropdown.
  @MantleComponent.slot()
  Widget root(CascaderContext context);
}
