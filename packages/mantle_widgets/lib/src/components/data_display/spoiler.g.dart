// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spoiler.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Spoiler].
enum SpoilerVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Spoiler].
@immutable
class SpoilerStyle {
  /// Creates a [SpoilerStyle].
  const SpoilerStyle();

  /// Returns a copy of this [SpoilerStyle] with selected fields replaced.
  SpoilerStyle copyWith() => this;

  /// Merges [other] over this [SpoilerStyle]; null fields keep this value.
  SpoilerStyle mergeWith(SpoilerStyle? other) => this;
}

/// Resolved interaction state for [Spoiler].
@immutable
class SpoilerState {
  /// Creates a [SpoilerState].
  const SpoilerState();
}

/// Values passed to [SpoilerDelegate] slots during build.
@immutable
class SpoilerContext {
  /// Creates a [SpoilerContext].
  const SpoilerContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.maxHeight,
    required this.showLabel,
    required this.hideLabel,
    this.expanded,
    required this.initialState,
    this.onExpandedChange,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final SpoilerStyle style;

  /// Resolved interaction state for this build.
  final SpoilerState state;

  /// The visual variant selected by the constructor.
  final SpoilerVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Maximum height in logical pixels.
  final double maxHeight;

  /// The show label.
  final Widget showLabel;

  /// The hide label.
  final Widget hideLabel;

  /// Whether expanded.
  final bool? expanded;

  /// Whether initial state.
  final bool initialState;

  /// Called when expanded change.
  final SpoilerOnExpandedChange? onExpandedChange;
}

/// Builder for the root slot.
class SpoilerRoot {
  /// Creates a [SpoilerRoot] from a builder function.
  const SpoilerRoot(this._build);

  final Widget Function(SpoilerContext context) _build;

  /// Invokes this slot with [context].
  Widget call(SpoilerContext context) => _build(context);
}

/// Theme-owned composition slots for [Spoiler].
abstract class SpoilerDelegate extends ComponentDelegate {
  /// Creates a [SpoilerDelegate].
  const SpoilerDelegate();

  /// Builds the composition root.
  Widget root(SpoilerContext context);
}

/// A [Spoiler] widget resolved through [SpoilerDelegate].
class Spoiler extends StatelessWidget {
  /// Creates a [Spoiler].
  const Spoiler({
    super.key,
    required this.child,
    required this.showLabel,
    required this.hideLabel,
    this.maxHeight,
    this.expanded,
    this.initialState,
    this.onExpandedChange,
    this.style,
  }) : variant = SpoilerVariant.defaults;

  /// The visual variant selected by the constructor.
  final SpoilerVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Maximum height in logical pixels.
  final double? maxHeight;

  /// The show label.
  final Widget showLabel;

  /// The hide label.
  final Widget hideLabel;

  /// Whether expanded.
  final bool? expanded;

  /// Whether initial state.
  final bool? initialState;

  /// Called when expanded change.
  final SpoilerOnExpandedChange? onExpandedChange;

  /// Style overrides merged over theme defaults.
  final SpoilerStyle? style;

  /// Resolves properties and builds via [SpoilerDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedMaxHeight = maxHeight ?? 100;
    final resolvedShowLabel = showLabel;
    final resolvedHideLabel = hideLabel;
    final resolvedExpanded = expanded;
    final resolvedInitialState = initialState ?? false;
    final resolvedOnExpandedChange = onExpandedChange;

    const fromProps = SpoilerStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SpoilerState();
    final spoilerContext = SpoilerContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      maxHeight: resolvedMaxHeight,
      showLabel: resolvedShowLabel,
      hideLabel: resolvedHideLabel,
      expanded: resolvedExpanded,
      initialState: resolvedInitialState,
      onExpandedChange: resolvedOnExpandedChange,
    );
    final delegate = MantleTheme.of(context).delegate<SpoilerDelegate>();
    return delegate.root(spoilerContext);
  }
}
