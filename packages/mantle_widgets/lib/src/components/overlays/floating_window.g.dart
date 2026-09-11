// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floating_window.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [FloatingWindow].
enum FloatingWindowVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [FloatingWindow].
@immutable
class FloatingWindowStyle {
  /// Creates a [FloatingWindowStyle].
  const FloatingWindowStyle();

  /// Returns a copy of this [FloatingWindowStyle] with selected fields replaced.
  FloatingWindowStyle copyWith() => this;

  /// Merges [other] over this [FloatingWindowStyle]; null fields keep this value.
  FloatingWindowStyle mergeWith(FloatingWindowStyle? other) => this;
}

/// Resolved interaction state for [FloatingWindow].
@immutable
class FloatingWindowState {
  /// Creates a [FloatingWindowState].
  const FloatingWindowState();
}

/// Values passed to [FloatingWindowDelegate] slots during build.
@immutable
class FloatingWindowContext {
  /// Creates a [FloatingWindowContext].
  const FloatingWindowContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.title,
    required this.left,
    required this.top,
    this.width,
    this.height,
    required this.enabled,
    required this.constrainToViewport,
    required this.withBorder,
    required this.axis,
    this.onClose,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final FloatingWindowStyle style;

  /// Resolved interaction state for this build.
  final FloatingWindowState state;

  /// The visual variant selected by the constructor.
  final FloatingWindowVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The title.
  final Widget? title;

  /// The left.
  final double left;

  /// The top.
  final double top;

  /// Width in logical pixels.
  final double? width;

  /// Height in logical pixels.
  final double? height;

  /// Whether enabled.
  final bool enabled;

  /// Whether constrain to viewport.
  final bool constrainToViewport;

  /// Whether to draw a border.
  final bool withBorder;

  /// The axis.
  final FloatingWindowAxis axis;

  /// Called when the overlay closes.
  final VoidCallback? onClose;
}

/// Builder for the root slot.
class FloatingWindowRoot {
  /// Creates a [FloatingWindowRoot] from a builder function.
  const FloatingWindowRoot(this._build);

  final Widget Function(FloatingWindowContext context) _build;

  /// Invokes this slot with [context].
  Widget call(FloatingWindowContext context) => _build(context);
}

/// Theme-owned composition slots for [FloatingWindow].
abstract class FloatingWindowDelegate extends ComponentDelegate {
  /// Creates a [FloatingWindowDelegate].
  const FloatingWindowDelegate();

  /// Builds the composition root.
  Widget root(FloatingWindowContext context);
}

/// A [FloatingWindow] widget resolved through [FloatingWindowDelegate].
class FloatingWindow extends StatelessWidget {
  /// Creates a [FloatingWindow].
  const FloatingWindow({
    super.key,
    required this.child,
    this.title,
    this.left,
    this.top,
    this.width,
    this.height,
    this.enabled,
    this.constrainToViewport,
    this.withBorder,
    this.axis,
    this.onClose,
    this.style,
  }) : variant = FloatingWindowVariant.defaults;

  /// The visual variant selected by the constructor.
  final FloatingWindowVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The title.
  final Widget? title;

  /// The left.
  final double? left;

  /// The top.
  final double? top;

  /// Width in logical pixels.
  final double? width;

  /// Height in logical pixels.
  final double? height;

  /// Whether enabled.
  final bool? enabled;

  /// Whether constrain to viewport.
  final bool? constrainToViewport;

  /// Whether to draw a border.
  final bool? withBorder;

  /// The axis.
  final FloatingWindowAxis? axis;

  /// Called when the overlay closes.
  final VoidCallback? onClose;

  /// Style overrides merged over theme defaults.
  final FloatingWindowStyle? style;

  /// Resolves properties and builds via [FloatingWindowDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedTitle = title;
    final resolvedLeft = left ?? 20;
    final resolvedTop = top ?? 20;
    final resolvedWidth = width;
    final resolvedHeight = height;
    final resolvedEnabled = enabled ?? true;
    final resolvedConstrainToViewport = constrainToViewport ?? true;
    final resolvedWithBorder = withBorder ?? true;
    final resolvedAxis = axis ?? FloatingWindowAxis.both;
    final resolvedOnClose = onClose;

    const fromProps = FloatingWindowStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = FloatingWindowState();
    final floatingWindowContext = FloatingWindowContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      title: resolvedTitle,
      left: resolvedLeft,
      top: resolvedTop,
      width: resolvedWidth,
      height: resolvedHeight,
      enabled: resolvedEnabled,
      constrainToViewport: resolvedConstrainToViewport,
      withBorder: resolvedWithBorder,
      axis: resolvedAxis,
      onClose: resolvedOnClose,
    );
    final delegate = MantleTheme.of(context).delegate<FloatingWindowDelegate>();
    return delegate.root(floatingWindowContext);
  }
}
