// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aspect_ratio.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MAspectRatio].
enum MAspectRatioVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MAspectRatio].
@immutable
class MAspectRatioStyle {
  /// Creates a [MAspectRatioStyle].
  const MAspectRatioStyle();

  /// Returns a copy of this [MAspectRatioStyle] with selected fields replaced.
  MAspectRatioStyle copyWith() => this;

  /// Merges [other] over this [MAspectRatioStyle]; null fields keep this value.
  MAspectRatioStyle mergeWith(MAspectRatioStyle? other) => this;
}

/// Resolved interaction state for [MAspectRatio].
@immutable
class MAspectRatioState {
  /// Creates a [MAspectRatioState].
  const MAspectRatioState();
}

/// Values passed to [MAspectRatioDelegate] slots during build.
@immutable
class MAspectRatioContext {
  /// Creates a [MAspectRatioContext].
  const MAspectRatioContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.ratio,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MAspectRatioStyle style;

  /// Resolved interaction state for this build.
  final MAspectRatioState state;

  /// The visual variant selected by the constructor.
  final MAspectRatioVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The ratio.
  final double ratio;
}

/// Builder for the root slot.
class MAspectRatioRoot {
  /// Creates a [MAspectRatioRoot] from a builder function.
  const MAspectRatioRoot(this._build);

  final Widget Function(MAspectRatioContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MAspectRatioContext context) => _build(context);
}

/// Theme-owned composition slots for [MAspectRatio].
abstract class MAspectRatioDelegate extends ComponentDelegate {
  /// Creates a [MAspectRatioDelegate].
  const MAspectRatioDelegate();

  /// Builds the composition root.
  Widget root(MAspectRatioContext context);
}

/// A [MAspectRatio] widget resolved through [MAspectRatioDelegate].
class MAspectRatio extends StatelessWidget {
  /// Creates a [MAspectRatio].
  const MAspectRatio({super.key, required this.child, this.ratio, this.style})
    : variant = MAspectRatioVariant.defaults;

  /// The visual variant selected by the constructor.
  final MAspectRatioVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The ratio.
  final double? ratio;

  /// Style overrides merged over theme defaults.
  final MAspectRatioStyle? style;

  /// Resolves properties and builds via [MAspectRatioDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedRatio = ratio ?? 1;

    const fromProps = MAspectRatioStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MAspectRatioState();
    final mAspectRatioContext = MAspectRatioContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      ratio: resolvedRatio,
    );
    final delegate = MantleTheme.of(context).delegate<MAspectRatioDelegate>();
    return delegate.root(mAspectRatioContext);
  }
}
