// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/inputs/types.dart';

part 'switch.g.dart';

/// Source-of-truth contract for Switch.
@MantleComponent(
  name: 'Switch',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<bool>('checked', nullable: true),
    MantleProperty<bool>(
      'defaultChecked',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<ValueChanged<bool>>('onChanged', nullable: true),
    MantleProperty<String>('value', nullable: true),
    MantleProperty<Widget>('label', nullable: true),
    MantleProperty<Widget>('description', nullable: true),
    MantleProperty<Widget>('error', nullable: true),
    MantleProperty<Widget>('onLabel', nullable: true),
    MantleProperty<Widget>('offLabel', nullable: true),
    MantleProperty<Widget>('thumbIcon', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<String>('color', nullable: true),
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
abstract class MantleSwitchContract {
  /// Builds the switch and optional label.
  @MantleComponent.slot()
  Widget root(SwitchContext context);
}

/// Source-of-truth contract for SwitchGroup (Mantine `Switch.Group`).
@MantleComponent(
  name: 'SwitchGroup',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<List<String>>('value', nullable: true),
    MantleProperty<List<String>>('defaultValue', nullable: true),
    MantleProperty<void Function(List<String>)>('onChanged', nullable: true),
    MantleProperty<Widget>('label', nullable: true),
    MantleProperty<Widget>('description', nullable: true),
    MantleProperty<Widget>('error', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('readOnly', nullable: true, defaultValue: false),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
  ],
)
abstract class MantleSwitchGroupContract {
  /// Builds the group wrapper and scope.
  @MantleComponent.slot()
  Widget root(SwitchGroupContext context);
}
