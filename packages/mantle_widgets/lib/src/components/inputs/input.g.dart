// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum InputVariant { defaults, filled, unstyled }

@immutable
class InputStyle {
  const InputStyle();

  InputStyle copyWith() => this;

  InputStyle mergeWith(InputStyle? other) => this;
}

@immutable
class InputState {
  const InputState();
}

@immutable
class InputContext {
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

  final BuildContext context;
  final InputStyle style;
  final InputState state;
  final InputVariant variant;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final String? placeholder;
  final Widget? leftSection;
  final Widget? rightSection;
  final bool disabled;
  final bool readOnly;
  final bool required;
  final bool pointer;
  final bool multiline;
  final bool withErrorStyles;
  final Widget? error;
  final String size;
  final BorderRadiusGeometry radius;
}

class InputRoot {
  const InputRoot(this._build);

  final Widget Function(InputContext context) _build;

  Widget call(InputContext context) => _build(context);
}

abstract class InputDelegate extends ComponentDelegate {
  const InputDelegate();

  Widget root(InputContext context);
}

class Input extends StatelessWidget {
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

  final InputVariant variant;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final String? placeholder;
  final Widget? leftSection;
  final Widget? rightSection;
  final bool? disabled;
  final bool? readOnly;
  final bool? required;
  final bool? pointer;
  final bool? multiline;
  final bool? withErrorStyles;
  final Widget? error;
  final String? size;
  final BorderRadiusGeometry? radius;
  final InputStyle? style;

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

enum InputWrapperVariant { defaults }

@immutable
class InputWrapperStyle {
  const InputWrapperStyle();

  InputWrapperStyle copyWith() => this;

  InputWrapperStyle mergeWith(InputWrapperStyle? other) => this;
}

@immutable
class InputWrapperState {
  const InputWrapperState();
}

@immutable
class InputWrapperContext {
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

  final BuildContext context;
  final InputWrapperStyle style;
  final InputWrapperState state;
  final InputWrapperVariant variant;
  final Widget child;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool required;
  final bool? withAsterisk;
  final String size;
}

class InputWrapperRoot {
  const InputWrapperRoot(this._build);

  final Widget Function(InputWrapperContext context) _build;

  Widget call(InputWrapperContext context) => _build(context);
}

abstract class InputWrapperDelegate extends ComponentDelegate {
  const InputWrapperDelegate();

  Widget root(InputWrapperContext context);
}

class InputWrapper extends StatelessWidget {
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

  final InputWrapperVariant variant;
  final Widget child;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool? required;
  final bool? withAsterisk;
  final String? size;
  final InputWrapperStyle? style;

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
