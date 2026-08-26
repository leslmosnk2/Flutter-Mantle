// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scroll_area.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum ScrollAreaVariant { defaults }

@immutable
class ScrollAreaStyle {
  const ScrollAreaStyle();

  ScrollAreaStyle copyWith() => this;

  ScrollAreaStyle mergeWith(ScrollAreaStyle? other) => this;
}

@immutable
class ScrollAreaState {
  const ScrollAreaState();
}

@immutable
class ScrollAreaContext {
  const ScrollAreaContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.type,
    required this.scrollbars,
    this.onScrollPositionChange,
  });

  final BuildContext context;
  final ScrollAreaStyle style;
  final ScrollAreaState state;
  final ScrollAreaVariant variant;
  final Widget child;
  final ScrollAreaType type;
  final ScrollAreaScrollbars scrollbars;
  final ScrollAreaOnScrollPositionChange? onScrollPositionChange;
}

class ScrollAreaRoot {
  const ScrollAreaRoot(this._build);

  final Widget Function(ScrollAreaContext context) _build;

  Widget call(ScrollAreaContext context) => _build(context);
}

abstract class ScrollAreaDelegate extends ComponentDelegate {
  const ScrollAreaDelegate();

  Widget root(ScrollAreaContext context);
}

class ScrollArea extends StatelessWidget {
  const ScrollArea({
    super.key,
    required this.child,
    this.type,
    this.scrollbars,
    this.onScrollPositionChange,
    this.style,
  }) : variant = ScrollAreaVariant.defaults;

  final ScrollAreaVariant variant;
  final Widget child;
  final ScrollAreaType? type;
  final ScrollAreaScrollbars? scrollbars;
  final ScrollAreaOnScrollPositionChange? onScrollPositionChange;
  final ScrollAreaStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedType = type ?? ScrollAreaType.hover;
    final resolvedScrollbars = scrollbars ?? ScrollAreaScrollbars.xy;
    final resolvedOnScrollPositionChange = onScrollPositionChange;

    const fromProps = ScrollAreaStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ScrollAreaState();
    final scrollAreaContext = ScrollAreaContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      type: resolvedType,
      scrollbars: resolvedScrollbars,
      onScrollPositionChange: resolvedOnScrollPositionChange,
    );
    final delegate = MantleTheme.of(context).delegate<ScrollAreaDelegate>();
    return delegate.root(scrollAreaContext);
  }
}
