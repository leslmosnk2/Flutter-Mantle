// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floating_window.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum FloatingWindowVariant { defaults }

@immutable
class FloatingWindowStyle {
  const FloatingWindowStyle();

  FloatingWindowStyle copyWith() => this;

  FloatingWindowStyle mergeWith(FloatingWindowStyle? other) => this;
}

@immutable
class FloatingWindowState {
  const FloatingWindowState();
}

@immutable
class FloatingWindowContext {
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

  final BuildContext context;
  final FloatingWindowStyle style;
  final FloatingWindowState state;
  final FloatingWindowVariant variant;
  final Widget child;
  final Widget? title;
  final double left;
  final double top;
  final double? width;
  final double? height;
  final bool enabled;
  final bool constrainToViewport;
  final bool withBorder;
  final FloatingWindowAxis axis;
  final VoidCallback? onClose;
}

class FloatingWindowRoot {
  const FloatingWindowRoot(this._build);

  final Widget Function(FloatingWindowContext context) _build;

  Widget call(FloatingWindowContext context) => _build(context);
}

abstract class FloatingWindowDelegate extends ComponentDelegate {
  const FloatingWindowDelegate();

  Widget root(FloatingWindowContext context);
}

class FloatingWindow extends StatelessWidget {
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

  final FloatingWindowVariant variant;
  final Widget child;
  final Widget? title;
  final double? left;
  final double? top;
  final double? width;
  final double? height;
  final bool? enabled;
  final bool? constrainToViewport;
  final bool? withBorder;
  final FloatingWindowAxis? axis;
  final VoidCallback? onClose;
  final FloatingWindowStyle? style;

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
