// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [PasswordInput].
enum PasswordInputVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The unstyled variant.
  unstyled,
}

/// Resolved visual values for [PasswordInput].
@immutable
class PasswordInputStyle {
  /// Creates a [PasswordInputStyle].
  const PasswordInputStyle();

  /// Returns a copy of this [PasswordInputStyle] with selected fields replaced.
  PasswordInputStyle copyWith() => this;

  /// Merges [other] over this [PasswordInputStyle]; null fields keep this value.
  PasswordInputStyle mergeWith(PasswordInputStyle? other) => this;
}

/// Resolved interaction state for [PasswordInput].
@immutable
class PasswordInputState {
  /// Creates a [PasswordInputState].
  const PasswordInputState();
}

/// Values passed to [PasswordInputDelegate] slots during build.
@immutable
class PasswordInputContext {
  /// Creates a [PasswordInputContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final PasswordInputStyle style;

  /// Resolved interaction state for this build.
  final PasswordInputState state;

  /// The visual variant selected by the constructor.
  final PasswordInputVariant variant;

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

  /// The left section.
  final Widget? leftSection;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether the value cannot be edited.
  final bool readOnly;

  /// Whether required.
  final bool required;

  /// Whether with asterisk.
  final bool? withAsterisk;

  /// Whether visible.
  final bool? visible;

  /// Whether default visible.
  final bool defaultVisible;

  /// Called when visibility change.
  final void Function(bool)? onVisibilityChange;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class PasswordInputRoot {
  /// Creates a [PasswordInputRoot] from a builder function.
  const PasswordInputRoot(this._build);

  final Widget Function(PasswordInputContext context) _build;

  /// Invokes this slot with [context].
  Widget call(PasswordInputContext context) => _build(context);
}

/// Theme-owned composition slots for [PasswordInput].
abstract class PasswordInputDelegate extends ComponentDelegate {
  /// Creates a [PasswordInputDelegate].
  const PasswordInputDelegate();

  /// Builds the composition root.
  Widget root(PasswordInputContext context);
}

/// A [PasswordInput] widget resolved through [PasswordInputDelegate].
class PasswordInput extends StatelessWidget {
  /// Creates a [PasswordInput].
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

  /// Creates a filled [PasswordInput].
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

  /// Creates an unstyled [PasswordInput].
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

  /// The visual variant selected by the constructor.
  final PasswordInputVariant variant;

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

  /// The left section.
  final Widget? leftSection;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether the value cannot be edited.
  final bool? readOnly;

  /// Whether required.
  final bool? required;

  /// Whether with asterisk.
  final bool? withAsterisk;

  /// Whether visible.
  final bool? visible;

  /// Whether default visible.
  final bool? defaultVisible;

  /// Called when visibility change.
  final void Function(bool)? onVisibilityChange;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final PasswordInputStyle? style;

  /// Resolves properties and builds via [PasswordInputDelegate].
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
