// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/inputs/types.dart';

part 'chip.g.dart';

/// Source-of-truth contract for Chip.
@MantleComponent(
  name: 'Chip',
  variants: [
    MantleVariant('default'),
    MantleVariant('outline'),
    MantleVariant('filled'),
    MantleVariant('light'),
  ],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<String>('value', nullable: true),
    MantleProperty<bool>('checked', nullable: true),
    MantleProperty<bool>(
      'defaultChecked',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<void Function(bool)>('onChanged', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<Widget>('icon', nullable: true),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: inputPillRadius,
    ),
  ],
)
abstract class MantleChipContract {
  /// Builds the chip.
  @MantleComponent.slot()
  Widget root(ChipContext context);
}

/// Source-of-truth contract for ChipGroup (Mantine `Chip.Group`).
@MantleComponent(
  name: 'ChipGroup',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<List<String>>('value', nullable: true),
    MantleProperty<List<String>>('defaultValue', nullable: true),
    MantleProperty<void Function(List<String>)>('onChanged', nullable: true),
    MantleProperty<bool>('multiple', nullable: true, defaultValue: false),
  ],
)
abstract class MantleChipGroupContract {
  /// Builds the group scope.
  @MantleComponent.slot()
  Widget root(ChipGroupContext context);
}
