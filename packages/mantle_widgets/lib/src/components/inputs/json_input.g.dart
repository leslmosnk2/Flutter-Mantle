// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum JsonInputVariant { defaults, filled, unstyled }

@immutable
class JsonInputStyle {
  const JsonInputStyle();

  JsonInputStyle copyWith() => this;

  JsonInputStyle mergeWith(JsonInputStyle? other) => this;
}

@immutable
class JsonInputState {
  const JsonInputState();
}

@immutable
class JsonInputContext {
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

  final BuildContext context;
  final JsonInputStyle style;
  final JsonInputState state;
  final JsonInputVariant variant;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final String? placeholder;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final Widget? validationError;
  final bool disabled;
  final bool readOnly;
  final bool required;
  final bool formatOnBlur;
  final bool? withAsterisk;
  final int minRows;
  final String size;
  final BorderRadiusGeometry radius;
}

class JsonInputRoot {
  const JsonInputRoot(this._build);

  final Widget Function(JsonInputContext context) _build;

  Widget call(JsonInputContext context) => _build(context);
}

abstract class JsonInputDelegate extends ComponentDelegate {
  const JsonInputDelegate();

  Widget root(JsonInputContext context);
}

class JsonInput extends StatelessWidget {
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

  final JsonInputVariant variant;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final String? placeholder;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final Widget? validationError;
  final bool? disabled;
  final bool? readOnly;
  final bool? required;
  final bool? formatOnBlur;
  final bool? withAsterisk;
  final int? minRows;
  final String? size;
  final BorderRadiusGeometry? radius;
  final JsonInputStyle? style;

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
