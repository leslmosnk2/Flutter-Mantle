import 'package:mantle_basic/src/tokens/basic_colors.dart';
import 'package:mantle_basic/src/tokens/basic_tokens.dart';
import 'package:mantle_basic/src/widgets/inputs/inputs.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/inputs.dart';

/// Theme with input delegates only (avoids parallel-package compile issues).
MantleTheme inputTestTheme() {
  return MantleTheme(
    debugName: 'InputTest',
    colors: basicColors,
    typography: basicTypography,
    spacing: basicSpacing,
    radius: basicRadius,
    breakpoints: basicBreakpoints,
    primaryColor: 'blue',
    defaultRadius: 'sm',
    components: const DelegateRegistry({
      InputDelegate: BasicInputDelegate(),
      InputWrapperDelegate: BasicInputWrapperDelegate(),
      TextInputDelegate: BasicTextInputDelegate(),
      TextareaDelegate: BasicTextareaDelegate(),
      PasswordInputDelegate: BasicPasswordInputDelegate(),
      NumberInputDelegate: BasicNumberInputDelegate(),
      JsonInputDelegate: BasicJsonInputDelegate(),
      MaskInputDelegate: BasicMaskInputDelegate(),
      FileInputDelegate: BasicFileInputDelegate(),
      NativeSelectDelegate: BasicNativeSelectDelegate(),
      PinInputDelegate: BasicPinInputDelegate(),
      CheckboxDelegate: BasicCheckboxDelegate(),
      CheckboxGroupDelegate: BasicCheckboxGroupDelegate(),
      SwitchDelegate: BasicSwitchDelegate(),
      SwitchGroupDelegate: BasicSwitchGroupDelegate(),
      RadioDelegate: BasicRadioDelegate(),
      RadioGroupDelegate: BasicRadioGroupDelegate(),
      ChipDelegate: BasicChipDelegate(),
      ChipGroupDelegate: BasicChipGroupDelegate(),
      SliderDelegate: BasicSliderDelegate(),
      RangeSliderDelegate: BasicRangeSliderDelegate(),
      RatingDelegate: BasicRatingDelegate(),
      SegmentedControlDelegate: BasicSegmentedControlDelegate(),
      FieldsetDelegate: BasicFieldsetDelegate(),
      ColorPickerDelegate: BasicColorPickerDelegate(),
      ColorInputDelegate: BasicColorInputDelegate(),
      HueSliderDelegate: BasicHueSliderDelegate(),
      AlphaSliderDelegate: BasicAlphaSliderDelegate(),
      AngleSliderDelegate: BasicAngleSliderDelegate(),
    }),
  );
}
