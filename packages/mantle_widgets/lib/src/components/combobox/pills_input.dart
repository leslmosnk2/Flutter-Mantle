import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/combobox/types.dart';

part 'pills_input.g.dart';

/// Source-of-truth contract for PillsInput: input chrome around pills.
///
/// Mantine `PillsInput.Field` is [PillsInputField].
@MantleComponent(
  name: 'PillsInput',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<String>('label', nullable: true),
    MantleProperty<String>('description', nullable: true),
    MantleProperty<String>('error', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: defaultComboboxRadius,
    ),
  ],
)
abstract class MantlePillsInputContract {
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
  PillsInputStyle get style;

  /// Disabled flag.
  @MantleComponent.state(
    properties: [
      MantleProperty<bool>('disabled', defaultValue: false),
    ],
  )
  PillsInputState get state;

  /// Builds the pills field wrapper.
  @MantleComponent.slot()
  Widget root(PillsInputContext context);
}

// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

/// Source-of-truth contract for PillsInputField.
@MantleComponent(
  name: 'PillsInputField',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<String>('value', nullable: true, defaultValue: ''),
    MantleProperty<ComboboxSearchChanged>('onChanged', nullable: true),
    MantleProperty<String>('placeholder', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<PillsInputFieldType>(
      'type',
      nullable: true,
      defaultValue: PillsInputFieldType.visible,
    ),
    MantleProperty<bool>('pointer', nullable: true, defaultValue: false),
  ],
)
abstract class MantlePillsInputFieldContract {
  /// Builds the inline text field among pills.
  @MantleComponent.slot()
  Widget root(PillsInputFieldContext context);
}
