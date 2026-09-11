// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skeleton.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Skeleton].
enum SkeletonVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Skeleton].
@immutable
class SkeletonStyle {
  /// Creates a [SkeletonStyle].
  const SkeletonStyle();

  /// Returns a copy of this [SkeletonStyle] with selected fields replaced.
  SkeletonStyle copyWith() => this;

  /// Merges [other] over this [SkeletonStyle]; null fields keep this value.
  SkeletonStyle mergeWith(SkeletonStyle? other) => this;
}

/// Resolved interaction state for [Skeleton].
@immutable
class SkeletonState {
  /// Creates a [SkeletonState].
  const SkeletonState();
}

/// Values passed to [SkeletonDelegate] slots during build.
@immutable
class SkeletonContext {
  /// Creates a [SkeletonContext].
  const SkeletonContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.width,
    this.height,
    required this.circle,
    required this.radius,
    this.child,
    required this.visible,
    required this.animate,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final SkeletonStyle style;

  /// Resolved interaction state for this build.
  final SkeletonState state;

  /// The visual variant selected by the constructor.
  final SkeletonVariant variant;

  /// Width in logical pixels.
  final double? width;

  /// Height in logical pixels.
  final double? height;

  /// Whether circle.
  final bool circle;

  /// Corner radius.
  final BorderRadiusGeometry radius;

  /// The primary child widget.
  final Widget? child;

  /// Whether visible.
  final bool visible;

  /// Whether animate.
  final bool animate;
}

/// Builder for the root slot.
class SkeletonRoot {
  /// Creates a [SkeletonRoot] from a builder function.
  const SkeletonRoot(this._build);

  final Widget Function(SkeletonContext context) _build;

  /// Invokes this slot with [context].
  Widget call(SkeletonContext context) => _build(context);
}

/// Theme-owned composition slots for [Skeleton].
abstract class SkeletonDelegate extends ComponentDelegate {
  /// Creates a [SkeletonDelegate].
  const SkeletonDelegate();

  /// Builds the composition root.
  Widget root(SkeletonContext context);
}

/// A [Skeleton] widget resolved through [SkeletonDelegate].
class Skeleton extends StatelessWidget {
  /// Creates a [Skeleton].
  const Skeleton({
    super.key,
    this.width,
    this.height,
    this.circle,
    this.radius,
    this.child,
    this.visible,
    this.animate,
    this.style,
  }) : variant = SkeletonVariant.defaults;

  /// The visual variant selected by the constructor.
  final SkeletonVariant variant;

  /// Width in logical pixels.
  final double? width;

  /// Height in logical pixels.
  final double? height;

  /// Whether circle.
  final bool? circle;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// The primary child widget.
  final Widget? child;

  /// Whether visible.
  final bool? visible;

  /// Whether animate.
  final bool? animate;

  /// Style overrides merged over theme defaults.
  final SkeletonStyle? style;

  /// Resolves properties and builds via [SkeletonDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedWidth = width;
    final resolvedHeight = height;
    final resolvedCircle = circle ?? false;
    final resolvedRadius = radius ?? feedbackDefaultRadius(context);
    final resolvedChild = child;
    final resolvedVisible = visible ?? true;
    final resolvedAnimate = animate ?? true;

    const fromProps = SkeletonStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SkeletonState();
    final skeletonContext = SkeletonContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      width: resolvedWidth,
      height: resolvedHeight,
      circle: resolvedCircle,
      radius: resolvedRadius,
      child: resolvedChild,
      visible: resolvedVisible,
      animate: resolvedAnimate,
    );
    final delegate = MantleTheme.of(context).delegate<SkeletonDelegate>();
    return delegate.root(skeletonContext);
  }
}
