// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collapse.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Collapse].
enum CollapseVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Collapse].
@immutable
class CollapseStyle {
  /// Creates a [CollapseStyle].
  const CollapseStyle();

  /// Returns a copy of this [CollapseStyle] with selected fields replaced.
  CollapseStyle copyWith() => this;

  /// Merges [other] over this [CollapseStyle]; null fields keep this value.
  CollapseStyle mergeWith(CollapseStyle? other) => this;
}

/// Resolved interaction state for [Collapse].
@immutable
class CollapseState {
  /// Creates a [CollapseState].
  const CollapseState();
}

/// Values passed to [CollapseDelegate] slots during build.
@immutable
class CollapseContext {
  /// Creates a [CollapseContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final CollapseStyle style;

  /// Resolved interaction state for this build.
  final CollapseState state;

  /// The visual variant selected by the constructor.
  final CollapseVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether the content is expanded.
  final bool opened;

  /// The transition duration.
  final int transitionDuration;

  /// Whether animate opacity.
  final bool animateOpacity;

  /// Whether to keep children mounted when closed.
  final bool keepMounted;

  /// Called when transition end.
  final VoidCallback? onTransitionEnd;
}

/// Builder for the root slot.
class CollapseRoot {
  /// Creates a [CollapseRoot] from a builder function.
  const CollapseRoot(this._build);

  final Widget Function(CollapseContext context) _build;

  /// Invokes this slot with [context].
  Widget call(CollapseContext context) => _build(context);
}

/// Theme-owned composition slots for [Collapse].
abstract class CollapseDelegate extends ComponentDelegate {
  /// Creates a [CollapseDelegate].
  const CollapseDelegate();

  /// Builds the composition root.
  Widget root(CollapseContext context);
}

/// A [Collapse] widget resolved through [CollapseDelegate].
class Collapse extends StatelessWidget {
  /// Creates a [Collapse].
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

  /// The visual variant selected by the constructor.
  final CollapseVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether the content is expanded.
  final bool? opened;

  /// The transition duration.
  final int? transitionDuration;

  /// Whether animate opacity.
  final bool? animateOpacity;

  /// Whether to keep children mounted when closed.
  final bool? keepMounted;

  /// Called when transition end.
  final VoidCallback? onTransitionEnd;

  /// Style overrides merged over theme defaults.
  final CollapseStyle? style;

  /// Resolves properties and builds via [CollapseDelegate].
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
