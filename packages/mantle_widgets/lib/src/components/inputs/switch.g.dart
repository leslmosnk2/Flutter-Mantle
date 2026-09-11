// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Switch].
enum SwitchVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Switch].
@immutable
class SwitchStyle {
  /// Creates a [SwitchStyle].
  const SwitchStyle();

  /// Returns a copy of this [SwitchStyle] with selected fields replaced.
  SwitchStyle copyWith() => this;

  /// Merges [other] over this [SwitchStyle]; null fields keep this value.
  SwitchStyle mergeWith(SwitchStyle? other) => this;
}

/// Resolved interaction state for [Switch].
@immutable
class SwitchState {
  /// Creates a [SwitchState].
  const SwitchState();
}

/// Values passed to [SwitchDelegate] slots during build.
@immutable
class SwitchContext {
  /// Creates a [SwitchContext].
  const SwitchContext({
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
    this.onLabel,
    this.offLabel,
    this.thumbIcon,
    required this.disabled,
    this.color,
    required this.labelPosition,
    required this.size,
    required this.radius,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final SwitchStyle style;

  /// Resolved interaction state for this build.
  final SwitchState state;

  /// The visual variant selected by the constructor.
  final SwitchVariant variant;

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

  /// Called when label.
  final Widget? onLabel;

  /// The off label.
  final Widget? offLabel;

  /// The thumb icon.
  final Widget? thumbIcon;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Foreground or accent color.
  final String? color;

  /// The label position.
  final InputLabelPosition labelPosition;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class SwitchRoot {
  /// Creates a [SwitchRoot] from a builder function.
  const SwitchRoot(this._build);

  final Widget Function(SwitchContext context) _build;

  /// Invokes this slot with [context].
  Widget call(SwitchContext context) => _build(context);
}

/// Theme-owned composition slots for [Switch].
abstract class SwitchDelegate extends ComponentDelegate {
  /// Creates a [SwitchDelegate].
  const SwitchDelegate();

  /// Builds the composition root.
  Widget root(SwitchContext context);
}

/// A [Switch] widget resolved through [SwitchDelegate].
class Switch extends StatelessWidget {
  /// Creates a [Switch].
  const Switch({
    super.key,
    this.checked,
    this.defaultChecked,
    this.onChanged,
    this.value,
    this.label,
    this.description,
    this.error,
    this.onLabel,
    this.offLabel,
    this.thumbIcon,
    this.disabled,
    this.color,
    this.labelPosition,
    this.size,
    this.radius,
    this.style,
  }) : variant = SwitchVariant.defaults;

  /// The visual variant selected by the constructor.
  final SwitchVariant variant;

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

  /// Called when label.
  final Widget? onLabel;

  /// The off label.
  final Widget? offLabel;

  /// The thumb icon.
  final Widget? thumbIcon;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Foreground or accent color.
  final String? color;

  /// The label position.
  final InputLabelPosition? labelPosition;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final SwitchStyle? style;

  /// Resolves properties and builds via [SwitchDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChecked = checked;
    final resolvedDefaultChecked = defaultChecked ?? false;
    final resolvedOnChanged = onChanged;
    final resolvedValue = value;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedOnLabel = onLabel;
    final resolvedOffLabel = offLabel;
    final resolvedThumbIcon = thumbIcon;
    final resolvedDisabled = disabled ?? false;
    final resolvedColor = color;
    final resolvedLabelPosition = labelPosition ?? InputLabelPosition.right;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputPillRadius(context);

    const fromProps = SwitchStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SwitchState();
    final switchContext = SwitchContext(
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
      onLabel: resolvedOnLabel,
      offLabel: resolvedOffLabel,
      thumbIcon: resolvedThumbIcon,
      disabled: resolvedDisabled,
      color: resolvedColor,
      labelPosition: resolvedLabelPosition,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<SwitchDelegate>();
    return delegate.root(switchContext);
  }
}

/// Visual variants of [SwitchGroup].
enum SwitchGroupVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [SwitchGroup].
@immutable
class SwitchGroupStyle {
  /// Creates a [SwitchGroupStyle].
  const SwitchGroupStyle();

  /// Returns a copy of this [SwitchGroupStyle] with selected fields replaced.
  SwitchGroupStyle copyWith() => this;

  /// Merges [other] over this [SwitchGroupStyle]; null fields keep this value.
  SwitchGroupStyle mergeWith(SwitchGroupStyle? other) => this;
}

/// Resolved interaction state for [SwitchGroup].
@immutable
class SwitchGroupState {
  /// Creates a [SwitchGroupState].
  const SwitchGroupState();
}

/// Values passed to [SwitchGroupDelegate] slots during build.
@immutable
class SwitchGroupContext {
  /// Creates a [SwitchGroupContext].
  const SwitchGroupContext({
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
  final SwitchGroupStyle style;

  /// Resolved interaction state for this build.
  final SwitchGroupState state;

  /// The visual variant selected by the constructor.
  final SwitchGroupVariant variant;

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
class SwitchGroupRoot {
  /// Creates a [SwitchGroupRoot] from a builder function.
  const SwitchGroupRoot(this._build);

  final Widget Function(SwitchGroupContext context) _build;

  /// Invokes this slot with [context].
  Widget call(SwitchGroupContext context) => _build(context);
}

/// Theme-owned composition slots for [SwitchGroup].
abstract class SwitchGroupDelegate extends ComponentDelegate {
  /// Creates a [SwitchGroupDelegate].
  const SwitchGroupDelegate();

  /// Builds the composition root.
  Widget root(SwitchGroupContext context);
}

/// A [SwitchGroup] widget resolved through [SwitchGroupDelegate].
class SwitchGroup extends StatelessWidget {
  /// Creates a [SwitchGroup].
  const SwitchGroup({
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
  }) : variant = SwitchGroupVariant.defaults;

  /// The visual variant selected by the constructor.
  final SwitchGroupVariant variant;

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
  final SwitchGroupStyle? style;

  /// Resolves properties and builds via [SwitchGroupDelegate].
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

    const fromProps = SwitchGroupStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SwitchGroupState();
    final switchGroupContext = SwitchGroupContext(
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
    final delegate = MantleTheme.of(context).delegate<SwitchGroupDelegate>();
    return delegate.root(switchGroupContext);
  }
}
