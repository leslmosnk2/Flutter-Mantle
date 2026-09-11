// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [NumberInput].
enum NumberInputVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The unstyled variant.
  unstyled,
}

/// Resolved visual values for [NumberInput].
@immutable
class NumberInputStyle {
  /// Creates a [NumberInputStyle].
  const NumberInputStyle();

  /// Returns a copy of this [NumberInputStyle] with selected fields replaced.
  NumberInputStyle copyWith() => this;

  /// Merges [other] over this [NumberInputStyle]; null fields keep this value.
  NumberInputStyle mergeWith(NumberInputStyle? other) => this;
}

/// Resolved interaction state for [NumberInput].
@immutable
class NumberInputState {
  /// Creates a [NumberInputState].
  const NumberInputState();
}

/// Values passed to [NumberInputDelegate] slots during build.
@immutable
class NumberInputContext {
  /// Creates a [NumberInputContext].
  const NumberInputContext({
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
    required this.disabled,
    required this.readOnly,
    required this.required,
    this.withAsterisk,
    required this.hideControls,
    required this.allowNegative,
    required this.allowDecimal,
    this.min,
    this.max,
    required this.step,
    required this.clampBehavior,
    required this.size,
    required this.radius,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final NumberInputStyle style;

  /// Resolved interaction state for this build.
  final NumberInputState state;

  /// The visual variant selected by the constructor.
  final NumberInputVariant variant;

  /// The controlled value.
  final double? value;

  /// Initial value when [value] is omitted.
  final double? defaultValue;

  /// Called when the value changes.
  final void Function(double)? onChanged;

  /// Placeholder text when empty.
  final String? placeholder;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether the value cannot be edited.
  final bool readOnly;

  /// Whether required.
  final bool required;

  /// Whether with asterisk.
  final bool? withAsterisk;

  /// Whether hide controls.
  final bool hideControls;

  /// Whether allow negative.
  final bool allowNegative;

  /// Whether allow decimal.
  final bool allowDecimal;

  /// The min.
  final double? min;

  /// The max.
  final double? max;

  /// The step.
  final double step;

  /// The clamp behavior.
  final NumberClampBehavior clampBehavior;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class NumberInputRoot {
  /// Creates a [NumberInputRoot] from a builder function.
  const NumberInputRoot(this._build);

  final Widget Function(NumberInputContext context) _build;

  /// Invokes this slot with [context].
  Widget call(NumberInputContext context) => _build(context);
}

/// Theme-owned composition slots for [NumberInput].
abstract class NumberInputDelegate extends ComponentDelegate {
  /// Creates a [NumberInputDelegate].
  const NumberInputDelegate();

  /// Builds the composition root.
  Widget root(NumberInputContext context);
}

/// A [NumberInput] widget resolved through [NumberInputDelegate].
class NumberInput extends StatelessWidget {
  /// Creates a [NumberInput].
  const NumberInput({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.hideControls,
    this.allowNegative,
    this.allowDecimal,
    this.min,
    this.max,
    this.step,
    this.clampBehavior,
    this.size,
    this.radius,
    this.style,
  }) : variant = NumberInputVariant.defaults;

  /// Creates a filled [NumberInput].
  const NumberInput.filled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.hideControls,
    this.allowNegative,
    this.allowDecimal,
    this.min,
    this.max,
    this.step,
    this.clampBehavior,
    this.size,
    this.radius,
    this.style,
  }) : variant = NumberInputVariant.filled;

  /// Creates an unstyled [NumberInput].
  const NumberInput.unstyled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.hideControls,
    this.allowNegative,
    this.allowDecimal,
    this.min,
    this.max,
    this.step,
    this.clampBehavior,
    this.size,
    this.radius,
    this.style,
  }) : variant = NumberInputVariant.unstyled;

  /// The visual variant selected by the constructor.
  final NumberInputVariant variant;

  /// The controlled value.
  final double? value;

  /// Initial value when [value] is omitted.
  final double? defaultValue;

  /// Called when the value changes.
  final void Function(double)? onChanged;

  /// Placeholder text when empty.
  final String? placeholder;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether the value cannot be edited.
  final bool? readOnly;

  /// Whether required.
  final bool? required;

  /// Whether with asterisk.
  final bool? withAsterisk;

  /// Whether hide controls.
  final bool? hideControls;

  /// Whether allow negative.
  final bool? allowNegative;

  /// Whether allow decimal.
  final bool? allowDecimal;

  /// The min.
  final double? min;

  /// The max.
  final double? max;

  /// The step.
  final double? step;

  /// The clamp behavior.
  final NumberClampBehavior? clampBehavior;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final NumberInputStyle? style;

  /// Resolves properties and builds via [NumberInputDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedPlaceholder = placeholder;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedDisabled = disabled ?? false;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedRequired = required ?? false;
    final resolvedWithAsterisk = withAsterisk;
    final resolvedHideControls = hideControls ?? false;
    final resolvedAllowNegative = allowNegative ?? true;
    final resolvedAllowDecimal = allowDecimal ?? true;
    final resolvedMin = min;
    final resolvedMax = max;
    final resolvedStep = step ?? 1.0;
    final resolvedClampBehavior = clampBehavior ?? NumberClampBehavior.blur;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = NumberInputStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = NumberInputState();
    final numberInputContext = NumberInputContext(
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
      disabled: resolvedDisabled,
      readOnly: resolvedReadOnly,
      required: resolvedRequired,
      withAsterisk: resolvedWithAsterisk,
      hideControls: resolvedHideControls,
      allowNegative: resolvedAllowNegative,
      allowDecimal: resolvedAllowDecimal,
      min: resolvedMin,
      max: resolvedMax,
      step: resolvedStep,
      clampBehavior: resolvedClampBehavior,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<NumberInputDelegate>();
    return delegate.root(numberInputContext);
  }
}
