// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collapse.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum CollapseVariant { defaults }

@immutable
class CollapseStyle {
  const CollapseStyle();

  CollapseStyle copyWith() => this;

  CollapseStyle mergeWith(CollapseStyle? other) => this;
}

@immutable
class CollapseState {
  const CollapseState();
}

@immutable
class CollapseContext {
  const CollapseContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.opened,
    required this.transitionDuration,
    required this.animateOpacity,
    required this.keepMounted,
    this.onTransitionEnd,
  });

  final BuildContext context;
  final CollapseStyle style;
  final CollapseState state;
  final CollapseVariant variant;
  final Widget child;
  final bool opened;
  final int transitionDuration;
  final bool animateOpacity;
  final bool keepMounted;
  final VoidCallback? onTransitionEnd;
}

class CollapseRoot {
  const CollapseRoot(this._build);

  final Widget Function(CollapseContext context) _build;

  Widget call(CollapseContext context) => _build(context);
}

abstract class CollapseDelegate extends ComponentDelegate {
  const CollapseDelegate();

  Widget root(CollapseContext context);
}

class Collapse extends StatelessWidget {
  const Collapse({
    super.key,
    required this.child,
    this.opened,
    this.transitionDuration,
    this.animateOpacity,
    this.keepMounted,
    this.onTransitionEnd,
    this.style,
  }) : variant = CollapseVariant.defaults;

  final CollapseVariant variant;
  final Widget child;
  final bool? opened;
  final int? transitionDuration;
  final bool? animateOpacity;
  final bool? keepMounted;
  final VoidCallback? onTransitionEnd;
  final CollapseStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedOpened = opened ?? false;
    final resolvedTransitionDuration = transitionDuration ?? 200;
    final resolvedAnimateOpacity = animateOpacity ?? true;
    final resolvedKeepMounted = keepMounted ?? false;
    final resolvedOnTransitionEnd = onTransitionEnd;

    const fromProps = CollapseStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = CollapseState();
    final collapseContext = CollapseContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      opened: resolvedOpened,
      transitionDuration: resolvedTransitionDuration,
      animateOpacity: resolvedAnimateOpacity,
      keepMounted: resolvedKeepMounted,
      onTransitionEnd: resolvedOnTransitionEnd,
    );
    final delegate = MantleTheme.of(context).delegate<CollapseDelegate>();
    return delegate.root(collapseContext);
  }
}
