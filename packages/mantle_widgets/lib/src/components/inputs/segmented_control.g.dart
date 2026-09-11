// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'segmented_control.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [SegmentedControl].
enum SegmentedControlVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [SegmentedControl].
@immutable
class SegmentedControlStyle {
  /// Creates a [SegmentedControlStyle].
  const SegmentedControlStyle();

  /// Returns a copy of this [SegmentedControlStyle] with selected fields replaced.
  SegmentedControlStyle copyWith() => this;

  /// Merges [other] over this [SegmentedControlStyle]; null fields keep this value.
  SegmentedControlStyle mergeWith(SegmentedControlStyle? other) => this;
}

/// Resolved interaction state for [SegmentedControl].
@immutable
class SegmentedControlState {
  /// Creates a [SegmentedControlState].
  const SegmentedControlState();
}

/// Values passed to [SegmentedControlDelegate] slots during build.
@immutable
class SegmentedControlContext {
  /// Creates a [SegmentedControlContext].
  const SegmentedControlContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.data,
    this.value,
    this.defaultValue,
    this.onChanged,
    required this.disabled,
    required this.readOnly,
    required this.fullWidth,
    required this.withItemsBorders,
    required this.orientation,
    this.color,
    required this.size,
    required this.radius,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final SegmentedControlStyle style;

  /// Resolved interaction state for this build.
  final SegmentedControlState state;

  /// The visual variant selected by the constructor.
  final SegmentedControlVariant variant;

  /// Tabular data to render.
  final List<SegmentedControlItem> data;

  /// The controlled value.
  final String? value;

  /// Initial value when [value] is omitted.
  final String? defaultValue;

  /// Called when the value changes.
  final void Function(String)? onChanged;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether the value cannot be edited.
  final bool readOnly;

  /// Whether full width.
  final bool fullWidth;

  /// Whether with items borders.
  final bool withItemsBorders;

  /// The orientation.
  final Axis orientation;

  /// Foreground or accent color.
  final String? color;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class SegmentedControlRoot {
  /// Creates a [SegmentedControlRoot] from a builder function.
  const SegmentedControlRoot(this._build);

  final Widget Function(SegmentedControlContext context) _build;

  /// Invokes this slot with [context].
  Widget call(SegmentedControlContext context) => _build(context);
}

/// Theme-owned composition slots for [SegmentedControl].
abstract class SegmentedControlDelegate extends ComponentDelegate {
  /// Creates a [SegmentedControlDelegate].
  const SegmentedControlDelegate();

  /// Builds the composition root.
  Widget root(SegmentedControlContext context);
}

/// A [SegmentedControl] widget resolved through [SegmentedControlDelegate].
class SegmentedControl extends StatelessWidget {
  /// Creates a [SegmentedControl].
  const SegmentedControl({
    super.key,
    required this.data,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.disabled,
    this.readOnly,
    this.fullWidth,
    this.withItemsBorders,
    this.orientation,
    this.color,
    this.size,
    this.radius,
    this.style,
  }) : variant = SegmentedControlVariant.defaults;

  /// The visual variant selected by the constructor.
  final SegmentedControlVariant variant;

  /// Tabular data to render.
  final List<SegmentedControlItem> data;

  /// The controlled value.
  final String? value;

  /// Initial value when [value] is omitted.
  final String? defaultValue;

  /// Called when the value changes.
  final void Function(String)? onChanged;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether the value cannot be edited.
  final bool? readOnly;

  /// Whether full width.
  final bool? fullWidth;

  /// Whether with items borders.
  final bool? withItemsBorders;

  /// The orientation.
  final Axis? orientation;

  /// Foreground or accent color.
  final String? color;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final SegmentedControlStyle? style;

  /// Resolves properties and builds via [SegmentedControlDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedData = data;
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedDisabled = disabled ?? false;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedFullWidth = fullWidth ?? false;
    final resolvedWithItemsBorders = withItemsBorders ?? true;
    final resolvedOrientation = orientation ?? Axis.horizontal;
    final resolvedColor = color;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = SegmentedControlStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SegmentedControlState();
    final segmentedControlContext = SegmentedControlContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      data: resolvedData,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      disabled: resolvedDisabled,
      readOnly: resolvedReadOnly,
      fullWidth: resolvedFullWidth,
      withItemsBorders: resolvedWithItemsBorders,
      orientation: resolvedOrientation,
      color: resolvedColor,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<SegmentedControlDelegate>();
    return delegate.root(segmentedControlContext);
  }
}
