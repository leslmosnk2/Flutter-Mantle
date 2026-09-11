// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/inputs/types.dart';

part 'radio.g.dart';

/// Source-of-truth contract for Radio.
@MantleComponent(
  name: 'Radio',
  variants: [
    MantleVariant('default'),
    MantleVariant('filled'),
    MantleVariant('outline'),
  ],
  properties: [
    MantleProperty<String>('value'),
    MantleProperty<bool>('checked', nullable: true),
    MantleProperty<ValueChanged<bool>>('onChanged', nullable: true),
    MantleProperty<Widget>('label', nullable: true),
    MantleProperty<Widget>('description', nullable: true),
    MantleProperty<Widget>('error', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<String>('iconColor', nullable: true),
    MantleProperty<InputLabelPosition>(
      'labelPosition',
      nullable: true,
      defaultValue: InputLabelPosition.right,
    ),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: inputPillRadius,
    ),
  ],
)
abstract class MantleRadioContract {
  /// Builds the radio and optional label.
  @MantleComponent.slot()
  Widget root(RadioContext context);
}

/// Source-of-truth contract for RadioGroup (Mantine `Radio.Group`).
@MantleComponent(
  name: 'RadioGroup',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<String>('value', nullable: true),
    MantleProperty<String>('defaultValue', nullable: true),
    MantleProperty<void Function(String)>('onChanged', nullable: true),
    MantleProperty<Widget>('label', nullable: true),
    MantleProperty<Widget>('description', nullable: true),
    MantleProperty<Widget>('error', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('readOnly', nullable: true, defaultValue: false),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
  ],
)
abstract class MantleRadioGroupContract {
  /// Builds the group wrapper and scope.
  @MantleComponent.slot()
  Widget root(RadioGroupContext context);
}
