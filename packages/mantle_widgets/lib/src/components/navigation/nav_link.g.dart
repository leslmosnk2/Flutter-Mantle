// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nav_link.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum NavLinkVariant { defaults }

@immutable
class NavLinkStyle {
  const NavLinkStyle();

  NavLinkStyle copyWith() => this;

  NavLinkStyle mergeWith(NavLinkStyle? other) => this;
}

@immutable
class NavLinkState {
  const NavLinkState();
}

@immutable
class NavLinkContext {
  const NavLinkContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.label,
    this.description,
    this.leftSection,
    this.rightSection,
    this.children,
    required this.active,
    required this.opened,
    required this.disabled,
    this.onTap,
    this.onOpenedChange,
    required this.childrenOffset,
    this.color,
  });

  final BuildContext context;
  final NavLinkStyle style;
  final NavLinkState state;
  final NavLinkVariant variant;
  final Widget label;
  final Widget? description;
  final Widget? leftSection;
  final Widget? rightSection;
  final List<Widget>? children;
  final bool active;
  final bool opened;
  final bool disabled;
  final NavLinkOnTap? onTap;
  final NavLinkOnOpenedChange? onOpenedChange;
  final String childrenOffset;
  final String? color;
}

class NavLinkRoot {
  const NavLinkRoot(this._build);

  final Widget Function(NavLinkContext context) _build;

  Widget call(NavLinkContext context) => _build(context);
}

abstract class NavLinkDelegate extends ComponentDelegate {
  const NavLinkDelegate();

  Widget root(NavLinkContext context);
}

class NavLink extends StatelessWidget {
  const NavLink({
    super.key,
    required this.label,
    this.description,
    this.leftSection,
    this.rightSection,
    this.children,
    this.active,
    this.opened,
    this.disabled,
    this.onTap,
    this.onOpenedChange,
    this.childrenOffset,
    this.color,
    this.style,
  }) : variant = NavLinkVariant.defaults;

  final NavLinkVariant variant;
  final Widget label;
  final Widget? description;
  final Widget? leftSection;
  final Widget? rightSection;
  final List<Widget>? children;
  final bool? active;
  final bool? opened;
  final bool? disabled;
  final NavLinkOnTap? onTap;
  final NavLinkOnOpenedChange? onOpenedChange;
  final String? childrenOffset;
  final String? color;
  final NavLinkStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedLeftSection = leftSection;
    final resolvedRightSection = rightSection;
    final resolvedChildren = children;
    final resolvedActive = active ?? false;
    final resolvedOpened = opened ?? false;
    final resolvedDisabled = disabled ?? false;
    final resolvedOnTap = onTap;
    final resolvedOnOpenedChange = onOpenedChange;
    final resolvedChildrenOffset = childrenOffset ?? 'lg';
    final resolvedColor = color;

    const fromProps = NavLinkStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = NavLinkState();
    final navLinkContext = NavLinkContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      label: resolvedLabel,
      description: resolvedDescription,
      leftSection: resolvedLeftSection,
      rightSection: resolvedRightSection,
      children: resolvedChildren,
      active: resolvedActive,
      opened: resolvedOpened,
      disabled: resolvedDisabled,
      onTap: resolvedOnTap,
      onOpenedChange: resolvedOnOpenedChange,
      childrenOffset: resolvedChildrenOffset,
      color: resolvedColor,
    );
    final delegate = MantleTheme.of(context).delegate<NavLinkDelegate>();
    return delegate.root(navLinkContext);
  }
}
