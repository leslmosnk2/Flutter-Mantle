// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skeleton.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum SkeletonVariant { defaults }

@immutable
class SkeletonStyle {
  const SkeletonStyle();

  SkeletonStyle copyWith() => this;

  SkeletonStyle mergeWith(SkeletonStyle? other) => this;
}

@immutable
class SkeletonState {
  const SkeletonState();
}

@immutable
class SkeletonContext {
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

  final BuildContext context;
  final SkeletonStyle style;
  final SkeletonState state;
  final SkeletonVariant variant;
  final double? width;
  final double? height;
  final bool circle;
  final BorderRadiusGeometry radius;
  final Widget? child;
  final bool visible;
  final bool animate;
}

class SkeletonRoot {
  const SkeletonRoot(this._build);

  final Widget Function(SkeletonContext context) _build;

  Widget call(SkeletonContext context) => _build(context);
}

abstract class SkeletonDelegate extends ComponentDelegate {
  const SkeletonDelegate();

  Widget root(SkeletonContext context);
}

class Skeleton extends StatelessWidget {
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

  final SkeletonVariant variant;
  final double? width;
  final double? height;
  final bool? circle;
  final BorderRadiusGeometry? radius;
  final Widget? child;
  final bool? visible;
  final bool? animate;
  final SkeletonStyle? style;

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
