// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/inputs/types.dart';

part 'segmented_control.g.dart';

/// Source-of-truth contract for SegmentedControl.
@MantleComponent(
  name: 'SegmentedControl',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<SegmentedControlItem>>('data'),
    MantleProperty<String>('value', nullable: true),
    MantleProperty<String>('defaultValue', nullable: true),
    MantleProperty<void Function(String)>('onChanged', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('readOnly', nullable: true, defaultValue: false),
    MantleProperty<bool>('fullWidth', nullable: true, defaultValue: false),
    MantleProperty<bool>(
      'withItemsBorders',
      nullable: true,
      defaultValue: true,
    ),
    MantleProperty<Axis>(
      'orientation',
      nullable: true,
      defaultValue: Axis.horizontal,
    ),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: inputDefaultRadius,
    ),
  ],
)
abstract class MantleSegmentedControlContract {
  /// Builds the segmented control.
  @MantleComponent.slot()
  Widget root(SegmentedControlContext context);
}
