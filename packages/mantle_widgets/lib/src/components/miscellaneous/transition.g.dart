// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transition.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MTransition].
enum MTransitionVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MTransition].
@immutable
class MTransitionStyle {
  /// Creates a [MTransitionStyle].
  const MTransitionStyle();

  /// Returns a copy of this [MTransitionStyle] with selected fields replaced.
  MTransitionStyle copyWith() => this;

  /// Merges [other] over this [MTransitionStyle]; null fields keep this value.
  MTransitionStyle mergeWith(MTransitionStyle? other) => this;
}

/// Resolved interaction state for [MTransition].
@immutable
class MTransitionState {
  /// Creates a [MTransitionState].
  const MTransitionState();
}

/// Values passed to [MTransitionDelegate] slots during build.
@immutable
class MTransitionContext {
  /// Creates a [MTransitionContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MTransitionStyle style;

  /// Resolved interaction state for this build.
  final MTransitionState state;

  /// The visual variant selected by the constructor.
  final MTransitionVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether the transition is in the mounted phase.
  final bool mounted;

  /// The transition.
  final MantleTransitionName transition;

  /// Animation duration in milliseconds.
  final int duration;

  /// Exit animation duration in milliseconds.
  final int? exitDuration;

  /// Whether to keep children mounted when closed.
  final bool keepMounted;

  /// Called after the enter transition finishes.
  final VoidCallback? onEntered;

  /// Called after the exit transition finishes.
  final VoidCallback? onExited;
}

/// Builder for the root slot.
class MTransitionRoot {
  /// Creates a [MTransitionRoot] from a builder function.
  const MTransitionRoot(this._build);

  final Widget Function(MTransitionContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MTransitionContext context) => _build(context);
}

/// Theme-owned composition slots for [MTransition].
abstract class MTransitionDelegate extends ComponentDelegate {
  /// Creates a [MTransitionDelegate].
  const MTransitionDelegate();

  /// Builds the composition root.
  Widget root(MTransitionContext context);
}

/// A [MTransition] widget resolved through [MTransitionDelegate].
class MTransition extends StatelessWidget {
  /// Creates a [MTransition].
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

  /// The visual variant selected by the constructor.
  final MTransitionVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether the transition is in the mounted phase.
  final bool mounted;

  /// The transition.
  final MantleTransitionName? transition;

  /// Animation duration in milliseconds.
  final int? duration;

  /// Exit animation duration in milliseconds.
  final int? exitDuration;

  /// Whether to keep children mounted when closed.
  final bool? keepMounted;

  /// Called after the enter transition finishes.
  final VoidCallback? onEntered;

  /// Called after the exit transition finishes.
  final VoidCallback? onExited;

  /// Style overrides merged over theme defaults.
  final MTransitionStyle? style;

  /// Resolves properties and builds via [MTransitionDelegate].
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
