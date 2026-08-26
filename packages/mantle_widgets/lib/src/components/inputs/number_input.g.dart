// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum NumberInputVariant { defaults, filled, unstyled }

@immutable
class NumberInputStyle {
  const NumberInputStyle();

  NumberInputStyle copyWith() => this;

  NumberInputStyle mergeWith(NumberInputStyle? other) => this;
}

@immutable
class NumberInputState {
  const NumberInputState();
}

@immutable
class NumberInputContext {
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

  final BuildContext context;
  final NumberInputStyle style;
  final NumberInputState state;
  final NumberInputVariant variant;
  final double? value;
  final double? defaultValue;
  final void Function(double)? onChanged;
  final String? placeholder;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool disabled;
  final bool readOnly;
  final bool required;
  final bool? withAsterisk;
  final bool hideControls;
  final bool allowNegative;
  final bool allowDecimal;
  final double? min;
  final double? max;
  final double step;
  final NumberClampBehavior clampBehavior;
  final String size;
  final BorderRadiusGeometry radius;
}

class NumberInputRoot {
  const NumberInputRoot(this._build);

  final Widget Function(NumberInputContext context) _build;

  Widget call(NumberInputContext context) => _build(context);
}

abstract class NumberInputDelegate extends ComponentDelegate {
  const NumberInputDelegate();

  Widget root(NumberInputContext context);
}

class NumberInput extends StatelessWidget {
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

  final NumberInputVariant variant;
  final double? value;
  final double? defaultValue;
  final void Function(double)? onChanged;
  final String? placeholder;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool? disabled;
  final bool? readOnly;
  final bool? required;
  final bool? withAsterisk;
  final bool? hideControls;
  final bool? allowNegative;
  final bool? allowDecimal;
  final double? min;
  final double? max;
  final double? step;
  final NumberClampBehavior? clampBehavior;
  final String? size;
  final BorderRadiusGeometry? radius;
  final NumberInputStyle? style;

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
