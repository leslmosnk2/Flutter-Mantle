// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'divider.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Divider].
enum DividerVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Divider].
@immutable
class DividerStyle {
  /// Creates a [DividerStyle].
  const DividerStyle();

  /// Returns a copy of this [DividerStyle] with selected fields replaced.
  DividerStyle copyWith() => this;

  /// Merges [other] over this [DividerStyle]; null fields keep this value.
  DividerStyle mergeWith(DividerStyle? other) => this;
}

/// Resolved interaction state for [Divider].
@immutable
class DividerState {
  /// Creates a [DividerState].
  const DividerState();
}

/// Values passed to [DividerDelegate] slots during build.
@immutable
class DividerContext {
  /// Creates a [DividerContext].
  const DividerContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.orientation,
    this.label,
    required this.labelPosition,
    required this.size,
    this.color,
    required this.lineVariant,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final DividerStyle style;

  /// Resolved interaction state for this build.
  final DividerState state;

  /// The visual variant selected by the constructor.
  final DividerVariant variant;

  /// The orientation.
  final Axis orientation;

  /// The label.
  final Widget? label;

  /// The label position.
  final DividerLabelPosition labelPosition;

  /// Size token.
  final String size;

  /// Foreground or accent color.
  final String? color;

  /// The line variant.
  final DividerLineVariant lineVariant;
}

/// Builder for the root slot.
class DividerRoot {
  /// Creates a [DividerRoot] from a builder function.
  const DividerRoot(this._build);

  final Widget Function(DividerContext context) _build;

  /// Invokes this slot with [context].
  Widget call(DividerContext context) => _build(context);
}

/// Theme-owned composition slots for [Divider].
abstract class DividerDelegate extends ComponentDelegate {
  /// Creates a [DividerDelegate].
  const DividerDelegate();

  /// Builds the composition root.
  Widget root(DividerContext context);
}

/// A [Divider] widget resolved through [DividerDelegate].
class Divider extends StatelessWidget {
  /// Creates a [Divider].
  const Divider({
    super.key,
    this.orientation,
    this.label,
    this.labelPosition,
    this.size,
    this.color,
    this.lineVariant,
    this.style,
  }) : variant = DividerVariant.defaults;

  /// The visual variant selected by the constructor.
  final DividerVariant variant;

  /// The orientation.
  final Axis? orientation;

  /// The label.
  final Widget? label;

  /// The label position.
  final DividerLabelPosition? labelPosition;

  /// Size token.
  final String? size;

  /// Foreground or accent color.
  final String? color;

  /// The line variant.
  final DividerLineVariant? lineVariant;

  /// Style overrides merged over theme defaults.
  final DividerStyle? style;

  /// Resolves properties and builds via [DividerDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedOrientation = orientation ?? Axis.horizontal;
    final resolvedLabel = label;
    final resolvedLabelPosition = labelPosition ?? DividerLabelPosition.center;
    final resolvedSize = size ?? 'xs';
    final resolvedColor = color;
    final resolvedLineVariant = lineVariant ?? DividerLineVariant.solid;

    const fromProps = DividerStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = DividerState();
    final dividerContext = DividerContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      orientation: resolvedOrientation,
      label: resolvedLabel,
      labelPosition: resolvedLabelPosition,
      size: resolvedSize,
      color: resolvedColor,
      lineVariant: resolvedLineVariant,
    );
    final delegate = MantleTheme.of(context).delegate<DividerDelegate>();
    return delegate.root(dividerContext);
  }
}
