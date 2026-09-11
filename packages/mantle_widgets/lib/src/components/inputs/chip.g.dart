// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chip.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Chip].
enum ChipVariant {
  /// The default variant.
  defaults,

  /// The outline variant.
  outline,

  /// The filled variant.
  filled,

  /// The light variant.
  light,
}

/// Resolved visual values for [Chip].
@immutable
class ChipStyle {
  /// Creates a [ChipStyle].
  const ChipStyle();

  /// Returns a copy of this [ChipStyle] with selected fields replaced.
  ChipStyle copyWith() => this;

  /// Merges [other] over this [ChipStyle]; null fields keep this value.
  ChipStyle mergeWith(ChipStyle? other) => this;
}

/// Resolved interaction state for [Chip].
@immutable
class ChipState {
  /// Creates a [ChipState].
  const ChipState();
}

/// Values passed to [ChipDelegate] slots during build.
@immutable
class ChipContext {
  /// Creates a [ChipContext].
  const ChipContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.value,
    this.checked,
    required this.defaultChecked,
    this.onChanged,
    required this.disabled,
    this.icon,
    this.color,
    required this.size,
    required this.radius,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ChipStyle style;

  /// Resolved interaction state for this build.
  final ChipState state;

  /// The visual variant selected by the constructor.
  final ChipVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The controlled value.
  final String? value;

  /// Whether checked.
  final bool? checked;

  /// Whether default checked.
  final bool defaultChecked;

  /// Called when the value changes.
  final void Function(bool)? onChanged;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Leading or decorative icon.
  final Widget? icon;

  /// Foreground or accent color.
  final String? color;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class ChipRoot {
  /// Creates a [ChipRoot] from a builder function.
  const ChipRoot(this._build);

  final Widget Function(ChipContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ChipContext context) => _build(context);
}

/// Theme-owned composition slots for [Chip].
abstract class ChipDelegate extends ComponentDelegate {
  /// Creates a [ChipDelegate].
  const ChipDelegate();

  /// Builds the composition root.
  Widget root(ChipContext context);
}

/// A [Chip] widget resolved through [ChipDelegate].
class Chip extends StatelessWidget {
  /// Creates a [Chip].
  const Chip({
    super.key,
    required this.child,
    this.value,
    this.checked,
    this.defaultChecked,
    this.onChanged,
    this.disabled,
    this.icon,
    this.color,
    this.size,
    this.radius,
    this.style,
  }) : variant = ChipVariant.defaults;

  /// Creates an outline [Chip].
  const Chip.outline({
    super.key,
    required this.child,
    this.value,
    this.checked,
    this.defaultChecked,
    this.onChanged,
    this.disabled,
    this.icon,
    this.color,
    this.size,
    this.radius,
    this.style,
  }) : variant = ChipVariant.outline;

  /// Creates a filled [Chip].
  const Chip.filled({
    super.key,
    required this.child,
    this.value,
    this.checked,
    this.defaultChecked,
    this.onChanged,
    this.disabled,
    this.icon,
    this.color,
    this.size,
    this.radius,
    this.style,
  }) : variant = ChipVariant.filled;

  /// Creates a light [Chip].
  const Chip.light({
    super.key,
    required this.child,
    this.value,
    this.checked,
    this.defaultChecked,
    this.onChanged,
    this.disabled,
    this.icon,
    this.color,
    this.size,
    this.radius,
    this.style,
  }) : variant = ChipVariant.light;

  /// The visual variant selected by the constructor.
  final ChipVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The controlled value.
  final String? value;

  /// Whether checked.
  final bool? checked;

  /// Whether default checked.
  final bool? defaultChecked;

  /// Called when the value changes.
  final void Function(bool)? onChanged;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Leading or decorative icon.
  final Widget? icon;

  /// Foreground or accent color.
  final String? color;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final ChipStyle? style;

  /// Resolves properties and builds via [ChipDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedValue = value;
    final resolvedChecked = checked;
    final resolvedDefaultChecked = defaultChecked ?? false;
    final resolvedOnChanged = onChanged;
    final resolvedDisabled = disabled ?? false;
    final resolvedIcon = icon;
    final resolvedColor = color;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputPillRadius(context);

    const fromProps = ChipStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ChipState();
    final chipContext = ChipContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      value: resolvedValue,
      checked: resolvedChecked,
      defaultChecked: resolvedDefaultChecked,
      onChanged: resolvedOnChanged,
      disabled: resolvedDisabled,
      icon: resolvedIcon,
      color: resolvedColor,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<ChipDelegate>();
    return delegate.root(chipContext);
  }
}

/// Visual variants of [ChipGroup].
enum ChipGroupVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ChipGroup].
@immutable
class ChipGroupStyle {
  /// Creates a [ChipGroupStyle].
  const ChipGroupStyle();

  /// Returns a copy of this [ChipGroupStyle] with selected fields replaced.
  ChipGroupStyle copyWith() => this;

  /// Merges [other] over this [ChipGroupStyle]; null fields keep this value.
  ChipGroupStyle mergeWith(ChipGroupStyle? other) => this;
}

/// Resolved interaction state for [ChipGroup].
@immutable
class ChipGroupState {
  /// Creates a [ChipGroupState].
  const ChipGroupState();
}

/// Values passed to [ChipGroupDelegate] slots during build.
@immutable
class ChipGroupContext {
  /// Creates a [ChipGroupContext].
  const ChipGroupContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.value,
    this.defaultValue,
    this.onChanged,
    required this.multiple,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ChipGroupStyle style;

  /// Resolved interaction state for this build.
  final ChipGroupState state;

  /// The visual variant selected by the constructor.
  final ChipGroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The controlled value.
  final List<String>? value;

  /// Initial value when [value] is omitted.
  final List<String>? defaultValue;

  /// Called when the value changes.
  final void Function(List<String>)? onChanged;

  /// Whether more than one item can be selected.
  final bool multiple;
}

/// Builder for the root slot.
class ChipGroupRoot {
  /// Creates a [ChipGroupRoot] from a builder function.
  const ChipGroupRoot(this._build);

  final Widget Function(ChipGroupContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ChipGroupContext context) => _build(context);
}

/// Theme-owned composition slots for [ChipGroup].
abstract class ChipGroupDelegate extends ComponentDelegate {
  /// Creates a [ChipGroupDelegate].
  const ChipGroupDelegate();

  /// Builds the composition root.
  Widget root(ChipGroupContext context);
}

/// A [ChipGroup] widget resolved through [ChipGroupDelegate].
class ChipGroup extends StatelessWidget {
  /// Creates a [ChipGroup].
  const ChipGroup({
    super.key,
    required this.children,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.multiple,
    this.style,
  }) : variant = ChipGroupVariant.defaults;

  /// The visual variant selected by the constructor.
  final ChipGroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The controlled value.
  final List<String>? value;

  /// Initial value when [value] is omitted.
  final List<String>? defaultValue;

  /// Called when the value changes.
  final void Function(List<String>)? onChanged;

  /// Whether more than one item can be selected.
  final bool? multiple;

  /// Style overrides merged over theme defaults.
  final ChipGroupStyle? style;

  /// Resolves properties and builds via [ChipGroupDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedMultiple = multiple ?? false;

    const fromProps = ChipGroupStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ChipGroupState();
    final chipGroupContext = ChipGroupContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      multiple: resolvedMultiple,
    );
    final delegate = MantleTheme.of(context).delegate<ChipGroupDelegate>();
    return delegate.root(chipGroupContext);
  }
}
