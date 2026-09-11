// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkbox.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Checkbox].
enum CheckboxVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The outline variant.
  outline,
}

/// Resolved visual values for [Checkbox].
@immutable
class CheckboxStyle {
  /// Creates a [CheckboxStyle].
  const CheckboxStyle();

  /// Returns a copy of this [CheckboxStyle] with selected fields replaced.
  CheckboxStyle copyWith() => this;

  /// Merges [other] over this [CheckboxStyle]; null fields keep this value.
  CheckboxStyle mergeWith(CheckboxStyle? other) => this;
}

/// Resolved interaction state for [Checkbox].
@immutable
class CheckboxState {
  /// Creates a [CheckboxState].
  const CheckboxState();
}

/// Values passed to [CheckboxDelegate] slots during build.
@immutable
class CheckboxContext {
  /// Creates a [CheckboxContext].
  const CheckboxContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.checked,
    required this.defaultChecked,
    this.onChanged,
    this.value,
    this.label,
    this.description,
    this.error,
    required this.indeterminate,
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
  final CheckboxStyle style;

  /// Resolved interaction state for this build.
  final CheckboxState state;

  /// The visual variant selected by the constructor.
  final CheckboxVariant variant;

  /// Whether checked.
  final bool? checked;

  /// Whether default checked.
  final bool defaultChecked;

  /// Called when the value changes.
  final void Function(bool)? onChanged;

  /// The controlled value.
  final String? value;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// Whether indeterminate.
  final bool indeterminate;

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
class CheckboxRoot {
  /// Creates a [CheckboxRoot] from a builder function.
  const CheckboxRoot(this._build);

  final Widget Function(CheckboxContext context) _build;

  /// Invokes this slot with [context].
  Widget call(CheckboxContext context) => _build(context);
}

/// Theme-owned composition slots for [Checkbox].
abstract class CheckboxDelegate extends ComponentDelegate {
  /// Creates a [CheckboxDelegate].
  const CheckboxDelegate();

  /// Builds the composition root.
  Widget root(CheckboxContext context);
}

/// A [Checkbox] widget resolved through [CheckboxDelegate].
class Checkbox extends StatelessWidget {
  /// Creates a [Checkbox].
  const Checkbox({
    super.key,
    this.checked,
    this.defaultChecked,
    this.onChanged,
    this.value,
    this.label,
    this.description,
    this.error,
    this.indeterminate,
    this.disabled,
    this.color,
    this.iconColor,
    this.labelPosition,
    this.size,
    this.radius,
    this.style,
  }) : variant = CheckboxVariant.defaults;

  /// Creates a filled [Checkbox].
  const Checkbox.filled({
    super.key,
    this.checked,
    this.defaultChecked,
    this.onChanged,
    this.value,
    this.label,
    this.description,
    this.error,
    this.indeterminate,
    this.disabled,
    this.color,
    this.iconColor,
    this.labelPosition,
    this.size,
    this.radius,
    this.style,
  }) : variant = CheckboxVariant.filled;

  /// Creates an outline [Checkbox].
  const Checkbox.outline({
    super.key,
    this.checked,
    this.defaultChecked,
    this.onChanged,
    this.value,
    this.label,
    this.description,
    this.error,
    this.indeterminate,
    this.disabled,
    this.color,
    this.iconColor,
    this.labelPosition,
    this.size,
    this.radius,
    this.style,
  }) : variant = CheckboxVariant.outline;

  /// The visual variant selected by the constructor.
  final CheckboxVariant variant;

  /// Whether checked.
  final bool? checked;

  /// Whether default checked.
  final bool? defaultChecked;

  /// Called when the value changes.
  final void Function(bool)? onChanged;

  /// The controlled value.
  final String? value;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// Whether indeterminate.
  final bool? indeterminate;

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
  final CheckboxStyle? style;

  /// Resolves properties and builds via [CheckboxDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChecked = checked;
    final resolvedDefaultChecked = defaultChecked ?? false;
    final resolvedOnChanged = onChanged;
    final resolvedValue = value;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedIndeterminate = indeterminate ?? false;
    final resolvedDisabled = disabled ?? false;
    final resolvedColor = color;
    final resolvedIconColor = iconColor;
    final resolvedLabelPosition = labelPosition ?? InputLabelPosition.right;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = CheckboxStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = CheckboxState();
    final checkboxContext = CheckboxContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      checked: resolvedChecked,
      defaultChecked: resolvedDefaultChecked,
      onChanged: resolvedOnChanged,
      value: resolvedValue,
      label: resolvedLabel,
      description: resolvedDescription,
      error: resolvedError,
      indeterminate: resolvedIndeterminate,
      disabled: resolvedDisabled,
      color: resolvedColor,
      iconColor: resolvedIconColor,
      labelPosition: resolvedLabelPosition,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<CheckboxDelegate>();
    return delegate.root(checkboxContext);
  }
}

/// Visual variants of [CheckboxGroup].
enum CheckboxGroupVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [CheckboxGroup].
@immutable
class CheckboxGroupStyle {
  /// Creates a [CheckboxGroupStyle].
  const CheckboxGroupStyle();

  /// Returns a copy of this [CheckboxGroupStyle] with selected fields replaced.
  CheckboxGroupStyle copyWith() => this;

  /// Merges [other] over this [CheckboxGroupStyle]; null fields keep this value.
  CheckboxGroupStyle mergeWith(CheckboxGroupStyle? other) => this;
}

/// Resolved interaction state for [CheckboxGroup].
@immutable
class CheckboxGroupState {
  /// Creates a [CheckboxGroupState].
  const CheckboxGroupState();
}

/// Values passed to [CheckboxGroupDelegate] slots during build.
@immutable
class CheckboxGroupContext {
  /// Creates a [CheckboxGroupContext].
  const CheckboxGroupContext({
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
  final CheckboxGroupStyle style;

  /// Resolved interaction state for this build.
  final CheckboxGroupState state;

  /// The visual variant selected by the constructor.
  final CheckboxGroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The controlled value.
  final List<String>? value;

  /// Initial value when [value] is omitted.
  final List<String>? defaultValue;

  /// Called when the value changes.
  final void Function(List<String>)? onChanged;

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
class CheckboxGroupRoot {
  /// Creates a [CheckboxGroupRoot] from a builder function.
  const CheckboxGroupRoot(this._build);

  final Widget Function(CheckboxGroupContext context) _build;

  /// Invokes this slot with [context].
  Widget call(CheckboxGroupContext context) => _build(context);
}

/// Theme-owned composition slots for [CheckboxGroup].
abstract class CheckboxGroupDelegate extends ComponentDelegate {
  /// Creates a [CheckboxGroupDelegate].
  const CheckboxGroupDelegate();

  /// Builds the composition root.
  Widget root(CheckboxGroupContext context);
}

/// A [CheckboxGroup] widget resolved through [CheckboxGroupDelegate].
class CheckboxGroup extends StatelessWidget {
  /// Creates a [CheckboxGroup].
  const CheckboxGroup({
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
  }) : variant = CheckboxGroupVariant.defaults;

  /// The visual variant selected by the constructor.
  final CheckboxGroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The controlled value.
  final List<String>? value;

  /// Initial value when [value] is omitted.
  final List<String>? defaultValue;

  /// Called when the value changes.
  final void Function(List<String>)? onChanged;

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
  final CheckboxGroupStyle? style;

  /// Resolves properties and builds via [CheckboxGroupDelegate].
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

    const fromProps = CheckboxGroupStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = CheckboxGroupState();
    final checkboxGroupContext = CheckboxGroupContext(
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
    final delegate = MantleTheme.of(context).delegate<CheckboxGroupDelegate>();
    return delegate.root(checkboxGroupContext);
  }
}
