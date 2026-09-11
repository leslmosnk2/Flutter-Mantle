// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_overlay.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [LoadingOverlay].
enum LoadingOverlayVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [LoadingOverlay].
@immutable
class LoadingOverlayStyle {
  /// Creates a [LoadingOverlayStyle].
  const LoadingOverlayStyle();

  /// Returns a copy of this [LoadingOverlayStyle] with selected fields replaced.
  LoadingOverlayStyle copyWith() => this;

  /// Merges [other] over this [LoadingOverlayStyle]; null fields keep this value.
  LoadingOverlayStyle mergeWith(LoadingOverlayStyle? other) => this;
}

/// Resolved interaction state for [LoadingOverlay].
@immutable
class LoadingOverlayState {
  /// Creates a [LoadingOverlayState].
  const LoadingOverlayState();
}

/// Values passed to [LoadingOverlayDelegate] slots during build.
@immutable
class LoadingOverlayContext {
  /// Creates a [LoadingOverlayContext].
  const LoadingOverlayContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.visible,
    required this.backgroundOpacity,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final LoadingOverlayStyle style;

  /// Resolved interaction state for this build.
  final LoadingOverlayState state;

  /// The visual variant selected by the constructor.
  final LoadingOverlayVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether visible.
  final bool visible;

  /// The background opacity.
  final double backgroundOpacity;
}

/// Builder for the root slot.
class LoadingOverlayRoot {
  /// Creates a [LoadingOverlayRoot] from a builder function.
  const LoadingOverlayRoot(this._build);

  final Widget Function(LoadingOverlayContext context) _build;

  /// Invokes this slot with [context].
  Widget call(LoadingOverlayContext context) => _build(context);
}

/// Theme-owned composition slots for [LoadingOverlay].
abstract class LoadingOverlayDelegate extends ComponentDelegate {
  /// Creates a [LoadingOverlayDelegate].
  const LoadingOverlayDelegate();

  /// Builds the composition root.
  Widget root(LoadingOverlayContext context);
}

/// A [LoadingOverlay] widget resolved through [LoadingOverlayDelegate].
class LoadingOverlay extends StatelessWidget {
  /// Creates a [LoadingOverlay].
  const LoadingOverlay({
    super.key,
    required this.child,
    this.visible,
    this.backgroundOpacity,
    this.style,
  }) : variant = LoadingOverlayVariant.defaults;

  /// The visual variant selected by the constructor.
  final LoadingOverlayVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether visible.
  final bool? visible;

  /// The background opacity.
  final double? backgroundOpacity;

  /// Style overrides merged over theme defaults.
  final LoadingOverlayStyle? style;

  /// Resolves properties and builds via [LoadingOverlayDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedVisible = visible ?? false;
    final resolvedBackgroundOpacity = backgroundOpacity ?? 0.75;

    const fromProps = LoadingOverlayStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = LoadingOverlayState();
    final loadingOverlayContext = LoadingOverlayContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      visible: resolvedVisible,
      backgroundOpacity: resolvedBackgroundOpacity,
    );
    final delegate = MantleTheme.of(context).delegate<LoadingOverlayDelegate>();
    return delegate.root(loadingOverlayContext);
  }
}
