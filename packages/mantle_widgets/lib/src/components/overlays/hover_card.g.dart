// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hover_card.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [HoverCard].
enum HoverCardVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [HoverCard].
@immutable
class HoverCardStyle {
  /// Creates a [HoverCardStyle].
  const HoverCardStyle();

  /// Returns a copy of this [HoverCardStyle] with selected fields replaced.
  HoverCardStyle copyWith() => this;

  /// Merges [other] over this [HoverCardStyle]; null fields keep this value.
  HoverCardStyle mergeWith(HoverCardStyle? other) => this;
}

/// Resolved interaction state for [HoverCard].
@immutable
class HoverCardState {
  /// Creates a [HoverCardState].
  const HoverCardState();
}

/// Values passed to [HoverCardDelegate] slots during build.
@immutable
class HoverCardContext {
  /// Creates a [HoverCardContext].
  const HoverCardContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.initiallyOpened,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final HoverCardStyle style;

  /// Resolved interaction state for this build.
  final HoverCardState state;

  /// The visual variant selected by the constructor.
  final HoverCardVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Whether initially opened.
  final bool initiallyOpened;
}

/// Builder for the root slot.
class HoverCardRoot {
  /// Creates a [HoverCardRoot] from a builder function.
  const HoverCardRoot(this._build);

  final Widget Function(HoverCardContext context) _build;

  /// Invokes this slot with [context].
  Widget call(HoverCardContext context) => _build(context);
}

/// Theme-owned composition slots for [HoverCard].
abstract class HoverCardDelegate extends ComponentDelegate {
  /// Creates a [HoverCardDelegate].
  const HoverCardDelegate();

  /// Builds the composition root.
  Widget root(HoverCardContext context);
}

/// A [HoverCard] widget resolved through [HoverCardDelegate].
class HoverCard extends StatelessWidget {
  /// Creates a [HoverCard].
  const HoverCard({
    super.key,
    required this.children,
    this.initiallyOpened,
    this.style,
  }) : variant = HoverCardVariant.defaults;

  /// The visual variant selected by the constructor.
  final HoverCardVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Whether initially opened.
  final bool? initiallyOpened;

  /// Style overrides merged over theme defaults.
  final HoverCardStyle? style;

  /// Resolves properties and builds via [HoverCardDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedInitiallyOpened = initiallyOpened ?? false;

    const fromProps = HoverCardStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = HoverCardState();
    final hoverCardContext = HoverCardContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      initiallyOpened: resolvedInitiallyOpened,
    );
    final delegate = MantleTheme.of(context).delegate<HoverCardDelegate>();
    return delegate.root(hoverCardContext);
  }
}

/// Visual variants of [HoverCardTarget].
enum HoverCardTargetVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [HoverCardTarget].
@immutable
class HoverCardTargetStyle {
  /// Creates a [HoverCardTargetStyle].
  const HoverCardTargetStyle();

  /// Returns a copy of this [HoverCardTargetStyle] with selected fields replaced.
  HoverCardTargetStyle copyWith() => this;

  /// Merges [other] over this [HoverCardTargetStyle]; null fields keep this value.
  HoverCardTargetStyle mergeWith(HoverCardTargetStyle? other) => this;
}

/// Resolved interaction state for [HoverCardTarget].
@immutable
class HoverCardTargetState {
  /// Creates a [HoverCardTargetState].
  const HoverCardTargetState();
}

/// Values passed to [HoverCardTargetDelegate] slots during build.
@immutable
class HoverCardTargetContext {
  /// Creates a [HoverCardTargetContext].
  const HoverCardTargetContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final HoverCardTargetStyle style;

  /// Resolved interaction state for this build.
  final HoverCardTargetState state;

  /// The visual variant selected by the constructor.
  final HoverCardTargetVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class HoverCardTargetRoot {
  /// Creates a [HoverCardTargetRoot] from a builder function.
  const HoverCardTargetRoot(this._build);

  final Widget Function(HoverCardTargetContext context) _build;

  /// Invokes this slot with [context].
  Widget call(HoverCardTargetContext context) => _build(context);
}

/// Theme-owned composition slots for [HoverCardTarget].
abstract class HoverCardTargetDelegate extends ComponentDelegate {
  /// Creates a [HoverCardTargetDelegate].
  const HoverCardTargetDelegate();

  /// Builds the composition root.
  Widget root(HoverCardTargetContext context);
}

/// A [HoverCardTarget] widget resolved through [HoverCardTargetDelegate].
class HoverCardTarget extends StatelessWidget {
  /// Creates a [HoverCardTarget].
  const HoverCardTarget({super.key, required this.child, this.style})
    : variant = HoverCardTargetVariant.defaults;

  /// The visual variant selected by the constructor.
  final HoverCardTargetVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final HoverCardTargetStyle? style;

  /// Resolves properties and builds via [HoverCardTargetDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = HoverCardTargetStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = HoverCardTargetState();
    final hoverCardTargetContext = HoverCardTargetContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<HoverCardTargetDelegate>();
    return delegate.root(hoverCardTargetContext);
  }
}

/// Visual variants of [HoverCardDropdown].
enum HoverCardDropdownVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [HoverCardDropdown].
@immutable
class HoverCardDropdownStyle {
  /// Creates a [HoverCardDropdownStyle].
  const HoverCardDropdownStyle();

  /// Returns a copy of this [HoverCardDropdownStyle] with selected fields replaced.
  HoverCardDropdownStyle copyWith() => this;

  /// Merges [other] over this [HoverCardDropdownStyle]; null fields keep this value.
  HoverCardDropdownStyle mergeWith(HoverCardDropdownStyle? other) => this;
}

/// Resolved interaction state for [HoverCardDropdown].
@immutable
class HoverCardDropdownState {
  /// Creates a [HoverCardDropdownState].
  const HoverCardDropdownState();
}

/// Values passed to [HoverCardDropdownDelegate] slots during build.
@immutable
class HoverCardDropdownContext {
  /// Creates a [HoverCardDropdownContext].
  const HoverCardDropdownContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final HoverCardDropdownStyle style;

  /// Resolved interaction state for this build.
  final HoverCardDropdownState state;

  /// The visual variant selected by the constructor.
  final HoverCardDropdownVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class HoverCardDropdownRoot {
  /// Creates a [HoverCardDropdownRoot] from a builder function.
  const HoverCardDropdownRoot(this._build);

  final Widget Function(HoverCardDropdownContext context) _build;

  /// Invokes this slot with [context].
  Widget call(HoverCardDropdownContext context) => _build(context);
}

/// Theme-owned composition slots for [HoverCardDropdown].
abstract class HoverCardDropdownDelegate extends ComponentDelegate {
  /// Creates a [HoverCardDropdownDelegate].
  const HoverCardDropdownDelegate();

  /// Builds the composition root.
  Widget root(HoverCardDropdownContext context);
}

/// A [HoverCardDropdown] widget resolved through [HoverCardDropdownDelegate].
class HoverCardDropdown extends StatelessWidget {
  /// Creates a [HoverCardDropdown].
  const HoverCardDropdown({super.key, required this.child, this.style})
    : variant = HoverCardDropdownVariant.defaults;

  /// The visual variant selected by the constructor.
  final HoverCardDropdownVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final HoverCardDropdownStyle? style;

  /// Resolves properties and builds via [HoverCardDropdownDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = HoverCardDropdownStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = HoverCardDropdownState();
    final hoverCardDropdownContext = HoverCardDropdownContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<HoverCardDropdownDelegate>();
    return delegate.root(hoverCardDropdownContext);
  }
}
