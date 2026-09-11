// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabs.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Tabs].
enum TabsVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Tabs].
@immutable
class TabsStyle {
  /// Creates a [TabsStyle].
  const TabsStyle();

  /// Returns a copy of this [TabsStyle] with selected fields replaced.
  TabsStyle copyWith() => this;

  /// Merges [other] over this [TabsStyle]; null fields keep this value.
  TabsStyle mergeWith(TabsStyle? other) => this;
}

/// Resolved interaction state for [Tabs].
@immutable
class TabsState {
  /// Creates a [TabsState].
  const TabsState();
}

/// Values passed to [TabsDelegate] slots during build.
@immutable
class TabsContext {
  /// Creates a [TabsContext].
  const TabsContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.value,
    this.onChange,
    required this.orientation,
    required this.placement,
    required this.inverted,
    required this.keepMounted,
    this.color,
    this.radius,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TabsStyle style;

  /// Resolved interaction state for this build.
  final TabsState state;

  /// The visual variant selected by the constructor.
  final TabsVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The controlled value.
  final String? value;

  /// Called when the value changes.
  final TabsOnChange? onChange;

  /// The orientation.
  final Axis orientation;

  /// The placement.
  final TabsPlacement placement;

  /// Whether inverted.
  final bool inverted;

  /// Whether to keep children mounted when closed.
  final bool keepMounted;

  /// Foreground or accent color.
  final String? color;

  /// Corner radius.
  final String? radius;
}

/// Builder for the root slot.
class TabsRoot {
  /// Creates a [TabsRoot] from a builder function.
  const TabsRoot(this._build);

  final Widget Function(TabsContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TabsContext context) => _build(context);
}

/// Theme-owned composition slots for [Tabs].
abstract class TabsDelegate extends ComponentDelegate {
  /// Creates a [TabsDelegate].
  const TabsDelegate();

  /// Builds the composition root.
  Widget root(TabsContext context);
}

/// A [Tabs] widget resolved through [TabsDelegate].
class Tabs extends StatelessWidget {
  /// Creates a [Tabs].
  const Tabs({
    super.key,
    required this.children,
    this.value,
    this.onChange,
    this.orientation,
    this.placement,
    this.inverted,
    this.keepMounted,
    this.color,
    this.radius,
    this.style,
  }) : variant = TabsVariant.defaults;

  /// The visual variant selected by the constructor.
  final TabsVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The controlled value.
  final String? value;

  /// Called when the value changes.
  final TabsOnChange? onChange;

  /// The orientation.
  final Axis? orientation;

  /// The placement.
  final TabsPlacement? placement;

  /// Whether inverted.
  final bool? inverted;

  /// Whether to keep children mounted when closed.
  final bool? keepMounted;

  /// Foreground or accent color.
  final String? color;

  /// Corner radius.
  final String? radius;

  /// Style overrides merged over theme defaults.
  final TabsStyle? style;

  /// Resolves properties and builds via [TabsDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedValue = value;
    final resolvedOnChange = onChange;
    final resolvedOrientation = orientation ?? Axis.horizontal;
    final resolvedPlacement = placement ?? TabsPlacement.left;
    final resolvedInverted = inverted ?? false;
    final resolvedKeepMounted = keepMounted ?? true;
    final resolvedColor = color;
    final resolvedRadius = radius;

    const fromProps = TabsStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TabsState();
    final tabsContext = TabsContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      value: resolvedValue,
      onChange: resolvedOnChange,
      orientation: resolvedOrientation,
      placement: resolvedPlacement,
      inverted: resolvedInverted,
      keepMounted: resolvedKeepMounted,
      color: resolvedColor,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<TabsDelegate>();
    return delegate.root(tabsContext);
  }
}

/// Visual variants of [TabsList].
enum TabsListVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [TabsList].
@immutable
class TabsListStyle {
  /// Creates a [TabsListStyle].
  const TabsListStyle();

  /// Returns a copy of this [TabsListStyle] with selected fields replaced.
  TabsListStyle copyWith() => this;

  /// Merges [other] over this [TabsListStyle]; null fields keep this value.
  TabsListStyle mergeWith(TabsListStyle? other) => this;
}

/// Resolved interaction state for [TabsList].
@immutable
class TabsListState {
  /// Creates a [TabsListState].
  const TabsListState();
}

/// Values passed to [TabsListDelegate] slots during build.
@immutable
class TabsListContext {
  /// Creates a [TabsListContext].
  const TabsListContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.grow,
    required this.justify,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TabsListStyle style;

  /// Resolved interaction state for this build.
  final TabsListState state;

  /// The visual variant selected by the constructor.
  final TabsListVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Whether the control expands to fill available width.
  final bool grow;

  /// The justify.
  final MainAxisAlignment justify;
}

/// Builder for the root slot.
class TabsListRoot {
  /// Creates a [TabsListRoot] from a builder function.
  const TabsListRoot(this._build);

  final Widget Function(TabsListContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TabsListContext context) => _build(context);
}

/// Theme-owned composition slots for [TabsList].
abstract class TabsListDelegate extends ComponentDelegate {
  /// Creates a [TabsListDelegate].
  const TabsListDelegate();

  /// Builds the composition root.
  Widget root(TabsListContext context);
}

/// A [TabsList] widget resolved through [TabsListDelegate].
class TabsList extends StatelessWidget {
  /// Creates a [TabsList].
  const TabsList({
    super.key,
    required this.children,
    this.grow,
    this.justify,
    this.style,
  }) : variant = TabsListVariant.defaults;

  /// The visual variant selected by the constructor.
  final TabsListVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Whether the control expands to fill available width.
  final bool? grow;

  /// The justify.
  final MainAxisAlignment? justify;

  /// Style overrides merged over theme defaults.
  final TabsListStyle? style;

  /// Resolves properties and builds via [TabsListDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedGrow = grow ?? false;
    final resolvedJustify = justify ?? MainAxisAlignment.start;

    const fromProps = TabsListStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TabsListState();
    final tabsListContext = TabsListContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      grow: resolvedGrow,
      justify: resolvedJustify,
    );
    final delegate = MantleTheme.of(context).delegate<TabsListDelegate>();
    return delegate.root(tabsListContext);
  }
}

/// Visual variants of [TabsTab].
enum TabsTabVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [TabsTab].
@immutable
class TabsTabStyle {
  /// Creates a [TabsTabStyle].
  const TabsTabStyle();

  /// Returns a copy of this [TabsTabStyle] with selected fields replaced.
  TabsTabStyle copyWith() => this;

  /// Merges [other] over this [TabsTabStyle]; null fields keep this value.
  TabsTabStyle mergeWith(TabsTabStyle? other) => this;
}

/// Resolved interaction state for [TabsTab].
@immutable
class TabsTabState {
  /// Creates a [TabsTabState].
  const TabsTabState();
}

/// Values passed to [TabsTabDelegate] slots during build.
@immutable
class TabsTabContext {
  /// Creates a [TabsTabContext].
  const TabsTabContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    this.child,
    this.leftSection,
    this.rightSection,
    required this.disabled,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TabsTabStyle style;

  /// Resolved interaction state for this build.
  final TabsTabState state;

  /// The visual variant selected by the constructor.
  final TabsTabVariant variant;

  /// The controlled value.
  final String value;

  /// The primary child widget.
  final Widget? child;

  /// The left section.
  final Widget? leftSection;

  /// The right section.
  final Widget? rightSection;

  /// Whether interaction is disabled.
  final bool disabled;
}

/// Builder for the root slot.
class TabsTabRoot {
  /// Creates a [TabsTabRoot] from a builder function.
  const TabsTabRoot(this._build);

  final Widget Function(TabsTabContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TabsTabContext context) => _build(context);
}

/// Theme-owned composition slots for [TabsTab].
abstract class TabsTabDelegate extends ComponentDelegate {
  /// Creates a [TabsTabDelegate].
  const TabsTabDelegate();

  /// Builds the composition root.
  Widget root(TabsTabContext context);
}

/// A [TabsTab] widget resolved through [TabsTabDelegate].
class TabsTab extends StatelessWidget {
  /// Creates a [TabsTab].
  const TabsTab({
    super.key,
    required this.value,
    this.child,
    this.leftSection,
    this.rightSection,
    this.disabled,
    this.style,
  }) : variant = TabsTabVariant.defaults;

  /// The visual variant selected by the constructor.
  final TabsTabVariant variant;

  /// The controlled value.
  final String value;

  /// The primary child widget.
  final Widget? child;

  /// The left section.
  final Widget? leftSection;

  /// The right section.
  final Widget? rightSection;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Style overrides merged over theme defaults.
  final TabsTabStyle? style;

  /// Resolves properties and builds via [TabsTabDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedChild = child;
    final resolvedLeftSection = leftSection;
    final resolvedRightSection = rightSection;
    final resolvedDisabled = disabled ?? false;

    const fromProps = TabsTabStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TabsTabState();
    final tabsTabContext = TabsTabContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      child: resolvedChild,
      leftSection: resolvedLeftSection,
      rightSection: resolvedRightSection,
      disabled: resolvedDisabled,
    );
    final delegate = MantleTheme.of(context).delegate<TabsTabDelegate>();
    return delegate.root(tabsTabContext);
  }
}

/// Visual variants of [TabsPanel].
enum TabsPanelVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [TabsPanel].
@immutable
class TabsPanelStyle {
  /// Creates a [TabsPanelStyle].
  const TabsPanelStyle();

  /// Returns a copy of this [TabsPanelStyle] with selected fields replaced.
  TabsPanelStyle copyWith() => this;

  /// Merges [other] over this [TabsPanelStyle]; null fields keep this value.
  TabsPanelStyle mergeWith(TabsPanelStyle? other) => this;
}

/// Resolved interaction state for [TabsPanel].
@immutable
class TabsPanelState {
  /// Creates a [TabsPanelState].
  const TabsPanelState();
}

/// Values passed to [TabsPanelDelegate] slots during build.
@immutable
class TabsPanelContext {
  /// Creates a [TabsPanelContext].
  const TabsPanelContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    required this.child,
    this.keepMounted,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TabsPanelStyle style;

  /// Resolved interaction state for this build.
  final TabsPanelState state;

  /// The visual variant selected by the constructor.
  final TabsPanelVariant variant;

  /// The controlled value.
  final String value;

  /// The primary child widget.
  final Widget child;

  /// Whether to keep children mounted when closed.
  final bool? keepMounted;
}

/// Builder for the root slot.
class TabsPanelRoot {
  /// Creates a [TabsPanelRoot] from a builder function.
  const TabsPanelRoot(this._build);

  final Widget Function(TabsPanelContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TabsPanelContext context) => _build(context);
}

/// Theme-owned composition slots for [TabsPanel].
abstract class TabsPanelDelegate extends ComponentDelegate {
  /// Creates a [TabsPanelDelegate].
  const TabsPanelDelegate();

  /// Builds the composition root.
  Widget root(TabsPanelContext context);
}

/// A [TabsPanel] widget resolved through [TabsPanelDelegate].
class TabsPanel extends StatelessWidget {
  /// Creates a [TabsPanel].
  const TabsPanel({
    super.key,
    required this.value,
    required this.child,
    this.keepMounted,
    this.style,
  }) : variant = TabsPanelVariant.defaults;

  /// The visual variant selected by the constructor.
  final TabsPanelVariant variant;

  /// The controlled value.
  final String value;

  /// The primary child widget.
  final Widget child;

  /// Whether to keep children mounted when closed.
  final bool? keepMounted;

  /// Style overrides merged over theme defaults.
  final TabsPanelStyle? style;

  /// Resolves properties and builds via [TabsPanelDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedChild = child;
    final resolvedKeepMounted = keepMounted;

    const fromProps = TabsPanelStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TabsPanelState();
    final tabsPanelContext = TabsPanelContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      child: resolvedChild,
      keepMounted: resolvedKeepMounted,
    );
    final delegate = MantleTheme.of(context).delegate<TabsPanelDelegate>();
    return delegate.root(tabsPanelContext);
  }
}
