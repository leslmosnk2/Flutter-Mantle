// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overlay.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MOverlay].
enum MOverlayVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MOverlay].
@immutable
class MOverlayStyle {
  /// Creates a [MOverlayStyle].
  const MOverlayStyle();

  /// Returns a copy of this [MOverlayStyle] with selected fields replaced.
  MOverlayStyle copyWith() => this;

  /// Merges [other] over this [MOverlayStyle]; null fields keep this value.
  MOverlayStyle mergeWith(MOverlayStyle? other) => this;
}

/// Resolved interaction state for [MOverlay].
@immutable
class MOverlayState {
  /// Creates a [MOverlayState].
  const MOverlayState();
}

/// Values passed to [MOverlayDelegate] slots during build.
@immutable
class MOverlayContext {
  /// Creates a [MOverlayContext].
  const MOverlayContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.visible,
    required this.backgroundOpacity,
    this.color,
    this.onTap,
    this.child,
    required this.center,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MOverlayStyle style;

  /// Resolved interaction state for this build.
  final MOverlayState state;

  /// The visual variant selected by the constructor.
  final MOverlayVariant variant;

  /// Whether visible.
  final bool visible;

  /// The background opacity.
  final double backgroundOpacity;

  /// Foreground or accent color.
  final Color? color;

  /// Called when tap.
  final VoidCallback? onTap;

  /// The primary child widget.
  final Widget? child;

  /// Whether to center content.
  final bool center;
}

/// Builder for the root slot.
class MOverlayRoot {
  /// Creates a [MOverlayRoot] from a builder function.
  const MOverlayRoot(this._build);

  final Widget Function(MOverlayContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MOverlayContext context) => _build(context);
}

/// Theme-owned composition slots for [MOverlay].
abstract class MOverlayDelegate extends ComponentDelegate {
  /// Creates a [MOverlayDelegate].
  const MOverlayDelegate();

  /// Builds the composition root.
  Widget root(MOverlayContext context);
}

/// A [MOverlay] widget resolved through [MOverlayDelegate].
class MOverlay extends StatelessWidget {
  /// Creates a [MOverlay].
  const MOverlay({
    super.key,
    this.visible,
    this.backgroundOpacity,
    this.color,
    this.onTap,
    this.child,
    this.center,
    this.style,
  }) : variant = MOverlayVariant.defaults;

  /// The visual variant selected by the constructor.
  final MOverlayVariant variant;

  /// Whether visible.
  final bool? visible;

  /// The background opacity.
  final double? backgroundOpacity;

  /// Foreground or accent color.
  final Color? color;

  /// Called when tap.
  final VoidCallback? onTap;

  /// The primary child widget.
  final Widget? child;

  /// Whether to center content.
  final bool? center;

  /// Style overrides merged over theme defaults.
  final MOverlayStyle? style;

  /// Resolves properties and builds via [MOverlayDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedVisible = visible ?? true;
    final resolvedBackgroundOpacity = backgroundOpacity ?? 0.6;
    final resolvedColor = color;
    final resolvedOnTap = onTap;
    final resolvedChild = child;
    final resolvedCenter = center ?? false;

    const fromProps = MOverlayStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MOverlayState();
    final mOverlayContext = MOverlayContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      visible: resolvedVisible,
      backgroundOpacity: resolvedBackgroundOpacity,
      color: resolvedColor,
      onTap: resolvedOnTap,
      child: resolvedChild,
      center: resolvedCenter,
    );
    final delegate = MantleTheme.of(context).delegate<MOverlayDelegate>();
    return delegate.root(mOverlayContext);
  }
}
