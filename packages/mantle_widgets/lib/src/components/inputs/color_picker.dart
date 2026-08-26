// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/inputs/types.dart';

part 'color_picker.g.dart';

/// Source-of-truth contract for ColorPicker.
@MantleComponent(
  name: 'ColorPicker',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<String>('value', nullable: true),
    MantleProperty<String>('defaultValue', nullable: true),
    MantleProperty<void Function(String)>('onChanged', nullable: true),
    MantleProperty<void Function(String)>('onChangeEnd', nullable: true),
    MantleProperty<ColorFormat>(
      'format',
      nullable: true,
      defaultValue: ColorFormat.hex,
    ),
    MantleProperty<bool>('withPicker', nullable: true, defaultValue: true),
    MantleProperty<bool>('fullWidth', nullable: true, defaultValue: false),
    MantleProperty<List<String>>('swatches', nullable: true),
    MantleProperty<int>('swatchesPerRow', nullable: true, defaultValue: 7),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
  ],
)
abstract class MantleColorPickerContract {
  /// Builds the saturation area, sliders, and swatches.
  @MantleComponent.slot()
  Widget root(ColorPickerContext context);
}

/// Source-of-truth contract for ColorInput.
@MantleComponent(
  name: 'ColorInput',
  variants: [
    MantleVariant('default'),
    MantleVariant('filled'),
    MantleVariant('unstyled'),
  ],
  properties: [
    MantleProperty<String>('value', nullable: true),
    MantleProperty<String>('defaultValue', nullable: true),
    MantleProperty<void Function(String)>('onChanged', nullable: true),
    MantleProperty<String>('placeholder', nullable: true),
    MantleProperty<Widget>('label', nullable: true),
    MantleProperty<Widget>('description', nullable: true),
    MantleProperty<Widget>('error', nullable: true),
    MantleProperty<ColorFormat>(
      'format',
      nullable: true,
      defaultValue: ColorFormat.hex,
    ),
    MantleProperty<bool>('withPicker', nullable: true, defaultValue: true),
    MantleProperty<bool>('withPreview', nullable: true, defaultValue: true),
    MantleProperty<bool>('disallowInput', nullable: true, defaultValue: false),
    MantleProperty<bool>('fixOnBlur', nullable: true, defaultValue: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('required', nullable: true, defaultValue: false),
    MantleProperty<List<String>>('swatches', nullable: true),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: inputDefaultRadius,
    ),
  ],
)
abstract class MantleColorInputContract {
  /// Builds the color text field and picker.
  @MantleComponent.slot()
  Widget root(ColorInputContext context);
}

/// Source-of-truth contract for HueSlider.
@MantleComponent(
  name: 'HueSlider',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<double>('value'),
    MantleProperty<void Function(double)>('onChanged', nullable: true),
    MantleProperty<void Function(double)>('onChangeEnd', nullable: true),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
  ],
)
abstract class MantleHueSliderContract {
  /// Builds the hue slider.
  @MantleComponent.slot()
  Widget root(HueSliderContext context);
}

/// Source-of-truth contract for AlphaSlider.
@MantleComponent(
  name: 'AlphaSlider',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<double>('value'),
    MantleProperty<String>('color'),
    MantleProperty<void Function(double)>('onChanged', nullable: true),
    MantleProperty<void Function(double)>('onChangeEnd', nullable: true),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
  ],
)
abstract class MantleAlphaSliderContract {
  /// Builds the alpha slider.
  @MantleComponent.slot()
  Widget root(AlphaSliderContext context);
}
