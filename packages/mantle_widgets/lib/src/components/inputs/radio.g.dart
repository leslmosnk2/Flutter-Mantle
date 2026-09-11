// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'radio.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Radio].
enum RadioVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The outline variant.
  outline,
}

/// Resolved visual values for [Radio].
@immutable
class RadioStyle {
  /// Creates a [RadioStyle].
  const RadioStyle();

  /// Returns a copy of this [RadioStyle] with selected fields replaced.
  RadioStyle copyWith() => this;

  /// Merges [other] over this [RadioStyle]; null fields keep this value.
  RadioStyle mergeWith(RadioStyle? other) => this;
}

/// Resolved interaction state for [Radio].
@immutable
class RadioState {
  /// Creates a [RadioState].
  const RadioState();
}

/// Values passed to [RadioDelegate] slots during build.
@immutable
class RadioContext {
  /// Creates a [RadioContext].
  const RadioContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    this.checked,
    this.onChanged,
    this.label,
    this.description,
    this.error,
    required this.disabled,
    this.color,
    this.iconColor,
    required this.labelPosition,
    required this.size,
    required this.radius,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final RadioStyle style;

  /// Resolved interaction state for this build.
  final RadioState state;

  /// The visual variant selected by the constructor.
  final RadioVariant variant;

  /// The controlled value.
  final String value;

  /// Whether checked.
  final bool? checked;

  /// Called when the value changes.
  final void Function(bool)? onChanged;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Foreground or accent color.
  final String? color;

  /// The icon color.
  final String? iconColor;

  /// The label position.
  final InputLabelPosition labelPosition;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class RadioRoot {
  /// Creates a [RadioRoot] from a builder function.
  const RadioRoot(this._build);

  final Widget Function(RadioContext context) _build;

  /// Invokes this slot with [context].
  Widget call(RadioContext context) => _build(context);
}

/// Theme-owned composition slots for [Radio].
abstract class RadioDelegate extends ComponentDelegate {
  /// Creates a [RadioDelegate].
  const RadioDelegate();

  /// Builds the composition root.
  Widget root(RadioContext context);
}

/// A [Radio] widget resolved through [RadioDelegate].
class Radio extends StatelessWidget {
  /// Creates a [Radio].
  const Radio({
    super.key,
    required this.value,
    this.checked,
    this.onChanged,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.color,
    this.iconColor,
    this.labelPosition,
    this.size,
    this.radius,
    this.style,
  }) : variant = RadioVariant.defaults;

  /// Creates a filled [Radio].
  const Radio.filled({
    super.key,
    required this.value,
    this.checked,
    this.onChanged,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.color,
    this.iconColor,
    this.labelPosition,
    this.size,
    this.radius,
    this.style,
  }) : variant = RadioVariant.filled;

  /// Creates an outline [Radio].
  const Radio.outline({
    super.key,
    required this.value,
    this.checked,
    this.onChanged,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.color,
    this.iconColor,
    this.labelPosition,
    this.size,
    this.radius,
    this.style,
  }) : variant = RadioVariant.outline;

  /// The visual variant selected by the constructor.
  final RadioVariant variant;

  /// The controlled value.
  final String value;

  /// Whether checked.
  final bool? checked;

  /// Called when the value changes.
  final void Function(bool)? onChanged;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Foreground or accent color.
  final String? color;

  /// The icon color.
  final String? iconColor;

  /// The label position.
  final InputLabelPosition? labelPosition;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final RadioStyle? style;

  /// Resolves properties and builds via [RadioDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedChecked = checked;
    final resolvedOnChanged = onChanged;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedDisabled = disabled ?? false;
    final resolvedColor = color;
    final resolvedIconColor = iconColor;
    final resolvedLabelPosition = labelPosition ?? InputLabelPosition.right;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputPillRadius(context);

    const fromProps = RadioStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = RadioState();
    final radioContext = RadioContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      checked: resolvedChecked,
      onChanged: resolvedOnChanged,
      label: resolvedLabel,
      description: resolvedDescription,
      error: resolvedError,
      disabled: resolvedDisabled,
      color: resolvedColor,
      iconColor: resolvedIconColor,
      labelPosition: resolvedLabelPosition,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<RadioDelegate>();
    return delegate.root(radioContext);
  }
}

/// Visual variants of [RadioGroup].
enum RadioGroupVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [RadioGroup].
@immutable
class RadioGroupStyle {
  /// Creates a [RadioGroupStyle].
  const RadioGroupStyle();

  /// Returns a copy of this [RadioGroupStyle] with selected fields replaced.
  RadioGroupStyle copyWith() => this;

  /// Merges [other] over this [RadioGroupStyle]; null fields keep this value.
  RadioGroupStyle mergeWith(RadioGroupStyle? other) => this;
}

/// Resolved interaction state for [RadioGroup].
@immutable
class RadioGroupState {
  /// Creates a [RadioGroupState].
  const RadioGroupState();
}

/// Values passed to [RadioGroupDelegate] slots during build.
@immutable
class RadioGroupContext {
  /// Creates a [RadioGroupContext].
  const RadioGroupContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.label,
    this.description,
    this.error,
    required this.disabled,
    required this.readOnly,
    required this.size,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final RadioGroupStyle style;

  /// Resolved interaction state for this build.
  final RadioGroupState state;

  /// The visual variant selected by the constructor.
  final RadioGroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The controlled value.
  final String? value;

  /// Initial value when [value] is omitted.
  final String? defaultValue;

  /// Called when the value changes.
  final void Function(String)? onChanged;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether the value cannot be edited.
  final bool readOnly;

  /// Size token.
  final String size;
}

/// Builder for the root slot.
class RadioGroupRoot {
  /// Creates a [RadioGroupRoot] from a builder function.
  const RadioGroupRoot(this._build);

  final Widget Function(RadioGroupContext context) _build;

  /// Invokes this slot with [context].
  Widget call(RadioGroupContext context) => _build(context);
}

/// Theme-owned composition slots for [RadioGroup].
abstract class RadioGroupDelegate extends ComponentDelegate {
  /// Creates a [RadioGroupDelegate].
  const RadioGroupDelegate();

  /// Builds the composition root.
  Widget root(RadioGroupContext context);
}

/// A [RadioGroup] widget resolved through [RadioGroupDelegate].
class RadioGroup extends StatelessWidget {
  /// Creates a [RadioGroup].
  const RadioGroup({
    super.key,
    required this.children,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.readOnly,
    this.size,
    this.style,
  }) : variant = RadioGroupVariant.defaults;

  /// The visual variant selected by the constructor.
  final RadioGroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The controlled value.
  final String? value;

  /// Initial value when [value] is omitted.
  final String? defaultValue;

  /// Called when the value changes.
  final void Function(String)? onChanged;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether the value cannot be edited.
  final bool? readOnly;

  /// Size token.
  final String? size;

  /// Style overrides merged over theme defaults.
  final RadioGroupStyle? style;

  /// Resolves properties and builds via [RadioGroupDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedDisabled = disabled ?? false;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedSize = size ?? 'sm';

    const fromProps = RadioGroupStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = RadioGroupState();
    final radioGroupContext = RadioGroupContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      label: resolvedLabel,
      description: resolvedDescription,
      error: resolvedError,
      disabled: resolvedDisabled,
      readOnly: resolvedReadOnly,
      size: resolvedSize,
    );
    final delegate = MantleTheme.of(context).delegate<RadioGroupDelegate>();
    return delegate.root(radioGroupContext);
  }
}
