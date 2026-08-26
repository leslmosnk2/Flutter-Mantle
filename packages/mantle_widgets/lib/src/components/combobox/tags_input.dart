import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/combobox/types.dart';

part 'tags_input.g.dart';

/// Source-of-truth contract for TagsInput: free-form tags with suggestions.
@MantleComponent(
  name: 'TagsInput',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<ComboboxItem>>('data', nullable: true),
    MantleProperty<List<String>>('value', nullable: true),
    MantleProperty<MultiSelectChanged>('onChange', nullable: true),
    MantleProperty<ComboboxOptionSubmit>('onRemove', nullable: true),
    MantleProperty<String>('placeholder', nullable: true),
    MantleProperty<String>('label', nullable: true),
    MantleProperty<String>('description', nullable: true),
    MantleProperty<String>('error', nullable: true),
    MantleProperty<String>('searchValue', nullable: true),
    MantleProperty<ComboboxSearchChanged>('onSearchChange', nullable: true),
    MantleProperty<int>('maxTags', nullable: true),
    MantleProperty<bool>(
      'allowDuplicates',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<String>('splitChars', nullable: true, defaultValue: ','),
    MantleProperty<bool>(
      'acceptValueOnBlur',
      nullable: true,
      defaultValue: true,
    ),
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
abstract class MantleTagsInputContract {
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
  TagsInputStyle get style;

  /// Disabled flag.
  @MantleComponent.state(
    properties: [
      MantleProperty<bool>('disabled', defaultValue: false),
    ],
  )
  TagsInputState get state;

  /// Builds pills + free-form field + suggestion dropdown.
  @MantleComponent.slot()
  Widget root(TagsInputContext context);
}
