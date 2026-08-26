// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scroller.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum ScrollerVariant { defaults }

@immutable
class ScrollerStyle {
  const ScrollerStyle();

  ScrollerStyle copyWith() => this;

  ScrollerStyle mergeWith(ScrollerStyle? other) => this;
}

@immutable
class ScrollerState {
  const ScrollerState();
}

@immutable
class ScrollerContext {
  const ScrollerContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.scrollAmount,
    required this.draggable,
    required this.controlSize,
    this.startControlIcon,
    this.endControlIcon,
    required this.showStartControl,
    required this.showEndControl,
  });

  final BuildContext context;
  final ScrollerStyle style;
  final ScrollerState state;
  final ScrollerVariant variant;
  final Widget child;
  final double scrollAmount;
  final bool draggable;
  final double controlSize;
  final Widget? startControlIcon;
  final Widget? endControlIcon;
  final bool showStartControl;
  final bool showEndControl;
}

class ScrollerRoot {
  const ScrollerRoot(this._build);

  final Widget Function(ScrollerContext context) _build;

  Widget call(ScrollerContext context) => _build(context);
}

abstract class ScrollerDelegate extends ComponentDelegate {
  const ScrollerDelegate();

  Widget root(ScrollerContext context);
}

class Scroller extends StatelessWidget {
  const Scroller({
    super.key,
    required this.child,
    this.scrollAmount,
    this.draggable,
    this.controlSize,
    this.startControlIcon,
    this.endControlIcon,
    this.showStartControl,
    this.showEndControl,
    this.style,
  }) : variant = ScrollerVariant.defaults;

  final ScrollerVariant variant;
  final Widget child;
  final double? scrollAmount;
  final bool? draggable;
  final double? controlSize;
  final Widget? startControlIcon;
  final Widget? endControlIcon;
  final bool? showStartControl;
  final bool? showEndControl;
  final ScrollerStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedScrollAmount = scrollAmount ?? 200;
    final resolvedDraggable = draggable ?? true;
    final resolvedControlSize = controlSize ?? 50;
    final resolvedStartControlIcon = startControlIcon;
    final resolvedEndControlIcon = endControlIcon;
    final resolvedShowStartControl = showStartControl ?? false;
    final resolvedShowEndControl = showEndControl ?? false;

    const fromProps = ScrollerStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ScrollerState();
    final scrollerContext = ScrollerContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      scrollAmount: resolvedScrollAmount,
      draggable: resolvedDraggable,
      controlSize: resolvedControlSize,
      startControlIcon: resolvedStartControlIcon,
      endControlIcon: resolvedEndControlIcon,
      showStartControl: resolvedShowStartControl,
      showEndControl: resolvedShowEndControl,
    );
    final delegate = MantleTheme.of(context).delegate<ScrollerDelegate>();
    return delegate.root(scrollerContext);
  }
}
