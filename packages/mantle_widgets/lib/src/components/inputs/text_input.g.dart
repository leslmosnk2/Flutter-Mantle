// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum TextInputVariant { defaults, filled, unstyled }

@immutable
class TextInputStyle {
  const TextInputStyle();

  TextInputStyle copyWith() => this;

  TextInputStyle mergeWith(TextInputStyle? other) => this;
}

@immutable
class TextInputState {
  const TextInputState();
}

@immutable
class TextInputContext {
  const TextInputContext({
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
    this.leftSection,
    this.rightSection,
    required this.disabled,
    required this.readOnly,
    required this.required,
    this.withAsterisk,
    required this.size,
    required this.radius,
  });

  final BuildContext context;
  final TextInputStyle style;
  final TextInputState state;
  final TextInputVariant variant;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final String? placeholder;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final Widget? leftSection;
  final Widget? rightSection;
  final bool disabled;
  final bool readOnly;
  final bool required;
  final bool? withAsterisk;
  final String size;
  final BorderRadiusGeometry radius;
}

class TextInputRoot {
  const TextInputRoot(this._build);

  final Widget Function(TextInputContext context) _build;

  Widget call(TextInputContext context) => _build(context);
}

abstract class TextInputDelegate extends ComponentDelegate {
  const TextInputDelegate();

  Widget root(TextInputContext context);
}

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.leftSection,
    this.rightSection,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.size,
    this.radius,
    this.style,
  }) : variant = TextInputVariant.defaults;

  const TextInput.filled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.leftSection,
    this.rightSection,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.size,
    this.radius,
    this.style,
  }) : variant = TextInputVariant.filled;

  const TextInput.unstyled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.leftSection,
    this.rightSection,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.size,
    this.radius,
    this.style,
  }) : variant = TextInputVariant.unstyled;

  final TextInputVariant variant;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final String? placeholder;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final Widget? leftSection;
  final Widget? rightSection;
  final bool? disabled;
  final bool? readOnly;
  final bool? required;
  final bool? withAsterisk;
  final String? size;
  final BorderRadiusGeometry? radius;
  final TextInputStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedPlaceholder = placeholder;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedLeftSection = leftSection;
    final resolvedRightSection = rightSection;
    final resolvedDisabled = disabled ?? false;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedRequired = required ?? false;
    final resolvedWithAsterisk = withAsterisk;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = TextInputStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TextInputState();
    final textInputContext = TextInputContext(
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
      leftSection: resolvedLeftSection,
      rightSection: resolvedRightSection,
      disabled: resolvedDisabled,
      readOnly: resolvedReadOnly,
      required: resolvedRequired,
      withAsterisk: resolvedWithAsterisk,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<TextInputDelegate>();
    return delegate.root(textInputContext);
  }
}
