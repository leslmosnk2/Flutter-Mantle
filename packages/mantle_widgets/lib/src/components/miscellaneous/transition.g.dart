// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transition.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MTransitionVariant { defaults }

@immutable
class MTransitionStyle {
  const MTransitionStyle();

  MTransitionStyle copyWith() => this;

  MTransitionStyle mergeWith(MTransitionStyle? other) => this;
}

@immutable
class MTransitionState {
  const MTransitionState();
}

@immutable
class MTransitionContext {
  const MTransitionContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.mounted,
    required this.transition,
    required this.duration,
    this.exitDuration,
    required this.keepMounted,
    this.onEntered,
    this.onExited,
  });

  final BuildContext context;
  final MTransitionStyle style;
  final MTransitionState state;
  final MTransitionVariant variant;
  final Widget child;
  final bool mounted;
  final MantleTransitionName transition;
  final int duration;
  final int? exitDuration;
  final bool keepMounted;
  final VoidCallback? onEntered;
  final VoidCallback? onExited;
}

class MTransitionRoot {
  const MTransitionRoot(this._build);

  final Widget Function(MTransitionContext context) _build;

  Widget call(MTransitionContext context) => _build(context);
}

abstract class MTransitionDelegate extends ComponentDelegate {
  const MTransitionDelegate();

  Widget root(MTransitionContext context);
}

class MTransition extends StatelessWidget {
  const MTransition({
    super.key,
    required this.child,
    required this.mounted,
    this.transition,
    this.duration,
    this.exitDuration,
    this.keepMounted,
    this.onEntered,
    this.onExited,
    this.style,
  }) : variant = MTransitionVariant.defaults;

  final MTransitionVariant variant;
  final Widget child;
  final bool mounted;
  final MantleTransitionName? transition;
  final int? duration;
  final int? exitDuration;
  final bool? keepMounted;
  final VoidCallback? onEntered;
  final VoidCallback? onExited;
  final MTransitionStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedMounted = mounted;
    final resolvedTransition = transition ?? MantleTransitionName.fade;
    final resolvedDuration = duration ?? 250;
    final resolvedExitDuration = exitDuration;
    final resolvedKeepMounted = keepMounted ?? false;
    final resolvedOnEntered = onEntered;
    final resolvedOnExited = onExited;

    const fromProps = MTransitionStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MTransitionState();
    final mTransitionContext = MTransitionContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      mounted: resolvedMounted,
      transition: resolvedTransition,
      duration: resolvedDuration,
      exitDuration: resolvedExitDuration,
      keepMounted: resolvedKeepMounted,
      onEntered: resolvedOnEntered,
      onExited: resolvedOnExited,
    );
    final delegate = MantleTheme.of(context).delegate<MTransitionDelegate>();
    return delegate.root(mTransitionContext);
  }
}
