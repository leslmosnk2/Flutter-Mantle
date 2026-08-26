// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum PasswordInputVariant { defaults, filled, unstyled }

@immutable
class PasswordInputStyle {
  const PasswordInputStyle();

  PasswordInputStyle copyWith() => this;

  PasswordInputStyle mergeWith(PasswordInputStyle? other) => this;
}

@immutable
class PasswordInputState {
  const PasswordInputState();
}

@immutable
class PasswordInputContext {
  const PasswordInputContext({
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
    required this.disabled,
    required this.readOnly,
    required this.required,
    this.withAsterisk,
    this.visible,
    required this.defaultVisible,
    this.onVisibilityChange,
    required this.size,
    required this.radius,
  });

  final BuildContext context;
  final PasswordInputStyle style;
  final PasswordInputState state;
  final PasswordInputVariant variant;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final String? placeholder;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final Widget? leftSection;
  final bool disabled;
  final bool readOnly;
  final bool required;
  final bool? withAsterisk;
  final bool? visible;
  final bool defaultVisible;
  final void Function(bool)? onVisibilityChange;
  final String size;
  final BorderRadiusGeometry radius;
}

class PasswordInputRoot {
  const PasswordInputRoot(this._build);

  final Widget Function(PasswordInputContext context) _build;

  Widget call(PasswordInputContext context) => _build(context);
}

abstract class PasswordInputDelegate extends ComponentDelegate {
  const PasswordInputDelegate();

  Widget root(PasswordInputContext context);
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.leftSection,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.visible,
    this.defaultVisible,
    this.onVisibilityChange,
    this.size,
    this.radius,
    this.style,
  }) : variant = PasswordInputVariant.defaults;

  const PasswordInput.filled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.leftSection,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.visible,
    this.defaultVisible,
    this.onVisibilityChange,
    this.size,
    this.radius,
    this.style,
  }) : variant = PasswordInputVariant.filled;

  const PasswordInput.unstyled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.leftSection,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.visible,
    this.defaultVisible,
    this.onVisibilityChange,
    this.size,
    this.radius,
    this.style,
  }) : variant = PasswordInputVariant.unstyled;

  final PasswordInputVariant variant;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final String? placeholder;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final Widget? leftSection;
  final bool? disabled;
  final bool? readOnly;
  final bool? required;
  final bool? withAsterisk;
  final bool? visible;
  final bool? defaultVisible;
  final void Function(bool)? onVisibilityChange;
  final String? size;
  final BorderRadiusGeometry? radius;
  final PasswordInputStyle? style;

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
    final resolvedDisabled = disabled ?? false;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedRequired = required ?? false;
    final resolvedWithAsterisk = withAsterisk;
    final resolvedVisible = visible;
    final resolvedDefaultVisible = defaultVisible ?? false;
    final resolvedOnVisibilityChange = onVisibilityChange;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = PasswordInputStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PasswordInputState();
    final passwordInputContext = PasswordInputContext(
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
      disabled: resolvedDisabled,
      readOnly: resolvedReadOnly,
      required: resolvedRequired,
      withAsterisk: resolvedWithAsterisk,
      visible: resolvedVisible,
      defaultVisible: resolvedDefaultVisible,
      onVisibilityChange: resolvedOnVisibilityChange,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<PasswordInputDelegate>();
    return delegate.root(passwordInputContext);
  }
}
