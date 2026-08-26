// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum BoxVariant { defaults }

@immutable
class BoxStyle {
  const BoxStyle();

  BoxStyle copyWith() => this;

  BoxStyle mergeWith(BoxStyle? other) => this;
}

@immutable
class BoxState {
  const BoxState();
}

@immutable
class BoxContext {
  const BoxContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.child,
    this.padding,
    this.margin,
    this.color,
    this.radius,
    this.width,
    this.height,
  });

  final BuildContext context;
  final BoxStyle style;
  final BoxState state;
  final BoxVariant variant;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final BorderRadiusGeometry? radius;
  final double? width;
  final double? height;
}

class BoxRoot {
  const BoxRoot(this._build);

  final Widget Function(BoxContext context) _build;

  Widget call(BoxContext context) => _build(context);
}

abstract class BoxDelegate extends ComponentDelegate {
  const BoxDelegate();

  Widget root(BoxContext context);
}

class Box extends StatelessWidget {
  const Box({
    super.key,
    this.child,
    this.padding,
    this.margin,
    this.color,
    this.radius,
    this.width,
    this.height,
    this.style,
  }) : variant = BoxVariant.defaults;

  final BoxVariant variant;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final BorderRadiusGeometry? radius;
  final double? width;
  final double? height;
  final BoxStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedPadding = padding;
    final resolvedMargin = margin;
    final resolvedColor = color;
    final resolvedRadius = radius;
    final resolvedWidth = width;
    final resolvedHeight = height;

    const fromProps = BoxStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = BoxState();
    final boxContext = BoxContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      padding: resolvedPadding,
      margin: resolvedMargin,
      color: resolvedColor,
      radius: resolvedRadius,
      width: resolvedWidth,
      height: resolvedHeight,
    );
    final delegate = MantleTheme.of(context).delegate<BoxDelegate>();
    return delegate.root(boxContext);
  }
}
