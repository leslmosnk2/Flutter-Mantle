// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nav_link.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [NavLink].
enum NavLinkVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [NavLink].
@immutable
class NavLinkStyle {
  /// Creates a [NavLinkStyle].
  const NavLinkStyle();

  /// Returns a copy of this [NavLinkStyle] with selected fields replaced.
  NavLinkStyle copyWith() => this;

  /// Merges [other] over this [NavLinkStyle]; null fields keep this value.
  NavLinkStyle mergeWith(NavLinkStyle? other) => this;
}

/// Resolved interaction state for [NavLink].
@immutable
class NavLinkState {
  /// Creates a [NavLinkState].
  const NavLinkState();
}

/// Values passed to [NavLinkDelegate] slots during build.
@immutable
class NavLinkContext {
  /// Creates a [NavLinkContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final NavLinkStyle style;

  /// Resolved interaction state for this build.
  final NavLinkState state;

  /// The visual variant selected by the constructor.
  final NavLinkVariant variant;

  /// The label.
  final Widget label;

  /// Supporting description text.
  final Widget? description;

  /// The left section.
  final Widget? leftSection;

  /// The right section.
  final Widget? rightSection;

  /// Child widgets composed by this component.
  final List<Widget>? children;

  /// Whether this item is the active option.
  final bool active;

  /// Whether the content is expanded.
  final bool opened;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Called when tap.
  final NavLinkOnTap? onTap;

  /// Called when opened change.
  final NavLinkOnOpenedChange? onOpenedChange;

  /// The children offset.
  final String childrenOffset;

  /// Foreground or accent color.
  final String? color;
}

/// Builder for the root slot.
class NavLinkRoot {
  /// Creates a [NavLinkRoot] from a builder function.
  const NavLinkRoot(this._build);

  final Widget Function(NavLinkContext context) _build;

  /// Invokes this slot with [context].
  Widget call(NavLinkContext context) => _build(context);
}

/// Theme-owned composition slots for [NavLink].
abstract class NavLinkDelegate extends ComponentDelegate {
  /// Creates a [NavLinkDelegate].
  const NavLinkDelegate();

  /// Builds the composition root.
  Widget root(NavLinkContext context);
}

/// A [NavLink] widget resolved through [NavLinkDelegate].
class NavLink extends StatelessWidget {
  /// Creates a [NavLink].
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

  /// The visual variant selected by the constructor.
  final NavLinkVariant variant;

  /// The label.
  final Widget label;

  /// Supporting description text.
  final Widget? description;

  /// The left section.
  final Widget? leftSection;

  /// The right section.
  final Widget? rightSection;

  /// Child widgets composed by this component.
  final List<Widget>? children;

  /// Whether this item is the active option.
  final bool? active;

  /// Whether the content is expanded.
  final bool? opened;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Called when tap.
  final NavLinkOnTap? onTap;

  /// Called when opened change.
  final NavLinkOnOpenedChange? onOpenedChange;

  /// The children offset.
  final String? childrenOffset;

  /// Foreground or accent color.
  final String? color;

  /// Style overrides merged over theme defaults.
  final NavLinkStyle? style;

  /// Resolves properties and builds via [NavLinkDelegate].
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
