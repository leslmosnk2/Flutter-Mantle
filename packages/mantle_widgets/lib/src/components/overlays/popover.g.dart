// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popover.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Popover].
enum PopoverVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Popover].
@immutable
class PopoverStyle {
  /// Creates a [PopoverStyle].
  const PopoverStyle();

  /// Returns a copy of this [PopoverStyle] with selected fields replaced.
  PopoverStyle copyWith() => this;

  /// Merges [other] over this [PopoverStyle]; null fields keep this value.
  PopoverStyle mergeWith(PopoverStyle? other) => this;
}

/// Resolved interaction state for [Popover].
@immutable
class PopoverState {
  /// Creates a [PopoverState].
  const PopoverState();
}

/// Values passed to [PopoverDelegate] slots during build.
@immutable
class PopoverContext {
  /// Creates a [PopoverContext].
  const PopoverContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.opened,
    required this.position,
    this.onClose,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final PopoverStyle style;

  /// Resolved interaction state for this build.
  final PopoverState state;

  /// The visual variant selected by the constructor.
  final PopoverVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Whether the content is expanded.
  final bool opened;

  /// The position.
  final OverlayPlacement position;

  /// Called when the overlay closes.
  final VoidCallback? onClose;
}

/// Builder for the root slot.
class PopoverRoot {
  /// Creates a [PopoverRoot] from a builder function.
  const PopoverRoot(this._build);

  final Widget Function(PopoverContext context) _build;

  /// Invokes this slot with [context].
  Widget call(PopoverContext context) => _build(context);
}

/// Theme-owned composition slots for [Popover].
abstract class PopoverDelegate extends ComponentDelegate {
  /// Creates a [PopoverDelegate].
  const PopoverDelegate();

  /// Builds the composition root.
  Widget root(PopoverContext context);
}

/// A [Popover] widget resolved through [PopoverDelegate].
class Popover extends StatelessWidget {
  /// Creates a [Popover].
  const Popover({
    super.key,
    required this.children,
    this.opened,
    this.position,
    this.onClose,
    this.style,
  }) : variant = PopoverVariant.defaults;

  /// The visual variant selected by the constructor.
  final PopoverVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Whether the content is expanded.
  final bool? opened;

  /// The position.
  final OverlayPlacement? position;

  /// Called when the overlay closes.
  final VoidCallback? onClose;

  /// Style overrides merged over theme defaults.
  final PopoverStyle? style;

  /// Resolves properties and builds via [PopoverDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedOpened = opened ?? false;
    final resolvedPosition = position ?? OverlayPlacement.bottom;
    final resolvedOnClose = onClose;

    const fromProps = PopoverStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PopoverState();
    final popoverContext = PopoverContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      opened: resolvedOpened,
      position: resolvedPosition,
      onClose: resolvedOnClose,
    );
    final delegate = MantleTheme.of(context).delegate<PopoverDelegate>();
    return delegate.root(popoverContext);
  }
}

/// Visual variants of [PopoverTarget].
enum PopoverTargetVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [PopoverTarget].
@immutable
class PopoverTargetStyle {
  /// Creates a [PopoverTargetStyle].
  const PopoverTargetStyle();

  /// Returns a copy of this [PopoverTargetStyle] with selected fields replaced.
  PopoverTargetStyle copyWith() => this;

  /// Merges [other] over this [PopoverTargetStyle]; null fields keep this value.
  PopoverTargetStyle mergeWith(PopoverTargetStyle? other) => this;
}

/// Resolved interaction state for [PopoverTarget].
@immutable
class PopoverTargetState {
  /// Creates a [PopoverTargetState].
  const PopoverTargetState();
}

/// Values passed to [PopoverTargetDelegate] slots during build.
@immutable
class PopoverTargetContext {
  /// Creates a [PopoverTargetContext].
  const PopoverTargetContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final PopoverTargetStyle style;

  /// Resolved interaction state for this build.
  final PopoverTargetState state;

  /// The visual variant selected by the constructor.
  final PopoverTargetVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class PopoverTargetRoot {
  /// Creates a [PopoverTargetRoot] from a builder function.
  const PopoverTargetRoot(this._build);

  final Widget Function(PopoverTargetContext context) _build;

  /// Invokes this slot with [context].
  Widget call(PopoverTargetContext context) => _build(context);
}

/// Theme-owned composition slots for [PopoverTarget].
abstract class PopoverTargetDelegate extends ComponentDelegate {
  /// Creates a [PopoverTargetDelegate].
  const PopoverTargetDelegate();

  /// Builds the composition root.
  Widget root(PopoverTargetContext context);
}

/// A [PopoverTarget] widget resolved through [PopoverTargetDelegate].
class PopoverTarget extends StatelessWidget {
  /// Creates a [PopoverTarget].
  const PopoverTarget({super.key, required this.child, this.style})
    : variant = PopoverTargetVariant.defaults;

  /// The visual variant selected by the constructor.
  final PopoverTargetVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final PopoverTargetStyle? style;

  /// Resolves properties and builds via [PopoverTargetDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = PopoverTargetStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PopoverTargetState();
    final popoverTargetContext = PopoverTargetContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<PopoverTargetDelegate>();
    return delegate.root(popoverTargetContext);
  }
}

/// Visual variants of [PopoverDropdown].
enum PopoverDropdownVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [PopoverDropdown].
@immutable
class PopoverDropdownStyle {
  /// Creates a [PopoverDropdownStyle].
  const PopoverDropdownStyle();

  /// Returns a copy of this [PopoverDropdownStyle] with selected fields replaced.
  PopoverDropdownStyle copyWith() => this;

  /// Merges [other] over this [PopoverDropdownStyle]; null fields keep this value.
  PopoverDropdownStyle mergeWith(PopoverDropdownStyle? other) => this;
}

/// Resolved interaction state for [PopoverDropdown].
@immutable
class PopoverDropdownState {
  /// Creates a [PopoverDropdownState].
  const PopoverDropdownState();
}

/// Values passed to [PopoverDropdownDelegate] slots during build.
@immutable
class PopoverDropdownContext {
  /// Creates a [PopoverDropdownContext].
  const PopoverDropdownContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final PopoverDropdownStyle style;

  /// Resolved interaction state for this build.
  final PopoverDropdownState state;

  /// The visual variant selected by the constructor.
  final PopoverDropdownVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class PopoverDropdownRoot {
  /// Creates a [PopoverDropdownRoot] from a builder function.
  const PopoverDropdownRoot(this._build);

  final Widget Function(PopoverDropdownContext context) _build;

  /// Invokes this slot with [context].
  Widget call(PopoverDropdownContext context) => _build(context);
}

/// Theme-owned composition slots for [PopoverDropdown].
abstract class PopoverDropdownDelegate extends ComponentDelegate {
  /// Creates a [PopoverDropdownDelegate].
  const PopoverDropdownDelegate();

  /// Builds the composition root.
  Widget root(PopoverDropdownContext context);
}

/// A [PopoverDropdown] widget resolved through [PopoverDropdownDelegate].
class PopoverDropdown extends StatelessWidget {
  /// Creates a [PopoverDropdown].
  const PopoverDropdown({super.key, required this.child, this.style})
    : variant = PopoverDropdownVariant.defaults;

  /// The visual variant selected by the constructor.
  final PopoverDropdownVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final PopoverDropdownStyle? style;

  /// Resolves properties and builds via [PopoverDropdownDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = PopoverDropdownStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PopoverDropdownState();
    final popoverDropdownContext = PopoverDropdownContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<PopoverDropdownDelegate>();
    return delegate.root(popoverDropdownContext);
  }
}
