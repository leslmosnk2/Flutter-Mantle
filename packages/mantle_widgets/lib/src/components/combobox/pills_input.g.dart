// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pills_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [PillsInput].
enum PillsInputVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [PillsInput].
@immutable
class PillsInputStyle {
  /// Creates a [PillsInputStyle].
  const PillsInputStyle({
    this.background,
    this.borderColor,
    this.height,
    this.radius,
  });

  /// Background color.
  final Color? background;

  /// Border color token or value.
  final Color? borderColor;

  /// Height in logical pixels.
  final double? height;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Returns a copy of this [PillsInputStyle] with selected fields replaced.
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

  /// Merges [other] over this [PillsInputStyle]; null fields keep this value.
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

/// Resolved interaction state for [PillsInput].
@immutable
class PillsInputState {
  /// Creates a [PillsInputState].
  const PillsInputState({this.disabled = false});

  /// Whether interaction is disabled.
  final bool disabled;
}

/// Values passed to [PillsInputDelegate] slots during build.
@immutable
class PillsInputContext {
  /// Creates a [PillsInputContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final PillsInputStyle style;

  /// Resolved interaction state for this build.
  final PillsInputState state;

  /// The visual variant selected by the constructor.
  final PillsInputVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The label.
  final String? label;

  /// Supporting description text.
  final String? description;

  /// Error text or error state.
  final String? error;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class PillsInputRoot {
  /// Creates a [PillsInputRoot] from a builder function.
  const PillsInputRoot(this._build);

  final Widget Function(PillsInputContext context) _build;

  /// Invokes this slot with [context].
  Widget call(PillsInputContext context) => _build(context);
}

/// Theme-owned composition slots for [PillsInput].
abstract class PillsInputDelegate extends ComponentDelegate {
  /// Creates a [PillsInputDelegate].
  const PillsInputDelegate();

  /// Builds the composition root.
  Widget root(PillsInputContext context);
}

/// A [PillsInput] widget resolved through [PillsInputDelegate].
class PillsInput extends StatelessWidget {
  /// Creates a [PillsInput].
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

  /// The visual variant selected by the constructor.
  final PillsInputVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The label.
  final String? label;

  /// Supporting description text.
  final String? description;

  /// Error text or error state.
  final String? error;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final PillsInputStyle? style;

  /// Resolves properties and builds via [PillsInputDelegate].
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

/// Visual variants of [PillsInputField].
enum PillsInputFieldVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [PillsInputField].
@immutable
class PillsInputFieldStyle {
  /// Creates a [PillsInputFieldStyle].
  const PillsInputFieldStyle();

  /// Returns a copy of this [PillsInputFieldStyle] with selected fields replaced.
  PillsInputFieldStyle copyWith() => this;

  /// Merges [other] over this [PillsInputFieldStyle]; null fields keep this value.
  PillsInputFieldStyle mergeWith(PillsInputFieldStyle? other) => this;
}

/// Resolved interaction state for [PillsInputField].
@immutable
class PillsInputFieldState {
  /// Creates a [PillsInputFieldState].
  const PillsInputFieldState();
}

/// Values passed to [PillsInputFieldDelegate] slots during build.
@immutable
class PillsInputFieldContext {
  /// Creates a [PillsInputFieldContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final PillsInputFieldStyle style;

  /// Resolved interaction state for this build.
  final PillsInputFieldState state;

  /// The visual variant selected by the constructor.
  final PillsInputFieldVariant variant;

  /// The controlled value.
  final String value;

  /// Called when the value changes.
  final ComboboxSearchChanged? onChanged;

  /// Placeholder text when empty.
  final String? placeholder;

  /// Whether interaction is disabled.
  final bool disabled;

  /// The type.
  final PillsInputFieldType type;

  /// Whether pointer.
  final bool pointer;
}

/// Builder for the root slot.
class PillsInputFieldRoot {
  /// Creates a [PillsInputFieldRoot] from a builder function.
  const PillsInputFieldRoot(this._build);

  final Widget Function(PillsInputFieldContext context) _build;

  /// Invokes this slot with [context].
  Widget call(PillsInputFieldContext context) => _build(context);
}

/// Theme-owned composition slots for [PillsInputField].
abstract class PillsInputFieldDelegate extends ComponentDelegate {
  /// Creates a [PillsInputFieldDelegate].
  const PillsInputFieldDelegate();

  /// Builds the composition root.
  Widget root(PillsInputFieldContext context);
}

/// A [PillsInputField] widget resolved through [PillsInputFieldDelegate].
class PillsInputField extends StatelessWidget {
  /// Creates a [PillsInputField].
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

  /// The visual variant selected by the constructor.
  final PillsInputFieldVariant variant;

  /// The controlled value.
  final String? value;

  /// Called when the value changes.
  final ComboboxSearchChanged? onChanged;

  /// Placeholder text when empty.
  final String? placeholder;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// The type.
  final PillsInputFieldType? type;

  /// Whether pointer.
  final bool? pointer;

  /// Style overrides merged over theme defaults.
  final PillsInputFieldStyle? style;

  /// Resolves properties and builds via [PillsInputFieldDelegate].
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
