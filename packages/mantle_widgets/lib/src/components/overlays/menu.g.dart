// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MenuVariant { defaults }

@immutable
class MenuStyle {
  const MenuStyle();

  MenuStyle copyWith() => this;

  MenuStyle mergeWith(MenuStyle? other) => this;
}

@immutable
class MenuState {
  const MenuState();
}

@immutable
class MenuContext {
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

  final BuildContext context;
  final MenuStyle style;
  final MenuState state;
  final MenuVariant variant;
  final List<Widget> children;
  final bool opened;
  final VoidCallback? onClose;
  final VoidCallback? onOpen;
  final bool closeOnItemClick;
  final MenuTrigger trigger;
}

class MenuRoot {
  const MenuRoot(this._build);

  final Widget Function(MenuContext context) _build;

  Widget call(MenuContext context) => _build(context);
}

abstract class MenuDelegate extends ComponentDelegate {
  const MenuDelegate();

  Widget root(MenuContext context);
}

class Menu extends StatelessWidget {
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

  final MenuVariant variant;
  final List<Widget> children;
  final bool? opened;
  final VoidCallback? onClose;
  final VoidCallback? onOpen;
  final bool? closeOnItemClick;
  final MenuTrigger? trigger;
  final MenuStyle? style;

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

enum MenuTargetVariant { defaults }

@immutable
class MenuTargetStyle {
  const MenuTargetStyle();

  MenuTargetStyle copyWith() => this;

  MenuTargetStyle mergeWith(MenuTargetStyle? other) => this;
}

@immutable
class MenuTargetState {
  const MenuTargetState();
}

@immutable
class MenuTargetContext {
  const MenuTargetContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final MenuTargetStyle style;
  final MenuTargetState state;
  final MenuTargetVariant variant;
  final Widget child;
}

class MenuTargetRoot {
  const MenuTargetRoot(this._build);

  final Widget Function(MenuTargetContext context) _build;

  Widget call(MenuTargetContext context) => _build(context);
}

abstract class MenuTargetDelegate extends ComponentDelegate {
  const MenuTargetDelegate();

  Widget root(MenuTargetContext context);
}

class MenuTarget extends StatelessWidget {
  const MenuTarget({super.key, required this.child, this.style})
    : variant = MenuTargetVariant.defaults;

  final MenuTargetVariant variant;
  final Widget child;
  final MenuTargetStyle? style;

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

enum MenuDropdownVariant { defaults }

@immutable
class MenuDropdownStyle {
  const MenuDropdownStyle();

  MenuDropdownStyle copyWith() => this;

  MenuDropdownStyle mergeWith(MenuDropdownStyle? other) => this;
}

@immutable
class MenuDropdownState {
  const MenuDropdownState();
}

@immutable
class MenuDropdownContext {
  const MenuDropdownContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  final BuildContext context;
  final MenuDropdownStyle style;
  final MenuDropdownState state;
  final MenuDropdownVariant variant;
  final List<Widget> children;
}

class MenuDropdownRoot {
  const MenuDropdownRoot(this._build);

  final Widget Function(MenuDropdownContext context) _build;

  Widget call(MenuDropdownContext context) => _build(context);
}

abstract class MenuDropdownDelegate extends ComponentDelegate {
  const MenuDropdownDelegate();

  Widget root(MenuDropdownContext context);
}

class MenuDropdown extends StatelessWidget {
  const MenuDropdown({super.key, required this.children, this.style})
    : variant = MenuDropdownVariant.defaults;

  final MenuDropdownVariant variant;
  final List<Widget> children;
  final MenuDropdownStyle? style;

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

enum MenuItemVariant { defaults }

@immutable
class MenuItemStyle {
  const MenuItemStyle();

  MenuItemStyle copyWith() => this;

  MenuItemStyle mergeWith(MenuItemStyle? other) => this;
}

@immutable
class MenuItemState {
  const MenuItemState();
}

@immutable
class MenuItemContext {
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

  final BuildContext context;
  final MenuItemStyle style;
  final MenuItemState state;
  final MenuItemVariant variant;
  final Widget child;
  final VoidCallback? onPressed;
  final bool disabled;
  final Widget? leftSection;
  final Widget? rightSection;
}

class MenuItemRoot {
  const MenuItemRoot(this._build);

  final Widget Function(MenuItemContext context) _build;

  Widget call(MenuItemContext context) => _build(context);
}

abstract class MenuItemDelegate extends ComponentDelegate {
  const MenuItemDelegate();

  Widget root(MenuItemContext context);
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.child,
    this.onPressed,
    this.disabled,
    this.leftSection,
    this.rightSection,
    this.style,
  }) : variant = MenuItemVariant.defaults;

  final MenuItemVariant variant;
  final Widget child;
  final VoidCallback? onPressed;
  final bool? disabled;
  final Widget? leftSection;
  final Widget? rightSection;
  final MenuItemStyle? style;

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

enum MenuLabelVariant { defaults }

@immutable
class MenuLabelStyle {
  const MenuLabelStyle();

  MenuLabelStyle copyWith() => this;

  MenuLabelStyle mergeWith(MenuLabelStyle? other) => this;
}

@immutable
class MenuLabelState {
  const MenuLabelState();
}

@immutable
class MenuLabelContext {
  const MenuLabelContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final MenuLabelStyle style;
  final MenuLabelState state;
  final MenuLabelVariant variant;
  final Widget child;
}

class MenuLabelRoot {
  const MenuLabelRoot(this._build);

  final Widget Function(MenuLabelContext context) _build;

  Widget call(MenuLabelContext context) => _build(context);
}

abstract class MenuLabelDelegate extends ComponentDelegate {
  const MenuLabelDelegate();

  Widget root(MenuLabelContext context);
}

class MenuLabel extends StatelessWidget {
  const MenuLabel({super.key, required this.child, this.style})
    : variant = MenuLabelVariant.defaults;

  final MenuLabelVariant variant;
  final Widget child;
  final MenuLabelStyle? style;

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

enum MenuDividerVariant { defaults }

@immutable
class MenuDividerStyle {
  const MenuDividerStyle();

  MenuDividerStyle copyWith() => this;

  MenuDividerStyle mergeWith(MenuDividerStyle? other) => this;
}

@immutable
class MenuDividerState {
  const MenuDividerState();
}

@immutable
class MenuDividerContext {
  const MenuDividerContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
  });

  final BuildContext context;
  final MenuDividerStyle style;
  final MenuDividerState state;
  final MenuDividerVariant variant;
}

class MenuDividerRoot {
  const MenuDividerRoot(this._build);

  final Widget Function(MenuDividerContext context) _build;

  Widget call(MenuDividerContext context) => _build(context);
}

abstract class MenuDividerDelegate extends ComponentDelegate {
  const MenuDividerDelegate();

  Widget root(MenuDividerContext context);
}

class MenuDivider extends StatelessWidget {
  const MenuDivider({super.key, this.style})
    : variant = MenuDividerVariant.defaults;

  final MenuDividerVariant variant;
  final MenuDividerStyle? style;

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
