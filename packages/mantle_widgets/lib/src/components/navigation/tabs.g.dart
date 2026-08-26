// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabs.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum TabsVariant { defaults }

@immutable
class TabsStyle {
  const TabsStyle();

  TabsStyle copyWith() => this;

  TabsStyle mergeWith(TabsStyle? other) => this;
}

@immutable
class TabsState {
  const TabsState();
}

@immutable
class TabsContext {
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

  final BuildContext context;
  final TabsStyle style;
  final TabsState state;
  final TabsVariant variant;
  final List<Widget> children;
  final String? value;
  final TabsOnChange? onChange;
  final Axis orientation;
  final TabsPlacement placement;
  final bool inverted;
  final bool keepMounted;
  final String? color;
  final String? radius;
}

class TabsRoot {
  const TabsRoot(this._build);

  final Widget Function(TabsContext context) _build;

  Widget call(TabsContext context) => _build(context);
}

abstract class TabsDelegate extends ComponentDelegate {
  const TabsDelegate();

  Widget root(TabsContext context);
}

class Tabs extends StatelessWidget {
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

  final TabsVariant variant;
  final List<Widget> children;
  final String? value;
  final TabsOnChange? onChange;
  final Axis? orientation;
  final TabsPlacement? placement;
  final bool? inverted;
  final bool? keepMounted;
  final String? color;
  final String? radius;
  final TabsStyle? style;

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

enum TabsListVariant { defaults }

@immutable
class TabsListStyle {
  const TabsListStyle();

  TabsListStyle copyWith() => this;

  TabsListStyle mergeWith(TabsListStyle? other) => this;
}

@immutable
class TabsListState {
  const TabsListState();
}

@immutable
class TabsListContext {
  const TabsListContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.grow,
    required this.justify,
  });

  final BuildContext context;
  final TabsListStyle style;
  final TabsListState state;
  final TabsListVariant variant;
  final List<Widget> children;
  final bool grow;
  final MainAxisAlignment justify;
}

class TabsListRoot {
  const TabsListRoot(this._build);

  final Widget Function(TabsListContext context) _build;

  Widget call(TabsListContext context) => _build(context);
}

abstract class TabsListDelegate extends ComponentDelegate {
  const TabsListDelegate();

  Widget root(TabsListContext context);
}

class TabsList extends StatelessWidget {
  const TabsList({
    super.key,
    required this.children,
    this.grow,
    this.justify,
    this.style,
  }) : variant = TabsListVariant.defaults;

  final TabsListVariant variant;
  final List<Widget> children;
  final bool? grow;
  final MainAxisAlignment? justify;
  final TabsListStyle? style;

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

enum TabsTabVariant { defaults }

@immutable
class TabsTabStyle {
  const TabsTabStyle();

  TabsTabStyle copyWith() => this;

  TabsTabStyle mergeWith(TabsTabStyle? other) => this;
}

@immutable
class TabsTabState {
  const TabsTabState();
}

@immutable
class TabsTabContext {
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

  final BuildContext context;
  final TabsTabStyle style;
  final TabsTabState state;
  final TabsTabVariant variant;
  final String value;
  final Widget? child;
  final Widget? leftSection;
  final Widget? rightSection;
  final bool disabled;
}

class TabsTabRoot {
  const TabsTabRoot(this._build);

  final Widget Function(TabsTabContext context) _build;

  Widget call(TabsTabContext context) => _build(context);
}

abstract class TabsTabDelegate extends ComponentDelegate {
  const TabsTabDelegate();

  Widget root(TabsTabContext context);
}

class TabsTab extends StatelessWidget {
  const TabsTab({
    super.key,
    required this.value,
    this.child,
    this.leftSection,
    this.rightSection,
    this.disabled,
    this.style,
  }) : variant = TabsTabVariant.defaults;

  final TabsTabVariant variant;
  final String value;
  final Widget? child;
  final Widget? leftSection;
  final Widget? rightSection;
  final bool? disabled;
  final TabsTabStyle? style;

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

enum TabsPanelVariant { defaults }

@immutable
class TabsPanelStyle {
  const TabsPanelStyle();

  TabsPanelStyle copyWith() => this;

  TabsPanelStyle mergeWith(TabsPanelStyle? other) => this;
}

@immutable
class TabsPanelState {
  const TabsPanelState();
}

@immutable
class TabsPanelContext {
  const TabsPanelContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    required this.child,
    this.keepMounted,
  });

  final BuildContext context;
  final TabsPanelStyle style;
  final TabsPanelState state;
  final TabsPanelVariant variant;
  final String value;
  final Widget child;
  final bool? keepMounted;
}

class TabsPanelRoot {
  const TabsPanelRoot(this._build);

  final Widget Function(TabsPanelContext context) _build;

  Widget call(TabsPanelContext context) => _build(context);
}

abstract class TabsPanelDelegate extends ComponentDelegate {
  const TabsPanelDelegate();

  Widget root(TabsPanelContext context);
}

class TabsPanel extends StatelessWidget {
  const TabsPanel({
    super.key,
    required this.value,
    required this.child,
    this.keepMounted,
    this.style,
  }) : variant = TabsPanelVariant.defaults;

  final TabsPanelVariant variant;
  final String value;
  final Widget child;
  final bool? keepMounted;
  final TabsPanelStyle? style;

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
