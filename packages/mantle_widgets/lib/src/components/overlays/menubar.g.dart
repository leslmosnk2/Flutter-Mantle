// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menubar.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Menubar].
enum MenubarVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Menubar].
@immutable
class MenubarStyle {
  /// Creates a [MenubarStyle].
  const MenubarStyle();

  /// Returns a copy of this [MenubarStyle] with selected fields replaced.
  MenubarStyle copyWith() => this;

  /// Merges [other] over this [MenubarStyle]; null fields keep this value.
  MenubarStyle mergeWith(MenubarStyle? other) => this;
}

/// Resolved interaction state for [Menubar].
@immutable
class MenubarState {
  /// Creates a [MenubarState].
  const MenubarState();
}

/// Values passed to [MenubarDelegate] slots during build.
@immutable
class MenubarContext {
  /// Creates a [MenubarContext].
  const MenubarContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.openIndex,
    required this.trigger,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MenubarStyle style;

  /// Resolved interaction state for this build.
  final MenubarState state;

  /// The visual variant selected by the constructor.
  final MenubarVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The open index.
  final int? openIndex;

  /// The trigger.
  final MenubarTrigger trigger;
}

/// Builder for the root slot.
class MenubarRoot {
  /// Creates a [MenubarRoot] from a builder function.
  const MenubarRoot(this._build);

  final Widget Function(MenubarContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MenubarContext context) => _build(context);
}

/// Theme-owned composition slots for [Menubar].
abstract class MenubarDelegate extends ComponentDelegate {
  /// Creates a [MenubarDelegate].
  const MenubarDelegate();

  /// Builds the composition root.
  Widget root(MenubarContext context);
}

/// A [Menubar] widget resolved through [MenubarDelegate].
class Menubar extends StatelessWidget {
  /// Creates a [Menubar].
  const Menubar({
    super.key,
    required this.children,
    this.openIndex,
    this.trigger,
    this.style,
  }) : variant = MenubarVariant.defaults;

  /// The visual variant selected by the constructor.
  final MenubarVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The open index.
  final int? openIndex;

  /// The trigger.
  final MenubarTrigger? trigger;

  /// Style overrides merged over theme defaults.
  final MenubarStyle? style;

  /// Resolves properties and builds via [MenubarDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedOpenIndex = openIndex;
    final resolvedTrigger = trigger ?? MenubarTrigger.click;

    const fromProps = MenubarStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MenubarState();
    final menubarContext = MenubarContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      openIndex: resolvedOpenIndex,
      trigger: resolvedTrigger,
    );
    final delegate = MantleTheme.of(context).delegate<MenubarDelegate>();
    return delegate.root(menubarContext);
  }
}

/// Visual variants of [MenubarMenu].
enum MenubarMenuVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MenubarMenu].
@immutable
class MenubarMenuStyle {
  /// Creates a [MenubarMenuStyle].
  const MenubarMenuStyle();

  /// Returns a copy of this [MenubarMenuStyle] with selected fields replaced.
  MenubarMenuStyle copyWith() => this;

  /// Merges [other] over this [MenubarMenuStyle]; null fields keep this value.
  MenubarMenuStyle mergeWith(MenubarMenuStyle? other) => this;
}

/// Resolved interaction state for [MenubarMenu].
@immutable
class MenubarMenuState {
  /// Creates a [MenubarMenuState].
  const MenubarMenuState();
}

/// Values passed to [MenubarMenuDelegate] slots during build.
@immutable
class MenubarMenuContext {
  /// Creates a [MenubarMenuContext].
  const MenubarMenuContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MenubarMenuStyle style;

  /// Resolved interaction state for this build.
  final MenubarMenuState state;

  /// The visual variant selected by the constructor.
  final MenubarMenuVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;
}

/// Builder for the root slot.
class MenubarMenuRoot {
  /// Creates a [MenubarMenuRoot] from a builder function.
  const MenubarMenuRoot(this._build);

  final Widget Function(MenubarMenuContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MenubarMenuContext context) => _build(context);
}

/// Theme-owned composition slots for [MenubarMenu].
abstract class MenubarMenuDelegate extends ComponentDelegate {
  /// Creates a [MenubarMenuDelegate].
  const MenubarMenuDelegate();

  /// Builds the composition root.
  Widget root(MenubarMenuContext context);
}

/// A [MenubarMenu] widget resolved through [MenubarMenuDelegate].
class MenubarMenu extends StatelessWidget {
  /// Creates a [MenubarMenu].
  const MenubarMenu({super.key, required this.children, this.style})
    : variant = MenubarMenuVariant.defaults;

  /// The visual variant selected by the constructor.
  final MenubarMenuVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Style overrides merged over theme defaults.
  final MenubarMenuStyle? style;

  /// Resolves properties and builds via [MenubarMenuDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;

    const fromProps = MenubarMenuStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MenubarMenuState();
    final menubarMenuContext = MenubarMenuContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
    );
    final delegate = MantleTheme.of(context).delegate<MenubarMenuDelegate>();
    return delegate.root(menubarMenuContext);
  }
}

/// Visual variants of [MenubarTarget].
enum MenubarTargetVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MenubarTarget].
@immutable
class MenubarTargetStyle {
  /// Creates a [MenubarTargetStyle].
  const MenubarTargetStyle();

  /// Returns a copy of this [MenubarTargetStyle] with selected fields replaced.
  MenubarTargetStyle copyWith() => this;

  /// Merges [other] over this [MenubarTargetStyle]; null fields keep this value.
  MenubarTargetStyle mergeWith(MenubarTargetStyle? other) => this;
}

/// Resolved interaction state for [MenubarTarget].
@immutable
class MenubarTargetState {
  /// Creates a [MenubarTargetState].
  const MenubarTargetState();
}

/// Values passed to [MenubarTargetDelegate] slots during build.
@immutable
class MenubarTargetContext {
  /// Creates a [MenubarTargetContext].
  const MenubarTargetContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MenubarTargetStyle style;

  /// Resolved interaction state for this build.
  final MenubarTargetState state;

  /// The visual variant selected by the constructor.
  final MenubarTargetVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class MenubarTargetRoot {
  /// Creates a [MenubarTargetRoot] from a builder function.
  const MenubarTargetRoot(this._build);

  final Widget Function(MenubarTargetContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MenubarTargetContext context) => _build(context);
}

/// Theme-owned composition slots for [MenubarTarget].
abstract class MenubarTargetDelegate extends ComponentDelegate {
  /// Creates a [MenubarTargetDelegate].
  const MenubarTargetDelegate();

  /// Builds the composition root.
  Widget root(MenubarTargetContext context);
}

/// A [MenubarTarget] widget resolved through [MenubarTargetDelegate].
class MenubarTarget extends StatelessWidget {
  /// Creates a [MenubarTarget].
  const MenubarTarget({super.key, required this.child, this.style})
    : variant = MenubarTargetVariant.defaults;

  /// The visual variant selected by the constructor.
  final MenubarTargetVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final MenubarTargetStyle? style;

  /// Resolves properties and builds via [MenubarTargetDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = MenubarTargetStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MenubarTargetState();
    final menubarTargetContext = MenubarTargetContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<MenubarTargetDelegate>();
    return delegate.root(menubarTargetContext);
  }
}

/// Visual variants of [MenubarDropdown].
enum MenubarDropdownVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MenubarDropdown].
@immutable
class MenubarDropdownStyle {
  /// Creates a [MenubarDropdownStyle].
  const MenubarDropdownStyle();

  /// Returns a copy of this [MenubarDropdownStyle] with selected fields replaced.
  MenubarDropdownStyle copyWith() => this;

  /// Merges [other] over this [MenubarDropdownStyle]; null fields keep this value.
  MenubarDropdownStyle mergeWith(MenubarDropdownStyle? other) => this;
}

/// Resolved interaction state for [MenubarDropdown].
@immutable
class MenubarDropdownState {
  /// Creates a [MenubarDropdownState].
  const MenubarDropdownState();
}

/// Values passed to [MenubarDropdownDelegate] slots during build.
@immutable
class MenubarDropdownContext {
  /// Creates a [MenubarDropdownContext].
  const MenubarDropdownContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MenubarDropdownStyle style;

  /// Resolved interaction state for this build.
  final MenubarDropdownState state;

  /// The visual variant selected by the constructor.
  final MenubarDropdownVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;
}

/// Builder for the root slot.
class MenubarDropdownRoot {
  /// Creates a [MenubarDropdownRoot] from a builder function.
  const MenubarDropdownRoot(this._build);

  final Widget Function(MenubarDropdownContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MenubarDropdownContext context) => _build(context);
}

/// Theme-owned composition slots for [MenubarDropdown].
abstract class MenubarDropdownDelegate extends ComponentDelegate {
  /// Creates a [MenubarDropdownDelegate].
  const MenubarDropdownDelegate();

  /// Builds the composition root.
  Widget root(MenubarDropdownContext context);
}

/// A [MenubarDropdown] widget resolved through [MenubarDropdownDelegate].
class MenubarDropdown extends StatelessWidget {
  /// Creates a [MenubarDropdown].
  const MenubarDropdown({super.key, required this.children, this.style})
    : variant = MenubarDropdownVariant.defaults;

  /// The visual variant selected by the constructor.
  final MenubarDropdownVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Style overrides merged over theme defaults.
  final MenubarDropdownStyle? style;

  /// Resolves properties and builds via [MenubarDropdownDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;

    const fromProps = MenubarDropdownStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MenubarDropdownState();
    final menubarDropdownContext = MenubarDropdownContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<MenubarDropdownDelegate>();
    return delegate.root(menubarDropdownContext);
  }
}
