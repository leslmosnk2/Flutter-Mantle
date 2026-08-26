// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/inputs/types.dart';

part 'pin_input.g.dart';

/// Source-of-truth contract for PinInput: a row of one-character fields.
@MantleComponent(
  name: 'PinInput',
  variants: [
    MantleVariant('default'),
    MantleVariant('filled'),
    MantleVariant('unstyled'),
  ],
  properties: [
    MantleProperty<String>('value', nullable: true),
    MantleProperty<String>('defaultValue', nullable: true),
    MantleProperty<void Function(String)>('onChanged', nullable: true),
    MantleProperty<void Function(String)>('onComplete', nullable: true),
    MantleProperty<int>('length', nullable: true, defaultValue: 4),
    MantleProperty<String>('placeholder', nullable: true, defaultValue: '○'),
    MantleProperty<String>('gap', nullable: true, defaultValue: 'sm'),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('readOnly', nullable: true, defaultValue: false),
    MantleProperty<bool>('mask', nullable: true, defaultValue: false),
    MantleProperty<bool>('error', nullable: true, defaultValue: false),
    MantleProperty<bool>('manageFocus', nullable: true, defaultValue: true),
    MantleProperty<PinInputType>(
      'type',
      nullable: true,
      defaultValue: PinInputType.alphanumeric,
    ),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: inputDefaultRadius,
    ),
  ],
)
abstract class MantlePinInputContract {
  /// Builds the pin fields.
  @MantleComponent.slot()
  Widget root(PinInputContext context);
}
