// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menubar.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MenubarVariant { defaults }

@immutable
class MenubarStyle {
  const MenubarStyle();

  MenubarStyle copyWith() => this;

  MenubarStyle mergeWith(MenubarStyle? other) => this;
}

@immutable
class MenubarState {
  const MenubarState();
}

@immutable
class MenubarContext {
  const MenubarContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.openIndex,
    required this.trigger,
  });

  final BuildContext context;
  final MenubarStyle style;
  final MenubarState state;
  final MenubarVariant variant;
  final List<Widget> children;
  final int? openIndex;
  final MenubarTrigger trigger;
}

class MenubarRoot {
  const MenubarRoot(this._build);

  final Widget Function(MenubarContext context) _build;

  Widget call(MenubarContext context) => _build(context);
}

abstract class MenubarDelegate extends ComponentDelegate {
  const MenubarDelegate();

  Widget root(MenubarContext context);
}

class Menubar extends StatelessWidget {
  const Menubar({
    super.key,
    required this.children,
    this.openIndex,
    this.trigger,
    this.style,
  }) : variant = MenubarVariant.defaults;

  final MenubarVariant variant;
  final List<Widget> children;
  final int? openIndex;
  final MenubarTrigger? trigger;
  final MenubarStyle? style;

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

enum MenubarMenuVariant { defaults }

@immutable
class MenubarMenuStyle {
  const MenubarMenuStyle();

  MenubarMenuStyle copyWith() => this;

  MenubarMenuStyle mergeWith(MenubarMenuStyle? other) => this;
}

@immutable
class MenubarMenuState {
  const MenubarMenuState();
}

@immutable
class MenubarMenuContext {
  const MenubarMenuContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  final BuildContext context;
  final MenubarMenuStyle style;
  final MenubarMenuState state;
  final MenubarMenuVariant variant;
  final List<Widget> children;
}

class MenubarMenuRoot {
  const MenubarMenuRoot(this._build);

  final Widget Function(MenubarMenuContext context) _build;

  Widget call(MenubarMenuContext context) => _build(context);
}

abstract class MenubarMenuDelegate extends ComponentDelegate {
  const MenubarMenuDelegate();

  Widget root(MenubarMenuContext context);
}

class MenubarMenu extends StatelessWidget {
  const MenubarMenu({super.key, required this.children, this.style})
    : variant = MenubarMenuVariant.defaults;

  final MenubarMenuVariant variant;
  final List<Widget> children;
  final MenubarMenuStyle? style;

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

enum MenubarTargetVariant { defaults }

@immutable
class MenubarTargetStyle {
  const MenubarTargetStyle();

  MenubarTargetStyle copyWith() => this;

  MenubarTargetStyle mergeWith(MenubarTargetStyle? other) => this;
}

@immutable
class MenubarTargetState {
  const MenubarTargetState();
}

@immutable
class MenubarTargetContext {
  const MenubarTargetContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final MenubarTargetStyle style;
  final MenubarTargetState state;
  final MenubarTargetVariant variant;
  final Widget child;
}

class MenubarTargetRoot {
  const MenubarTargetRoot(this._build);

  final Widget Function(MenubarTargetContext context) _build;

  Widget call(MenubarTargetContext context) => _build(context);
}

abstract class MenubarTargetDelegate extends ComponentDelegate {
  const MenubarTargetDelegate();

  Widget root(MenubarTargetContext context);
}

class MenubarTarget extends StatelessWidget {
  const MenubarTarget({super.key, required this.child, this.style})
    : variant = MenubarTargetVariant.defaults;

  final MenubarTargetVariant variant;
  final Widget child;
  final MenubarTargetStyle? style;

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

enum MenubarDropdownVariant { defaults }

@immutable
class MenubarDropdownStyle {
  const MenubarDropdownStyle();

  MenubarDropdownStyle copyWith() => this;

  MenubarDropdownStyle mergeWith(MenubarDropdownStyle? other) => this;
}

@immutable
class MenubarDropdownState {
  const MenubarDropdownState();
}

@immutable
class MenubarDropdownContext {
  const MenubarDropdownContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  final BuildContext context;
  final MenubarDropdownStyle style;
  final MenubarDropdownState state;
  final MenubarDropdownVariant variant;
  final List<Widget> children;
}

class MenubarDropdownRoot {
  const MenubarDropdownRoot(this._build);

  final Widget Function(MenubarDropdownContext context) _build;

  Widget call(MenubarDropdownContext context) => _build(context);
}

abstract class MenubarDropdownDelegate extends ComponentDelegate {
  const MenubarDropdownDelegate();

  Widget root(MenubarDropdownContext context);
}

class MenubarDropdown extends StatelessWidget {
  const MenubarDropdown({super.key, required this.children, this.style})
    : variant = MenubarDropdownVariant.defaults;

  final MenubarDropdownVariant variant;
  final List<Widget> children;
  final MenubarDropdownStyle? style;

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
