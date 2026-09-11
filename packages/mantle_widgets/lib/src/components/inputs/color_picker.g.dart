// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_picker.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [ColorPicker].
enum ColorPickerVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ColorPicker].
@immutable
class ColorPickerStyle {
  /// Creates a [ColorPickerStyle].
  const ColorPickerStyle();

  /// Returns a copy of this [ColorPickerStyle] with selected fields replaced.
  ColorPickerStyle copyWith() => this;

  /// Merges [other] over this [ColorPickerStyle]; null fields keep this value.
  ColorPickerStyle mergeWith(ColorPickerStyle? other) => this;
}

/// Resolved interaction state for [ColorPicker].
@immutable
class ColorPickerState {
  /// Creates a [ColorPickerState].
  const ColorPickerState();
}

/// Values passed to [ColorPickerDelegate] slots during build.
@immutable
class ColorPickerContext {
  /// Creates a [ColorPickerContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ColorPickerStyle style;

  /// Resolved interaction state for this build.
  final ColorPickerState state;

  /// The visual variant selected by the constructor.
  final ColorPickerVariant variant;

  /// The controlled value.
  final String? value;

  /// Initial value when [value] is omitted.
  final String? defaultValue;

  /// Called when the value changes.
  final void Function(String)? onChanged;

  /// Called when change end.
  final void Function(String)? onChangeEnd;

  /// The format.
  final ColorFormat format;

  /// Whether with picker.
  final bool withPicker;

  /// Whether full width.
  final bool fullWidth;

  /// The swatches.
  final List<String>? swatches;

  /// The swatches per row.
  final int swatchesPerRow;

  /// Size token.
  final String size;
}

/// Builder for the root slot.
class ColorPickerRoot {
  /// Creates a [ColorPickerRoot] from a builder function.
  const ColorPickerRoot(this._build);

  final Widget Function(ColorPickerContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ColorPickerContext context) => _build(context);
}

/// Theme-owned composition slots for [ColorPicker].
abstract class ColorPickerDelegate extends ComponentDelegate {
  /// Creates a [ColorPickerDelegate].
  const ColorPickerDelegate();

  /// Builds the composition root.
  Widget root(ColorPickerContext context);
}

/// A [ColorPicker] widget resolved through [ColorPickerDelegate].
class ColorPicker extends StatelessWidget {
  /// Creates a [ColorPicker].
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

  /// The visual variant selected by the constructor.
  final ColorPickerVariant variant;

  /// The controlled value.
  final String? value;

  /// Initial value when [value] is omitted.
  final String? defaultValue;

  /// Called when the value changes.
  final void Function(String)? onChanged;

  /// Called when change end.
  final void Function(String)? onChangeEnd;

  /// The format.
  final ColorFormat? format;

  /// Whether with picker.
  final bool? withPicker;

  /// Whether full width.
  final bool? fullWidth;

  /// The swatches.
  final List<String>? swatches;

  /// The swatches per row.
  final int? swatchesPerRow;

  /// Size token.
  final String? size;

  /// Style overrides merged over theme defaults.
  final ColorPickerStyle? style;

  /// Resolves properties and builds via [ColorPickerDelegate].
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

/// Visual variants of [ColorInput].
enum ColorInputVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The unstyled variant.
  unstyled,
}

/// Resolved visual values for [ColorInput].
@immutable
class ColorInputStyle {
  /// Creates a [ColorInputStyle].
  const ColorInputStyle();

  /// Returns a copy of this [ColorInputStyle] with selected fields replaced.
  ColorInputStyle copyWith() => this;

  /// Merges [other] over this [ColorInputStyle]; null fields keep this value.
  ColorInputStyle mergeWith(ColorInputStyle? other) => this;
}

/// Resolved interaction state for [ColorInput].
@immutable
class ColorInputState {
  /// Creates a [ColorInputState].
  const ColorInputState();
}

/// Values passed to [ColorInputDelegate] slots during build.
@immutable
class ColorInputContext {
  /// Creates a [ColorInputContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ColorInputStyle style;

  /// Resolved interaction state for this build.
  final ColorInputState state;

  /// The visual variant selected by the constructor.
  final ColorInputVariant variant;

  /// The controlled value.
  final String? value;

  /// Initial value when [value] is omitted.
  final String? defaultValue;

  /// Called when the value changes.
  final void Function(String)? onChanged;

  /// Placeholder text when empty.
  final String? placeholder;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// The format.
  final ColorFormat format;

  /// Whether with picker.
  final bool withPicker;

  /// Whether with preview.
  final bool withPreview;

  /// Whether disallow input.
  final bool disallowInput;

  /// Whether fix on blur.
  final bool fixOnBlur;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether required.
  final bool required;

  /// The swatches.
  final List<String>? swatches;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class ColorInputRoot {
  /// Creates a [ColorInputRoot] from a builder function.
  const ColorInputRoot(this._build);

  final Widget Function(ColorInputContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ColorInputContext context) => _build(context);
}

/// Theme-owned composition slots for [ColorInput].
abstract class ColorInputDelegate extends ComponentDelegate {
  /// Creates a [ColorInputDelegate].
  const ColorInputDelegate();

  /// Builds the composition root.
  Widget root(ColorInputContext context);
}

/// A [ColorInput] widget resolved through [ColorInputDelegate].
class ColorInput extends StatelessWidget {
  /// Creates a [ColorInput].
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

  /// Creates a filled [ColorInput].
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

  /// Creates an unstyled [ColorInput].
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

  /// The visual variant selected by the constructor.
  final ColorInputVariant variant;

  /// The controlled value.
  final String? value;

  /// Initial value when [value] is omitted.
  final String? defaultValue;

  /// Called when the value changes.
  final void Function(String)? onChanged;

  /// Placeholder text when empty.
  final String? placeholder;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// The format.
  final ColorFormat? format;

  /// Whether with picker.
  final bool? withPicker;

  /// Whether with preview.
  final bool? withPreview;

  /// Whether disallow input.
  final bool? disallowInput;

  /// Whether fix on blur.
  final bool? fixOnBlur;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether required.
  final bool? required;

  /// The swatches.
  final List<String>? swatches;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final ColorInputStyle? style;

  /// Resolves properties and builds via [ColorInputDelegate].
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

/// Visual variants of [HueSlider].
enum HueSliderVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [HueSlider].
@immutable
class HueSliderStyle {
  /// Creates a [HueSliderStyle].
  const HueSliderStyle();

  /// Returns a copy of this [HueSliderStyle] with selected fields replaced.
  HueSliderStyle copyWith() => this;

  /// Merges [other] over this [HueSliderStyle]; null fields keep this value.
  HueSliderStyle mergeWith(HueSliderStyle? other) => this;
}

/// Resolved interaction state for [HueSlider].
@immutable
class HueSliderState {
  /// Creates a [HueSliderState].
  const HueSliderState();
}

/// Values passed to [HueSliderDelegate] slots during build.
@immutable
class HueSliderContext {
  /// Creates a [HueSliderContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final HueSliderStyle style;

  /// Resolved interaction state for this build.
  final HueSliderState state;

  /// The visual variant selected by the constructor.
  final HueSliderVariant variant;

  /// The controlled value.
  final double value;

  /// Called when the value changes.
  final void Function(double)? onChanged;

  /// Called when change end.
  final void Function(double)? onChangeEnd;

  /// Size token.
  final String size;
}

/// Builder for the root slot.
class HueSliderRoot {
  /// Creates a [HueSliderRoot] from a builder function.
  const HueSliderRoot(this._build);

  final Widget Function(HueSliderContext context) _build;

  /// Invokes this slot with [context].
  Widget call(HueSliderContext context) => _build(context);
}

/// Theme-owned composition slots for [HueSlider].
abstract class HueSliderDelegate extends ComponentDelegate {
  /// Creates a [HueSliderDelegate].
  const HueSliderDelegate();

  /// Builds the composition root.
  Widget root(HueSliderContext context);
}

/// A [HueSlider] widget resolved through [HueSliderDelegate].
class HueSlider extends StatelessWidget {
  /// Creates a [HueSlider].
  const HueSlider({
    super.key,
    required this.value,
    this.onChanged,
    this.onChangeEnd,
    this.size,
    this.style,
  }) : variant = HueSliderVariant.defaults;

  /// The visual variant selected by the constructor.
  final HueSliderVariant variant;

  /// The controlled value.
  final double value;

  /// Called when the value changes.
  final void Function(double)? onChanged;

  /// Called when change end.
  final void Function(double)? onChangeEnd;

  /// Size token.
  final String? size;

  /// Style overrides merged over theme defaults.
  final HueSliderStyle? style;

  /// Resolves properties and builds via [HueSliderDelegate].
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

/// Visual variants of [AlphaSlider].
enum AlphaSliderVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [AlphaSlider].
@immutable
class AlphaSliderStyle {
  /// Creates an [AlphaSliderStyle].
  const AlphaSliderStyle();

  /// Returns a copy of this [AlphaSliderStyle] with selected fields replaced.
  AlphaSliderStyle copyWith() => this;

  /// Merges [other] over this [AlphaSliderStyle]; null fields keep this value.
  AlphaSliderStyle mergeWith(AlphaSliderStyle? other) => this;
}

/// Resolved interaction state for [AlphaSlider].
@immutable
class AlphaSliderState {
  /// Creates an [AlphaSliderState].
  const AlphaSliderState();
}

/// Values passed to [AlphaSliderDelegate] slots during build.
@immutable
class AlphaSliderContext {
  /// Creates an [AlphaSliderContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AlphaSliderStyle style;

  /// Resolved interaction state for this build.
  final AlphaSliderState state;

  /// The visual variant selected by the constructor.
  final AlphaSliderVariant variant;

  /// The controlled value.
  final double value;

  /// Foreground or accent color.
  final String color;

  /// Called when the value changes.
  final void Function(double)? onChanged;

  /// Called when change end.
  final void Function(double)? onChangeEnd;

  /// Size token.
  final String size;
}

/// Builder for the root slot.
class AlphaSliderRoot {
  /// Creates an [AlphaSliderRoot] from a builder function.
  const AlphaSliderRoot(this._build);

  final Widget Function(AlphaSliderContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AlphaSliderContext context) => _build(context);
}

/// Theme-owned composition slots for [AlphaSlider].
abstract class AlphaSliderDelegate extends ComponentDelegate {
  /// Creates an [AlphaSliderDelegate].
  const AlphaSliderDelegate();

  /// Builds the composition root.
  Widget root(AlphaSliderContext context);
}

/// An [AlphaSlider] widget resolved through [AlphaSliderDelegate].
class AlphaSlider extends StatelessWidget {
  /// Creates an [AlphaSlider].
  const AlphaSlider({
    super.key,
    required this.value,
    required this.color,
    this.onChanged,
    this.onChangeEnd,
    this.size,
    this.style,
  }) : variant = AlphaSliderVariant.defaults;

  /// The visual variant selected by the constructor.
  final AlphaSliderVariant variant;

  /// The controlled value.
  final double value;

  /// Foreground or accent color.
  final String color;

  /// Called when the value changes.
  final void Function(double)? onChanged;

  /// Called when change end.
  final void Function(double)? onChangeEnd;

  /// Size token.
  final String? size;

  /// Style overrides merged over theme defaults.
  final AlphaSliderStyle? style;

  /// Resolves properties and builds via [AlphaSliderDelegate].
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
