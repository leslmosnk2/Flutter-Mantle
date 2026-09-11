// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [JsonInput].
enum JsonInputVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The unstyled variant.
  unstyled,
}

/// Resolved visual values for [JsonInput].
@immutable
class JsonInputStyle {
  /// Creates a [JsonInputStyle].
  const JsonInputStyle();

  /// Returns a copy of this [JsonInputStyle] with selected fields replaced.
  JsonInputStyle copyWith() => this;

  /// Merges [other] over this [JsonInputStyle]; null fields keep this value.
  JsonInputStyle mergeWith(JsonInputStyle? other) => this;
}

/// Resolved interaction state for [JsonInput].
@immutable
class JsonInputState {
  /// Creates a [JsonInputState].
  const JsonInputState();
}

/// Values passed to [JsonInputDelegate] slots during build.
@immutable
class JsonInputContext {
  /// Creates a [JsonInputContext].
  const JsonInputContext({
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
    this.validationError,
    required this.disabled,
    required this.readOnly,
    required this.required,
    required this.formatOnBlur,
    this.withAsterisk,
    required this.minRows,
    required this.size,
    required this.radius,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final JsonInputStyle style;

  /// Resolved interaction state for this build.
  final JsonInputState state;

  /// The visual variant selected by the constructor.
  final JsonInputVariant variant;

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

  /// The validation error.
  final Widget? validationError;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether the value cannot be edited.
  final bool readOnly;

  /// Whether required.
  final bool required;

  /// Whether format on blur.
  final bool formatOnBlur;

  /// Whether with asterisk.
  final bool? withAsterisk;

  /// The min rows.
  final int minRows;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class JsonInputRoot {
  /// Creates a [JsonInputRoot] from a builder function.
  const JsonInputRoot(this._build);

  final Widget Function(JsonInputContext context) _build;

  /// Invokes this slot with [context].
  Widget call(JsonInputContext context) => _build(context);
}

/// Theme-owned composition slots for [JsonInput].
abstract class JsonInputDelegate extends ComponentDelegate {
  /// Creates a [JsonInputDelegate].
  const JsonInputDelegate();

  /// Builds the composition root.
  Widget root(JsonInputContext context);
}

/// A [JsonInput] widget resolved through [JsonInputDelegate].
class JsonInput extends StatelessWidget {
  /// Creates a [JsonInput].
  const JsonInput({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.validationError,
    this.disabled,
    this.readOnly,
    this.required,
    this.formatOnBlur,
    this.withAsterisk,
    this.minRows,
    this.size,
    this.radius,
    this.style,
  }) : variant = JsonInputVariant.defaults;

  /// Creates a filled [JsonInput].
  const JsonInput.filled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.validationError,
    this.disabled,
    this.readOnly,
    this.required,
    this.formatOnBlur,
    this.withAsterisk,
    this.minRows,
    this.size,
    this.radius,
    this.style,
  }) : variant = JsonInputVariant.filled;

  /// Creates an unstyled [JsonInput].
  const JsonInput.unstyled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.validationError,
    this.disabled,
    this.readOnly,
    this.required,
    this.formatOnBlur,
    this.withAsterisk,
    this.minRows,
    this.size,
    this.radius,
    this.style,
  }) : variant = JsonInputVariant.unstyled;

  /// The visual variant selected by the constructor.
  final JsonInputVariant variant;

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

  /// The validation error.
  final Widget? validationError;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether the value cannot be edited.
  final bool? readOnly;

  /// Whether required.
  final bool? required;

  /// Whether format on blur.
  final bool? formatOnBlur;

  /// Whether with asterisk.
  final bool? withAsterisk;

  /// The min rows.
  final int? minRows;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final JsonInputStyle? style;

  /// Resolves properties and builds via [JsonInputDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedPlaceholder = placeholder;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedValidationError = validationError;
    final resolvedDisabled = disabled ?? false;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedRequired = required ?? false;
    final resolvedFormatOnBlur = formatOnBlur ?? false;
    final resolvedWithAsterisk = withAsterisk;
    final resolvedMinRows = minRows ?? 4;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = JsonInputStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = JsonInputState();
    final jsonInputContext = JsonInputContext(
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
      validationError: resolvedValidationError,
      disabled: resolvedDisabled,
      readOnly: resolvedReadOnly,
      required: resolvedRequired,
      formatOnBlur: resolvedFormatOnBlur,
      withAsterisk: resolvedWithAsterisk,
      minRows: resolvedMinRows,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<JsonInputDelegate>();
    return delegate.root(jsonInputContext);
  }
}
