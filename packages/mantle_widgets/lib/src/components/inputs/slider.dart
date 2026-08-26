// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/inputs/types.dart';

part 'slider.g.dart';

/// Source-of-truth contract for Slider.
@MantleComponent(
  name: 'Slider',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<double>('value', nullable: true),
    MantleProperty<double>('defaultValue', nullable: true),
    MantleProperty<void Function(double)>('onChanged', nullable: true),
    MantleProperty<void Function(double)>('onChangeEnd', nullable: true),
    MantleProperty<double>('min', nullable: true, defaultValue: 0.0),
    MantleProperty<double>('max', nullable: true, defaultValue: 100.0),
    MantleProperty<double>('step', nullable: true, defaultValue: 1.0),
    MantleProperty<List<SliderMark>>('marks', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('labelAlwaysOn', nullable: true, defaultValue: false),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: inputPillRadius,
    ),
  ],
)
abstract class MantleSliderContract {
  /// Builds the slider.
  @MantleComponent.slot()
  Widget root(SliderContext context);
}

/// Source-of-truth contract for RangeSlider.
@MantleComponent(
  name: 'RangeSlider',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<RangeSliderValue>('value', nullable: true),
    MantleProperty<RangeSliderValue>('defaultValue', nullable: true),
    MantleProperty<void Function(RangeSliderValue)>(
      'onChanged',
      nullable: true,
    ),
    MantleProperty<void Function(RangeSliderValue)>(
      'onChangeEnd',
      nullable: true,
    ),
    MantleProperty<double>('min', nullable: true, defaultValue: 0.0),
    MantleProperty<double>('max', nullable: true, defaultValue: 100.0),
    MantleProperty<double>('step', nullable: true, defaultValue: 1.0),
    MantleProperty<double>('minRange', nullable: true, defaultValue: 0.0),
    MantleProperty<List<SliderMark>>('marks', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('labelAlwaysOn', nullable: true, defaultValue: false),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: inputPillRadius,
    ),
  ],
)
abstract class MantleRangeSliderContract {
  /// Builds the range slider.
  @MantleComponent.slot()
  Widget root(RangeSliderContext context);
}
