import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/combobox/types.dart';

part 'tree_select.g.dart';

/// Source-of-truth contract for TreeSelect: values from a tree.
@MantleComponent(
  name: 'TreeSelect',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<TreeNodeData>>('data'),
    MantleProperty<List<String>>('value', nullable: true),
    MantleProperty<TreeSelectChanged>('onChange', nullable: true),
    MantleProperty<TreeSelectMode>(
      'mode',
      nullable: true,
      defaultValue: TreeSelectMode.single,
    ),
    MantleProperty<String>('placeholder', nullable: true),
    MantleProperty<String>('label', nullable: true),
    MantleProperty<String>('description', nullable: true),
    MantleProperty<String>('error', nullable: true),
    MantleProperty<bool>('searchable', nullable: true, defaultValue: false),
    MantleProperty<String>('searchValue', nullable: true),
    MantleProperty<ComboboxSearchChanged>('onSearchChange', nullable: true),
    MantleProperty<bool>(
      'defaultExpandAll',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<List<String>>('expandedValues', nullable: true),
    MantleProperty<TreeExpandedChanged>('onExpandedChange', nullable: true),
    MantleProperty<bool>('withLines', nullable: true, defaultValue: false),
    MantleProperty<bool>('allowDeselect', nullable: true, defaultValue: true),
    MantleProperty<bool>('clearable', nullable: true, defaultValue: false),
    MantleProperty<int>('maxValues', nullable: true),
    MantleProperty<ComboboxOptionSubmit>('onRemove', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('dropdownOpened', nullable: true),
    MantleProperty<VoidCallback>('onDropdownOpen', nullable: true),
    MantleProperty<VoidCallback>('onDropdownClose', nullable: true),
    MantleProperty<String>('nothingFoundMessage', nullable: true),
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
abstract class MantleTreeSelectContract {
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
  TreeSelectStyle get style;

  /// Disabled / mode flags.
  @MantleComponent.state(
    properties: [
      MantleProperty<bool>('disabled', defaultValue: false),
      MantleProperty<TreeSelectMode>(
        'mode',
        defaultValue: TreeSelectMode.single,
      ),
    ],
  )
  TreeSelectState get state;

  /// Builds the input + tree dropdown.
  @MantleComponent.slot()
  Widget root(TreeSelectContext context);
}
