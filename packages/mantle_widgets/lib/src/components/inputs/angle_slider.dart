// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'angle_slider.g.dart';

/// Source-of-truth contract for AngleSlider.
@MantleComponent(
  name: 'AngleSlider',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<double>('value', nullable: true),
    MantleProperty<double>('defaultValue', nullable: true, defaultValue: 0.0),
    MantleProperty<void Function(double)>('onChanged', nullable: true),
    MantleProperty<void Function(double)>('onChangeEnd', nullable: true),
    MantleProperty<double>('step', nullable: true, defaultValue: 1.0),
    MantleProperty<double>('size', nullable: true, defaultValue: 60.0),
    MantleProperty<double>('thumbSize', nullable: true),
    MantleProperty<bool>('withLabel', nullable: true, defaultValue: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
  ],
)
abstract class MantleAngleSliderContract {
  /// Builds the radial angle slider.
  @MantleComponent.slot()
  Widget root(AngleSliderContext context);
}
