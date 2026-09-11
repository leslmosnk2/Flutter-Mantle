// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Menu].
enum MenuVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Menu].
@immutable
class MenuStyle {
  /// Creates a [MenuStyle].
  const MenuStyle();

  /// Returns a copy of this [MenuStyle] with selected fields replaced.
  MenuStyle copyWith() => this;

  /// Merges [other] over this [MenuStyle]; null fields keep this value.
  MenuStyle mergeWith(MenuStyle? other) => this;
}

/// Resolved interaction state for [Menu].
@immutable
class MenuState {
  /// Creates a [MenuState].
  const MenuState();
}

/// Values passed to [MenuDelegate] slots during build.
@immutable
class MenuContext {
  /// Creates a [MenuContext].
  const MenuContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.opened,
    this.onClose,
    this.onOpen,
    required this.closeOnItemClick,
    required this.trigger,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MenuStyle style;

  /// Resolved interaction state for this build.
  final MenuState state;

  /// The visual variant selected by the constructor.
  final MenuVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Whether the content is expanded.
  final bool opened;

  /// Called when the overlay closes.
  final VoidCallback? onClose;

  /// Called when open.
  final VoidCallback? onOpen;

  /// Whether close on item click.
  final bool closeOnItemClick;

  /// The trigger.
  final MenuTrigger trigger;
}

/// Builder for the root slot.
class MenuRoot {
  /// Creates a [MenuRoot] from a builder function.
  const MenuRoot(this._build);

  final Widget Function(MenuContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MenuContext context) => _build(context);
}

/// Theme-owned composition slots for [Menu].
abstract class MenuDelegate extends ComponentDelegate {
  /// Creates a [MenuDelegate].
  const MenuDelegate();

  /// Builds the composition root.
  Widget root(MenuContext context);
}

/// A [Menu] widget resolved through [MenuDelegate].
class Menu extends StatelessWidget {
  /// Creates a [Menu].
  const Menu({
    super.key,
    required this.children,
    this.opened,
    this.onClose,
    this.onOpen,
    this.closeOnItemClick,
    this.trigger,
    this.style,
  }) : variant = MenuVariant.defaults;

  /// The visual variant selected by the constructor.
  final MenuVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Whether the content is expanded.
  final bool? opened;

  /// Called when the overlay closes.
  final VoidCallback? onClose;

  /// Called when open.
  final VoidCallback? onOpen;

  /// Whether close on item click.
  final bool? closeOnItemClick;

  /// The trigger.
  final MenuTrigger? trigger;

  /// Style overrides merged over theme defaults.
  final MenuStyle? style;

  /// Resolves properties and builds via [MenuDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedOpened = opened ?? false;
    final resolvedOnClose = onClose;
    final resolvedOnOpen = onOpen;
    final resolvedCloseOnItemClick = closeOnItemClick ?? true;
    final resolvedTrigger = trigger ?? MenuTrigger.click;

    const fromProps = MenuStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MenuState();
    final menuContext = MenuContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      opened: resolvedOpened,
      onClose: resolvedOnClose,
      onOpen: resolvedOnOpen,
      closeOnItemClick: resolvedCloseOnItemClick,
      trigger: resolvedTrigger,
    );
    final delegate = MantleTheme.of(context).delegate<MenuDelegate>();
    return delegate.root(menuContext);
  }
}

/// Visual variants of [MenuTarget].
enum MenuTargetVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MenuTarget].
@immutable
class MenuTargetStyle {
  /// Creates a [MenuTargetStyle].
  const MenuTargetStyle();

  /// Returns a copy of this [MenuTargetStyle] with selected fields replaced.
  MenuTargetStyle copyWith() => this;

  /// Merges [other] over this [MenuTargetStyle]; null fields keep this value.
  MenuTargetStyle mergeWith(MenuTargetStyle? other) => this;
}

/// Resolved interaction state for [MenuTarget].
@immutable
class MenuTargetState {
  /// Creates a [MenuTargetState].
  const MenuTargetState();
}

/// Values passed to [MenuTargetDelegate] slots during build.
@immutable
class MenuTargetContext {
  /// Creates a [MenuTargetContext].
  const MenuTargetContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MenuTargetStyle style;

  /// Resolved interaction state for this build.
  final MenuTargetState state;

  /// The visual variant selected by the constructor.
  final MenuTargetVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class MenuTargetRoot {
  /// Creates a [MenuTargetRoot] from a builder function.
  const MenuTargetRoot(this._build);

  final Widget Function(MenuTargetContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MenuTargetContext context) => _build(context);
}

/// Theme-owned composition slots for [MenuTarget].
abstract class MenuTargetDelegate extends ComponentDelegate {
  /// Creates a [MenuTargetDelegate].
  const MenuTargetDelegate();

  /// Builds the composition root.
  Widget root(MenuTargetContext context);
}

/// A [MenuTarget] widget resolved through [MenuTargetDelegate].
class MenuTarget extends StatelessWidget {
  /// Creates a [MenuTarget].
  const MenuTarget({super.key, required this.child, this.style})
    : variant = MenuTargetVariant.defaults;

  /// The visual variant selected by the constructor.
  final MenuTargetVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final MenuTargetStyle? style;

  /// Resolves properties and builds via [MenuTargetDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = MenuTargetStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MenuTargetState();
    final menuTargetContext = MenuTargetContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<MenuTargetDelegate>();
    return delegate.root(menuTargetContext);
  }
}

/// Visual variants of [MenuDropdown].
enum MenuDropdownVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MenuDropdown].
@immutable
class MenuDropdownStyle {
  /// Creates a [MenuDropdownStyle].
  const MenuDropdownStyle();

  /// Returns a copy of this [MenuDropdownStyle] with selected fields replaced.
  MenuDropdownStyle copyWith() => this;

  /// Merges [other] over this [MenuDropdownStyle]; null fields keep this value.
  MenuDropdownStyle mergeWith(MenuDropdownStyle? other) => this;
}

/// Resolved interaction state for [MenuDropdown].
@immutable
class MenuDropdownState {
  /// Creates a [MenuDropdownState].
  const MenuDropdownState();
}

/// Values passed to [MenuDropdownDelegate] slots during build.
@immutable
class MenuDropdownContext {
  /// Creates a [MenuDropdownContext].
  const MenuDropdownContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MenuDropdownStyle style;

  /// Resolved interaction state for this build.
  final MenuDropdownState state;

  /// The visual variant selected by the constructor.
  final MenuDropdownVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;
}

/// Builder for the root slot.
class MenuDropdownRoot {
  /// Creates a [MenuDropdownRoot] from a builder function.
  const MenuDropdownRoot(this._build);

  final Widget Function(MenuDropdownContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MenuDropdownContext context) => _build(context);
}

/// Theme-owned composition slots for [MenuDropdown].
abstract class MenuDropdownDelegate extends ComponentDelegate {
  /// Creates a [MenuDropdownDelegate].
  const MenuDropdownDelegate();

  /// Builds the composition root.
  Widget root(MenuDropdownContext context);
}

/// A [MenuDropdown] widget resolved through [MenuDropdownDelegate].
class MenuDropdown extends StatelessWidget {
  /// Creates a [MenuDropdown].
  const MenuDropdown({super.key, required this.children, this.style})
    : variant = MenuDropdownVariant.defaults;

  /// The visual variant selected by the constructor.
  final MenuDropdownVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Style overrides merged over theme defaults.
  final MenuDropdownStyle? style;

  /// Resolves properties and builds via [MenuDropdownDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;

    const fromProps = MenuDropdownStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MenuDropdownState();
    final menuDropdownContext = MenuDropdownContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
    );
    final delegate = MantleTheme.of(context).delegate<MenuDropdownDelegate>();
    return delegate.root(menuDropdownContext);
  }
}

/// Visual variants of [MenuItem].
enum MenuItemVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MenuItem].
@immutable
class MenuItemStyle {
  /// Creates a [MenuItemStyle].
  const MenuItemStyle();

  /// Returns a copy of this [MenuItemStyle] with selected fields replaced.
  MenuItemStyle copyWith() => this;

  /// Merges [other] over this [MenuItemStyle]; null fields keep this value.
  MenuItemStyle mergeWith(MenuItemStyle? other) => this;
}

/// Resolved interaction state for [MenuItem].
@immutable
class MenuItemState {
  /// Creates a [MenuItemState].
  const MenuItemState();
}

/// Values passed to [MenuItemDelegate] slots during build.
@immutable
class MenuItemContext {
  /// Creates a [MenuItemContext].
  const MenuItemContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.onPressed,
    required this.disabled,
    this.leftSection,
    this.rightSection,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MenuItemStyle style;

  /// Resolved interaction state for this build.
  final MenuItemState state;

  /// The visual variant selected by the constructor.
  final MenuItemVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Called when the control is pressed.
  final VoidCallback? onPressed;

  /// Whether interaction is disabled.
  final bool disabled;

  /// The left section.
  final Widget? leftSection;

  /// The right section.
  final Widget? rightSection;
}

/// Builder for the root slot.
class MenuItemRoot {
  /// Creates a [MenuItemRoot] from a builder function.
  const MenuItemRoot(this._build);

  final Widget Function(MenuItemContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MenuItemContext context) => _build(context);
}

/// Theme-owned composition slots for [MenuItem].
abstract class MenuItemDelegate extends ComponentDelegate {
  /// Creates a [MenuItemDelegate].
  const MenuItemDelegate();

  /// Builds the composition root.
  Widget root(MenuItemContext context);
}

/// A [MenuItem] widget resolved through [MenuItemDelegate].
class MenuItem extends StatelessWidget {
  /// Creates a [MenuItem].
  const MenuItem({
    super.key,
    required this.child,
    this.onPressed,
    this.disabled,
    this.leftSection,
    this.rightSection,
    this.style,
  }) : variant = MenuItemVariant.defaults;

  /// The visual variant selected by the constructor.
  final MenuItemVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Called when the control is pressed.
  final VoidCallback? onPressed;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// The left section.
  final Widget? leftSection;

  /// The right section.
  final Widget? rightSection;

  /// Style overrides merged over theme defaults.
  final MenuItemStyle? style;

  /// Resolves properties and builds via [MenuItemDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedOnPressed = onPressed;
    final resolvedDisabled = disabled ?? false;
    final resolvedLeftSection = leftSection;
    final resolvedRightSection = rightSection;

    const fromProps = MenuItemStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MenuItemState();
    final menuItemContext = MenuItemContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      onPressed: resolvedOnPressed,
      disabled: resolvedDisabled,
      leftSection: resolvedLeftSection,
      rightSection: resolvedRightSection,
    );
    final delegate = MantleTheme.of(context).delegate<MenuItemDelegate>();
    return delegate.root(menuItemContext);
  }
}

/// Visual variants of [MenuLabel].
enum MenuLabelVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MenuLabel].
@immutable
class MenuLabelStyle {
  /// Creates a [MenuLabelStyle].
  const MenuLabelStyle();

  /// Returns a copy of this [MenuLabelStyle] with selected fields replaced.
  MenuLabelStyle copyWith() => this;

  /// Merges [other] over this [MenuLabelStyle]; null fields keep this value.
  MenuLabelStyle mergeWith(MenuLabelStyle? other) => this;
}

/// Resolved interaction state for [MenuLabel].
@immutable
class MenuLabelState {
  /// Creates a [MenuLabelState].
  const MenuLabelState();
}

/// Values passed to [MenuLabelDelegate] slots during build.
@immutable
class MenuLabelContext {
  /// Creates a [MenuLabelContext].
  const MenuLabelContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MenuLabelStyle style;

  /// Resolved interaction state for this build.
  final MenuLabelState state;

  /// The visual variant selected by the constructor.
  final MenuLabelVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class MenuLabelRoot {
  /// Creates a [MenuLabelRoot] from a builder function.
  const MenuLabelRoot(this._build);

  final Widget Function(MenuLabelContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MenuLabelContext context) => _build(context);
}

/// Theme-owned composition slots for [MenuLabel].
abstract class MenuLabelDelegate extends ComponentDelegate {
  /// Creates a [MenuLabelDelegate].
  const MenuLabelDelegate();

  /// Builds the composition root.
  Widget root(MenuLabelContext context);
}

/// A [MenuLabel] widget resolved through [MenuLabelDelegate].
class MenuLabel extends StatelessWidget {
  /// Creates a [MenuLabel].
  const MenuLabel({super.key, required this.child, this.style})
    : variant = MenuLabelVariant.defaults;

  /// The visual variant selected by the constructor.
  final MenuLabelVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final MenuLabelStyle? style;

  /// Resolves properties and builds via [MenuLabelDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = MenuLabelStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MenuLabelState();
    final menuLabelContext = MenuLabelContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<MenuLabelDelegate>();
    return delegate.root(menuLabelContext);
  }
}

/// Visual variants of [MenuDivider].
enum MenuDividerVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MenuDivider].
@immutable
class MenuDividerStyle {
  /// Creates a [MenuDividerStyle].
  const MenuDividerStyle();

  /// Returns a copy of this [MenuDividerStyle] with selected fields replaced.
  MenuDividerStyle copyWith() => this;

  /// Merges [other] over this [MenuDividerStyle]; null fields keep this value.
  MenuDividerStyle mergeWith(MenuDividerStyle? other) => this;
}

/// Resolved interaction state for [MenuDivider].
@immutable
class MenuDividerState {
  /// Creates a [MenuDividerState].
  const MenuDividerState();
}

/// Values passed to [MenuDividerDelegate] slots during build.
@immutable
class MenuDividerContext {
  /// Creates a [MenuDividerContext].
  const MenuDividerContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MenuDividerStyle style;

  /// Resolved interaction state for this build.
  final MenuDividerState state;

  /// The visual variant selected by the constructor.
  final MenuDividerVariant variant;
}

/// Builder for the root slot.
class MenuDividerRoot {
  /// Creates a [MenuDividerRoot] from a builder function.
  const MenuDividerRoot(this._build);

  final Widget Function(MenuDividerContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MenuDividerContext context) => _build(context);
}

/// Theme-owned composition slots for [MenuDivider].
abstract class MenuDividerDelegate extends ComponentDelegate {
  /// Creates a [MenuDividerDelegate].
  const MenuDividerDelegate();

  /// Builds the composition root.
  Widget root(MenuDividerContext context);
}

/// A [MenuDivider] widget resolved through [MenuDividerDelegate].
class MenuDivider extends StatelessWidget {
  /// Creates a [MenuDivider].
  const MenuDivider({super.key, this.style})
    : variant = MenuDividerVariant.defaults;

  /// The visual variant selected by the constructor.
  final MenuDividerVariant variant;

  /// Style overrides merged over theme defaults.
  final MenuDividerStyle? style;

  /// Resolves properties and builds via [MenuDividerDelegate].
  @override
  Widget build(BuildContext context) {
    const fromProps = MenuDividerStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MenuDividerState();
    final menuDividerContext = MenuDividerContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
    );
    final delegate = MantleTheme.of(context).delegate<MenuDividerDelegate>();
    return delegate.root(menuDividerContext);
  }
}
