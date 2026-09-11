// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Input].
enum InputVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The unstyled variant.
  unstyled,
}

/// Resolved visual values for [Input].
@immutable
class InputStyle {
  /// Creates an [InputStyle].
  const InputStyle();

  /// Returns a copy of this [InputStyle] with selected fields replaced.
  InputStyle copyWith() => this;

  /// Merges [other] over this [InputStyle]; null fields keep this value.
  InputStyle mergeWith(InputStyle? other) => this;
}

/// Resolved interaction state for [Input].
@immutable
class InputState {
  /// Creates an [InputState].
  const InputState();
}

/// Values passed to [InputDelegate] slots during build.
@immutable
class InputContext {
  /// Creates an [InputContext].
  const InputContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.leftSection,
    this.rightSection,
    required this.disabled,
    required this.readOnly,
    required this.required,
    required this.pointer,
    required this.multiline,
    required this.withErrorStyles,
    this.error,
    required this.size,
    required this.radius,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final InputStyle style;

  /// Resolved interaction state for this build.
  final InputState state;

  /// The visual variant selected by the constructor.
  final InputVariant variant;

  /// The controlled value.
  final String? value;

  /// Initial value when [value] is omitted.
  final String? defaultValue;

  /// Called when the value changes.
  final void Function(String)? onChanged;

  /// Placeholder text when empty.
  final String? placeholder;

  /// The left section.
  final Widget? leftSection;

  /// The right section.
  final Widget? rightSection;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether the value cannot be edited.
  final bool readOnly;

  /// Whether required.
  final bool required;

  /// Whether pointer.
  final bool pointer;

  /// Whether multiline.
  final bool multiline;

  /// Whether with error styles.
  final bool withErrorStyles;

  /// Error text or error state.
  final Widget? error;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class InputRoot {
  /// Creates an [InputRoot] from a builder function.
  const InputRoot(this._build);

  final Widget Function(InputContext context) _build;

  /// Invokes this slot with [context].
  Widget call(InputContext context) => _build(context);
}

/// Theme-owned composition slots for [Input].
abstract class InputDelegate extends ComponentDelegate {
  /// Creates an [InputDelegate].
  const InputDelegate();

  /// Builds the composition root.
  Widget root(InputContext context);
}

/// An [Input] widget resolved through [InputDelegate].
class Input extends StatelessWidget {
  /// Creates an [Input].
  const Input({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.leftSection,
    this.rightSection,
    this.disabled,
    this.readOnly,
    this.required,
    this.pointer,
    this.multiline,
    this.withErrorStyles,
    this.error,
    this.size,
    this.radius,
    this.style,
  }) : variant = InputVariant.defaults;

  /// Creates a filled [Input].
  const Input.filled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.leftSection,
    this.rightSection,
    this.disabled,
    this.readOnly,
    this.required,
    this.pointer,
    this.multiline,
    this.withErrorStyles,
    this.error,
    this.size,
    this.radius,
    this.style,
  }) : variant = InputVariant.filled;

  /// Creates an unstyled [Input].
  const Input.unstyled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.leftSection,
    this.rightSection,
    this.disabled,
    this.readOnly,
    this.required,
    this.pointer,
    this.multiline,
    this.withErrorStyles,
    this.error,
    this.size,
    this.radius,
    this.style,
  }) : variant = InputVariant.unstyled;

  /// The visual variant selected by the constructor.
  final InputVariant variant;

  /// The controlled value.
  final String? value;

  /// Initial value when [value] is omitted.
  final String? defaultValue;

  /// Called when the value changes.
  final void Function(String)? onChanged;

  /// Placeholder text when empty.
  final String? placeholder;

  /// The left section.
  final Widget? leftSection;

  /// The right section.
  final Widget? rightSection;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether the value cannot be edited.
  final bool? readOnly;

  /// Whether required.
  final bool? required;

  /// Whether pointer.
  final bool? pointer;

  /// Whether multiline.
  final bool? multiline;

  /// Whether with error styles.
  final bool? withErrorStyles;

  /// Error text or error state.
  final Widget? error;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final InputStyle? style;

  /// Resolves properties and builds via [InputDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedPlaceholder = placeholder;
    final resolvedLeftSection = leftSection;
    final resolvedRightSection = rightSection;
    final resolvedDisabled = disabled ?? false;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedRequired = required ?? false;
    final resolvedPointer = pointer ?? false;
    final resolvedMultiline = multiline ?? false;
    final resolvedWithErrorStyles = withErrorStyles ?? true;
    final resolvedError = error;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = InputStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = InputState();
    final inputContext = InputContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      placeholder: resolvedPlaceholder,
      leftSection: resolvedLeftSection,
      rightSection: resolvedRightSection,
      disabled: resolvedDisabled,
      readOnly: resolvedReadOnly,
      required: resolvedRequired,
      pointer: resolvedPointer,
      multiline: resolvedMultiline,
      withErrorStyles: resolvedWithErrorStyles,
      error: resolvedError,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<InputDelegate>();
    return delegate.root(inputContext);
  }
}

/// Visual variants of [InputWrapper].
enum InputWrapperVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [InputWrapper].
@immutable
class InputWrapperStyle {
  /// Creates an [InputWrapperStyle].
  const InputWrapperStyle();

  /// Returns a copy of this [InputWrapperStyle] with selected fields replaced.
  InputWrapperStyle copyWith() => this;

  /// Merges [other] over this [InputWrapperStyle]; null fields keep this value.
  InputWrapperStyle mergeWith(InputWrapperStyle? other) => this;
}

/// Resolved interaction state for [InputWrapper].
@immutable
class InputWrapperState {
  /// Creates an [InputWrapperState].
  const InputWrapperState();
}

/// Values passed to [InputWrapperDelegate] slots during build.
@immutable
class InputWrapperContext {
  /// Creates an [InputWrapperContext].
  const InputWrapperContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.label,
    this.description,
    this.error,
    required this.required,
    this.withAsterisk,
    required this.size,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final InputWrapperStyle style;

  /// Resolved interaction state for this build.
  final InputWrapperState state;

  /// The visual variant selected by the constructor.
  final InputWrapperVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// Whether required.
  final bool required;

  /// Whether with asterisk.
  final bool? withAsterisk;

  /// Size token.
  final String size;
}

/// Builder for the root slot.
class InputWrapperRoot {
  /// Creates an [InputWrapperRoot] from a builder function.
  const InputWrapperRoot(this._build);

  final Widget Function(InputWrapperContext context) _build;

  /// Invokes this slot with [context].
  Widget call(InputWrapperContext context) => _build(context);
}

/// Theme-owned composition slots for [InputWrapper].
abstract class InputWrapperDelegate extends ComponentDelegate {
  /// Creates an [InputWrapperDelegate].
  const InputWrapperDelegate();

  /// Builds the composition root.
  Widget root(InputWrapperContext context);
}

/// An [InputWrapper] widget resolved through [InputWrapperDelegate].
class InputWrapper extends StatelessWidget {
  /// Creates an [InputWrapper].
  const InputWrapper({
    super.key,
    required this.child,
    this.label,
    this.description,
    this.error,
    this.required,
    this.withAsterisk,
    this.size,
    this.style,
  }) : variant = InputWrapperVariant.defaults;

  /// The visual variant selected by the constructor.
  final InputWrapperVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// Whether required.
  final bool? required;

  /// Whether with asterisk.
  final bool? withAsterisk;

  /// Size token.
  final String? size;

  /// Style overrides merged over theme defaults.
  final InputWrapperStyle? style;

  /// Resolves properties and builds via [InputWrapperDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedRequired = required ?? false;
    final resolvedWithAsterisk = withAsterisk;
    final resolvedSize = size ?? 'sm';

    const fromProps = InputWrapperStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = InputWrapperState();
    final inputWrapperContext = InputWrapperContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      label: resolvedLabel,
      description: resolvedDescription,
      error: resolvedError,
      required: resolvedRequired,
      withAsterisk: resolvedWithAsterisk,
      size: resolvedSize,
    );
    final delegate = MantleTheme.of(context).delegate<InputWrapperDelegate>();
    return delegate.root(inputWrapperContext);
  }
}
