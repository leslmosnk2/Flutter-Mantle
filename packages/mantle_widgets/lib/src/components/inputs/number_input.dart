// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/inputs/types.dart';

part 'number_input.g.dart';

/// Source-of-truth contract for NumberInput: numeric field with steppers.
@MantleComponent(
  name: 'NumberInput',
  variants: [
    MantleVariant('default'),
    MantleVariant('filled'),
    MantleVariant('unstyled'),
  ],
  properties: [
    MantleProperty<double>('value', nullable: true),
    MantleProperty<double>('defaultValue', nullable: true),
    MantleProperty<void Function(double)>('onChanged', nullable: true),
    MantleProperty<String>('placeholder', nullable: true),
    MantleProperty<Widget>('label', nullable: true),
    MantleProperty<Widget>('description', nullable: true),
    MantleProperty<Widget>('error', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('readOnly', nullable: true, defaultValue: false),
    MantleProperty<bool>('required', nullable: true, defaultValue: false),
    MantleProperty<bool>('withAsterisk', nullable: true),
    MantleProperty<bool>('hideControls', nullable: true, defaultValue: false),
    MantleProperty<bool>('allowNegative', nullable: true, defaultValue: true),
    MantleProperty<bool>('allowDecimal', nullable: true, defaultValue: true),
    MantleProperty<double>('min', nullable: true),
    MantleProperty<double>('max', nullable: true),
    MantleProperty<double>('step', nullable: true, defaultValue: 1.0),
    MantleProperty<NumberClampBehavior>(
      'clampBehavior',
      nullable: true,
      defaultValue: NumberClampBehavior.blur,
    ),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: inputDefaultRadius,
    ),
  ],
)
abstract class MantleNumberInputContract {
  /// Builds the wrapper, field, and controls.
  @MantleComponent.slot()
  Widget root(NumberInputContext context);
}
