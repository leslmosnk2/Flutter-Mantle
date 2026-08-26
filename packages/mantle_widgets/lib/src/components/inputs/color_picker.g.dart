// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_picker.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum ColorPickerVariant { defaults }

@immutable
class ColorPickerStyle {
  const ColorPickerStyle();

  ColorPickerStyle copyWith() => this;

  ColorPickerStyle mergeWith(ColorPickerStyle? other) => this;
}

@immutable
class ColorPickerState {
  const ColorPickerState();
}

@immutable
class ColorPickerContext {
  const ColorPickerContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.onChangeEnd,
    required this.format,
    required this.withPicker,
    required this.fullWidth,
    this.swatches,
    required this.swatchesPerRow,
    required this.size,
  });

  final BuildContext context;
  final ColorPickerStyle style;
  final ColorPickerState state;
  final ColorPickerVariant variant;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final void Function(String)? onChangeEnd;
  final ColorFormat format;
  final bool withPicker;
  final bool fullWidth;
  final List<String>? swatches;
  final int swatchesPerRow;
  final String size;
}

class ColorPickerRoot {
  const ColorPickerRoot(this._build);

  final Widget Function(ColorPickerContext context) _build;

  Widget call(ColorPickerContext context) => _build(context);
}

abstract class ColorPickerDelegate extends ComponentDelegate {
  const ColorPickerDelegate();

  Widget root(ColorPickerContext context);
}

class ColorPicker extends StatelessWidget {
  const ColorPicker({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.onChangeEnd,
    this.format,
    this.withPicker,
    this.fullWidth,
    this.swatches,
    this.swatchesPerRow,
    this.size,
    this.style,
  }) : variant = ColorPickerVariant.defaults;

  final ColorPickerVariant variant;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final void Function(String)? onChangeEnd;
  final ColorFormat? format;
  final bool? withPicker;
  final bool? fullWidth;
  final List<String>? swatches;
  final int? swatchesPerRow;
  final String? size;
  final ColorPickerStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedOnChangeEnd = onChangeEnd;
    final resolvedFormat = format ?? ColorFormat.hex;
    final resolvedWithPicker = withPicker ?? true;
    final resolvedFullWidth = fullWidth ?? false;
    final resolvedSwatches = swatches;
    final resolvedSwatchesPerRow = swatchesPerRow ?? 7;
    final resolvedSize = size ?? 'md';

    const fromProps = ColorPickerStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ColorPickerState();
    final colorPickerContext = ColorPickerContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      onChangeEnd: resolvedOnChangeEnd,
      format: resolvedFormat,
      withPicker: resolvedWithPicker,
      fullWidth: resolvedFullWidth,
      swatches: resolvedSwatches,
      swatchesPerRow: resolvedSwatchesPerRow,
      size: resolvedSize,
    );
    final delegate = MantleTheme.of(context).delegate<ColorPickerDelegate>();
    return delegate.root(colorPickerContext);
  }
}

enum ColorInputVariant { defaults, filled, unstyled }

@immutable
class ColorInputStyle {
  const ColorInputStyle();

  ColorInputStyle copyWith() => this;

  ColorInputStyle mergeWith(ColorInputStyle? other) => this;
}

@immutable
class ColorInputState {
  const ColorInputState();
}

@immutable
class ColorInputContext {
  const ColorInputContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    required this.format,
    required this.withPicker,
    required this.withPreview,
    required this.disallowInput,
    required this.fixOnBlur,
    required this.disabled,
    required this.required,
    this.swatches,
    required this.size,
    required this.radius,
  });

  final BuildContext context;
  final ColorInputStyle style;
  final ColorInputState state;
  final ColorInputVariant variant;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final String? placeholder;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final ColorFormat format;
  final bool withPicker;
  final bool withPreview;
  final bool disallowInput;
  final bool fixOnBlur;
  final bool disabled;
  final bool required;
  final List<String>? swatches;
  final String size;
  final BorderRadiusGeometry radius;
}

class ColorInputRoot {
  const ColorInputRoot(this._build);

  final Widget Function(ColorInputContext context) _build;

  Widget call(ColorInputContext context) => _build(context);
}

abstract class ColorInputDelegate extends ComponentDelegate {
  const ColorInputDelegate();

  Widget root(ColorInputContext context);
}

class ColorInput extends StatelessWidget {
  const ColorInput({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.format,
    this.withPicker,
    this.withPreview,
    this.disallowInput,
    this.fixOnBlur,
    this.disabled,
    this.required,
    this.swatches,
    this.size,
    this.radius,
    this.style,
  }) : variant = ColorInputVariant.defaults;

  const ColorInput.filled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.format,
    this.withPicker,
    this.withPreview,
    this.disallowInput,
    this.fixOnBlur,
    this.disabled,
    this.required,
    this.swatches,
    this.size,
    this.radius,
    this.style,
  }) : variant = ColorInputVariant.filled;

  const ColorInput.unstyled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.format,
    this.withPicker,
    this.withPreview,
    this.disallowInput,
    this.fixOnBlur,
    this.disabled,
    this.required,
    this.swatches,
    this.size,
    this.radius,
    this.style,
  }) : variant = ColorInputVariant.unstyled;

  final ColorInputVariant variant;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final String? placeholder;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final ColorFormat? format;
  final bool? withPicker;
  final bool? withPreview;
  final bool? disallowInput;
  final bool? fixOnBlur;
  final bool? disabled;
  final bool? required;
  final List<String>? swatches;
  final String? size;
  final BorderRadiusGeometry? radius;
  final ColorInputStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedPlaceholder = placeholder;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedFormat = format ?? ColorFormat.hex;
    final resolvedWithPicker = withPicker ?? true;
    final resolvedWithPreview = withPreview ?? true;
    final resolvedDisallowInput = disallowInput ?? false;
    final resolvedFixOnBlur = fixOnBlur ?? true;
    final resolvedDisabled = disabled ?? false;
    final resolvedRequired = required ?? false;
    final resolvedSwatches = swatches;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = ColorInputStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ColorInputState();
    final colorInputContext = ColorInputContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      placeholder: resolvedPlaceholder,
      label: resolvedLabel,
      description: resolvedDescription,
      error: resolvedError,
      format: resolvedFormat,
      withPicker: resolvedWithPicker,
      withPreview: resolvedWithPreview,
      disallowInput: resolvedDisallowInput,
      fixOnBlur: resolvedFixOnBlur,
      disabled: resolvedDisabled,
      required: resolvedRequired,
      swatches: resolvedSwatches,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<ColorInputDelegate>();
    return delegate.root(colorInputContext);
  }
}

enum HueSliderVariant { defaults }

@immutable
class HueSliderStyle {
  const HueSliderStyle();

  HueSliderStyle copyWith() => this;

  HueSliderStyle mergeWith(HueSliderStyle? other) => this;
}

@immutable
class HueSliderState {
  const HueSliderState();
}

@immutable
class HueSliderContext {
  const HueSliderContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    this.onChanged,
    this.onChangeEnd,
    required this.size,
  });

  final BuildContext context;
  final HueSliderStyle style;
  final HueSliderState state;
  final HueSliderVariant variant;
  final double value;
  final void Function(double)? onChanged;
  final void Function(double)? onChangeEnd;
  final String size;
}

class HueSliderRoot {
  const HueSliderRoot(this._build);

  final Widget Function(HueSliderContext context) _build;

  Widget call(HueSliderContext context) => _build(context);
}

abstract class HueSliderDelegate extends ComponentDelegate {
  const HueSliderDelegate();

  Widget root(HueSliderContext context);
}

class HueSlider extends StatelessWidget {
  const HueSlider({
    super.key,
    required this.value,
    this.onChanged,
    this.onChangeEnd,
    this.size,
    this.style,
  }) : variant = HueSliderVariant.defaults;

  final HueSliderVariant variant;
  final double value;
  final void Function(double)? onChanged;
  final void Function(double)? onChangeEnd;
  final String? size;
  final HueSliderStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedOnChanged = onChanged;
    final resolvedOnChangeEnd = onChangeEnd;
    final resolvedSize = size ?? 'md';

    const fromProps = HueSliderStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = HueSliderState();
    final hueSliderContext = HueSliderContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      onChanged: resolvedOnChanged,
      onChangeEnd: resolvedOnChangeEnd,
      size: resolvedSize,
    );
    final delegate = MantleTheme.of(context).delegate<HueSliderDelegate>();
    return delegate.root(hueSliderContext);
  }
}

enum AlphaSliderVariant { defaults }

@immutable
class AlphaSliderStyle {
  const AlphaSliderStyle();

  AlphaSliderStyle copyWith() => this;

  AlphaSliderStyle mergeWith(AlphaSliderStyle? other) => this;
}

@immutable
class AlphaSliderState {
  const AlphaSliderState();
}

@immutable
class AlphaSliderContext {
  const AlphaSliderContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    required this.color,
    this.onChanged,
    this.onChangeEnd,
    required this.size,
  });

  final BuildContext context;
  final AlphaSliderStyle style;
  final AlphaSliderState state;
  final AlphaSliderVariant variant;
  final double value;
  final String color;
  final void Function(double)? onChanged;
  final void Function(double)? onChangeEnd;
  final String size;
}

class AlphaSliderRoot {
  const AlphaSliderRoot(this._build);

  final Widget Function(AlphaSliderContext context) _build;

  Widget call(AlphaSliderContext context) => _build(context);
}

abstract class AlphaSliderDelegate extends ComponentDelegate {
  const AlphaSliderDelegate();

  Widget root(AlphaSliderContext context);
}

class AlphaSlider extends StatelessWidget {
  const AlphaSlider({
    super.key,
    required this.value,
    required this.color,
    this.onChanged,
    this.onChangeEnd,
    this.size,
    this.style,
  }) : variant = AlphaSliderVariant.defaults;

  final AlphaSliderVariant variant;
  final double value;
  final String color;
  final void Function(double)? onChanged;
  final void Function(double)? onChangeEnd;
  final String? size;
  final AlphaSliderStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedColor = color;
    final resolvedOnChanged = onChanged;
    final resolvedOnChangeEnd = onChangeEnd;
    final resolvedSize = size ?? 'md';

    const fromProps = AlphaSliderStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AlphaSliderState();
    final alphaSliderContext = AlphaSliderContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      color: resolvedColor,
      onChanged: resolvedOnChanged,
      onChangeEnd: resolvedOnChangeEnd,
      size: resolvedSize,
    );
    final delegate = MantleTheme.of(context).delegate<AlphaSliderDelegate>();
    return delegate.root(alphaSliderContext);
  }
}
