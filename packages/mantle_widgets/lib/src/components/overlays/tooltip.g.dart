// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tooltip.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Tooltip].
enum TooltipVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Tooltip].
@immutable
class TooltipStyle {
  /// Creates a [TooltipStyle].
  const TooltipStyle();

  /// Returns a copy of this [TooltipStyle] with selected fields replaced.
  TooltipStyle copyWith() => this;

  /// Merges [other] over this [TooltipStyle]; null fields keep this value.
  TooltipStyle mergeWith(TooltipStyle? other) => this;
}

/// Resolved interaction state for [Tooltip].
@immutable
class TooltipState {
  /// Creates a [TooltipState].
  const TooltipState();
}

/// Values passed to [TooltipDelegate] slots during build.
@immutable
class TooltipContext {
  /// Creates a [TooltipContext].
  const TooltipContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.label,
    this.opened,
    required this.disabled,
    required this.position,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TooltipStyle style;

  /// Resolved interaction state for this build.
  final TooltipState state;

  /// The visual variant selected by the constructor.
  final TooltipVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The label.
  final String label;

  /// Whether the content is expanded.
  final bool? opened;

  /// Whether interaction is disabled.
  final bool disabled;

  /// The position.
  final OverlayPlacement position;
}

/// Builder for the root slot.
class TooltipRoot {
  /// Creates a [TooltipRoot] from a builder function.
  const TooltipRoot(this._build);

  final Widget Function(TooltipContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TooltipContext context) => _build(context);
}

/// Theme-owned composition slots for [Tooltip].
abstract class TooltipDelegate extends ComponentDelegate {
  /// Creates a [TooltipDelegate].
  const TooltipDelegate();

  /// Builds the composition root.
  Widget root(TooltipContext context);
}

/// A [Tooltip] widget resolved through [TooltipDelegate].
class Tooltip extends StatelessWidget {
  /// Creates a [Tooltip].
  const Tooltip({
    super.key,
    required this.child,
    required this.label,
    this.opened,
    this.disabled,
    this.position,
    this.style,
  }) : variant = TooltipVariant.defaults;

  /// The visual variant selected by the constructor.
  final TooltipVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The label.
  final String label;

  /// Whether the content is expanded.
  final bool? opened;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// The position.
  final OverlayPlacement? position;

  /// Style overrides merged over theme defaults.
  final TooltipStyle? style;

  /// Resolves properties and builds via [TooltipDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedLabel = label;
    final resolvedOpened = opened;
    final resolvedDisabled = disabled ?? false;
    final resolvedPosition = position ?? OverlayPlacement.top;

    const fromProps = TooltipStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TooltipState();
    final tooltipContext = TooltipContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      label: resolvedLabel,
      opened: resolvedOpened,
      disabled: resolvedDisabled,
      position: resolvedPosition,
    );
    final delegate = MantleTheme.of(context).delegate<TooltipDelegate>();
    return delegate.root(tooltipContext);
  }
}
