// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pills_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum PillsInputVariant { defaults }

@immutable
class PillsInputStyle {
  const PillsInputStyle({
    this.background,
    this.borderColor,
    this.height,
    this.radius,
  });

  final Color? background;
  final Color? borderColor;
  final double? height;
  final BorderRadiusGeometry? radius;

  PillsInputStyle copyWith({
    Color? background,
    Color? borderColor,
    double? height,
    BorderRadiusGeometry? radius,
  }) {
    return PillsInputStyle(
      background: background ?? this.background,
      borderColor: borderColor ?? this.borderColor,
      height: height ?? this.height,
      radius: radius ?? this.radius,
    );
  }

  PillsInputStyle mergeWith(PillsInputStyle? other) {
    if (other == null) return this;
    return PillsInputStyle(
      background: background ?? other.background,
      borderColor: borderColor ?? other.borderColor,
      height: height ?? other.height,
      radius: radius ?? other.radius,
    );
  }
}

@immutable
class PillsInputState {
  const PillsInputState({this.disabled = false});

  final bool disabled;
}

@immutable
class PillsInputContext {
  const PillsInputContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.label,
    this.description,
    this.error,
    required this.disabled,
    required this.size,
    required this.radius,
  });

  final BuildContext context;
  final PillsInputStyle style;
  final PillsInputState state;
  final PillsInputVariant variant;
  final List<Widget> children;
  final String? label;
  final String? description;
  final String? error;
  final bool disabled;
  final String size;
  final BorderRadiusGeometry radius;
}

class PillsInputRoot {
  const PillsInputRoot(this._build);

  final Widget Function(PillsInputContext context) _build;

  Widget call(PillsInputContext context) => _build(context);
}

abstract class PillsInputDelegate extends ComponentDelegate {
  const PillsInputDelegate();

  Widget root(PillsInputContext context);
}

class PillsInput extends StatelessWidget {
  const PillsInput({
    super.key,
    required this.children,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.size,
    this.radius,
    this.style,
  }) : variant = PillsInputVariant.defaults;

  final PillsInputVariant variant;
  final List<Widget> children;
  final String? label;
  final String? description;
  final String? error;
  final bool? disabled;
  final String? size;
  final BorderRadiusGeometry? radius;
  final PillsInputStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedDisabled = disabled ?? false;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius =
        radius ?? style?.radius ?? defaultComboboxRadius(context);

    final fromProps = PillsInputStyle(radius: radius);
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = PillsInputStyle(
      background: merged.background,
      borderColor: merged.borderColor,
      height: merged.height,
      radius: merged.radius ?? defaultComboboxRadius(context),
    );
    final resolvedState = PillsInputState(disabled: resolvedDisabled);
    final pillsInputContext = PillsInputContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      label: resolvedLabel,
      description: resolvedDescription,
      error: resolvedError,
      disabled: resolvedDisabled,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<PillsInputDelegate>();
    return delegate.root(pillsInputContext);
  }
}

enum PillsInputFieldVariant { defaults }

@immutable
class PillsInputFieldStyle {
  const PillsInputFieldStyle();

  PillsInputFieldStyle copyWith() => this;

  PillsInputFieldStyle mergeWith(PillsInputFieldStyle? other) => this;
}

@immutable
class PillsInputFieldState {
  const PillsInputFieldState();
}

@immutable
class PillsInputFieldContext {
  const PillsInputFieldContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    this.onChanged,
    this.placeholder,
    required this.disabled,
    required this.type,
    required this.pointer,
  });

  final BuildContext context;
  final PillsInputFieldStyle style;
  final PillsInputFieldState state;
  final PillsInputFieldVariant variant;
  final String value;
  final ComboboxSearchChanged? onChanged;
  final String? placeholder;
  final bool disabled;
  final PillsInputFieldType type;
  final bool pointer;
}

class PillsInputFieldRoot {
  const PillsInputFieldRoot(this._build);

  final Widget Function(PillsInputFieldContext context) _build;

  Widget call(PillsInputFieldContext context) => _build(context);
}

abstract class PillsInputFieldDelegate extends ComponentDelegate {
  const PillsInputFieldDelegate();

  Widget root(PillsInputFieldContext context);
}

class PillsInputField extends StatelessWidget {
  const PillsInputField({
    super.key,
    this.value,
    this.onChanged,
    this.placeholder,
    this.disabled,
    this.type,
    this.pointer,
    this.style,
  }) : variant = PillsInputFieldVariant.defaults;

  final PillsInputFieldVariant variant;
  final String? value;
  final ComboboxSearchChanged? onChanged;
  final String? placeholder;
  final bool? disabled;
  final PillsInputFieldType? type;
  final bool? pointer;
  final PillsInputFieldStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedValue = value ?? '';
    final resolvedOnChanged = onChanged;
    final resolvedPlaceholder = placeholder;
    final resolvedDisabled = disabled ?? false;
    final resolvedType = type ?? PillsInputFieldType.visible;
    final resolvedPointer = pointer ?? false;

    const fromProps = PillsInputFieldStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PillsInputFieldState();
    final pillsInputFieldContext = PillsInputFieldContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      onChanged: resolvedOnChanged,
      placeholder: resolvedPlaceholder,
      disabled: resolvedDisabled,
      type: resolvedType,
      pointer: resolvedPointer,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<PillsInputFieldDelegate>();
    return delegate.root(pillsInputFieldContext);
  }
}
