// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_shell.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [AppShell].
enum AppShellVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [AppShell].
@immutable
class AppShellStyle {
  /// Creates an [AppShellStyle].
  const AppShellStyle();

  /// Returns a copy of this [AppShellStyle] with selected fields replaced.
  AppShellStyle copyWith() => this;

  /// Merges [other] over this [AppShellStyle]; null fields keep this value.
  AppShellStyle mergeWith(AppShellStyle? other) => this;
}

/// Resolved interaction state for [AppShell].
@immutable
class AppShellState {
  /// Creates an [AppShellState].
  const AppShellState();
}

/// Values passed to [AppShellDelegate] slots during build.
@immutable
class AppShellContext {
  /// Creates an [AppShellContext].
  const AppShellContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.header,
    this.navbar,
    this.aside,
    this.footer,
    this.padding,
    required this.withBorder,
    required this.layout,
    required this.disabled,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AppShellStyle style;

  /// Resolved interaction state for this build.
  final AppShellState state;

  /// The visual variant selected by the constructor.
  final AppShellVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The header.
  final AppShellHeaderConfig? header;

  /// The navbar.
  final AppShellNavbarConfig? navbar;

  /// The aside.
  final AppShellAsideConfig? aside;

  /// The footer.
  final AppShellFooterConfig? footer;

  /// Inner spacing.
  final String? padding;

  /// Whether to draw a border.
  final bool withBorder;

  /// The layout.
  final AppShellLayout layout;

  /// Whether interaction is disabled.
  final bool disabled;
}

/// Builder for the root slot.
class AppShellRoot {
  /// Creates an [AppShellRoot] from a builder function.
  const AppShellRoot(this._build);

  final Widget Function(AppShellContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AppShellContext context) => _build(context);
}

/// Theme-owned composition slots for [AppShell].
abstract class AppShellDelegate extends ComponentDelegate {
  /// Creates an [AppShellDelegate].
  const AppShellDelegate();

  /// Builds the composition root.
  Widget root(AppShellContext context);
}

/// An [AppShell] widget resolved through [AppShellDelegate].
class AppShell extends StatelessWidget {
  /// Creates an [AppShell].
  const AppShell({
    super.key,
    required this.children,
    this.header,
    this.navbar,
    this.aside,
    this.footer,
    this.padding,
    this.withBorder,
    this.layout,
    this.disabled,
    this.style,
  }) : variant = AppShellVariant.defaults;

  /// The visual variant selected by the constructor.
  final AppShellVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The header.
  final AppShellHeaderConfig? header;

  /// The navbar.
  final AppShellNavbarConfig? navbar;

  /// The aside.
  final AppShellAsideConfig? aside;

  /// The footer.
  final AppShellFooterConfig? footer;

  /// Inner spacing.
  final String? padding;

  /// Whether to draw a border.
  final bool? withBorder;

  /// The layout.
  final AppShellLayout? layout;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Style overrides merged over theme defaults.
  final AppShellStyle? style;

  /// Resolves properties and builds via [AppShellDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedHeader = header;
    final resolvedNavbar = navbar;
    final resolvedAside = aside;
    final resolvedFooter = footer;
    final resolvedPadding = padding;
    final resolvedWithBorder = withBorder ?? true;
    final resolvedLayout = layout ?? AppShellLayout.defaults;
    final resolvedDisabled = disabled ?? false;

    const fromProps = AppShellStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AppShellState();
    final appShellContext = AppShellContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      header: resolvedHeader,
      navbar: resolvedNavbar,
      aside: resolvedAside,
      footer: resolvedFooter,
      padding: resolvedPadding,
      withBorder: resolvedWithBorder,
      layout: resolvedLayout,
      disabled: resolvedDisabled,
    );
    final delegate = MantleTheme.of(context).delegate<AppShellDelegate>();
    return delegate.root(appShellContext);
  }
}

/// Visual variants of [AppShellHeader].
enum AppShellHeaderVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [AppShellHeader].
@immutable
class AppShellHeaderStyle {
  /// Creates an [AppShellHeaderStyle].
  const AppShellHeaderStyle();

  /// Returns a copy of this [AppShellHeaderStyle] with selected fields replaced.
  AppShellHeaderStyle copyWith() => this;

  /// Merges [other] over this [AppShellHeaderStyle]; null fields keep this value.
  AppShellHeaderStyle mergeWith(AppShellHeaderStyle? other) => this;
}

/// Resolved interaction state for [AppShellHeader].
@immutable
class AppShellHeaderState {
  /// Creates an [AppShellHeaderState].
  const AppShellHeaderState();
}

/// Values passed to [AppShellHeaderDelegate] slots during build.
@immutable
class AppShellHeaderContext {
  /// Creates an [AppShellHeaderContext].
  const AppShellHeaderContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.withBorder,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AppShellHeaderStyle style;

  /// Resolved interaction state for this build.
  final AppShellHeaderState state;

  /// The visual variant selected by the constructor.
  final AppShellHeaderVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether to draw a border.
  final bool? withBorder;
}

/// Builder for the root slot.
class AppShellHeaderRoot {
  /// Creates an [AppShellHeaderRoot] from a builder function.
  const AppShellHeaderRoot(this._build);

  final Widget Function(AppShellHeaderContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AppShellHeaderContext context) => _build(context);
}

/// Theme-owned composition slots for [AppShellHeader].
abstract class AppShellHeaderDelegate extends ComponentDelegate {
  /// Creates an [AppShellHeaderDelegate].
  const AppShellHeaderDelegate();

  /// Builds the composition root.
  Widget root(AppShellHeaderContext context);
}

/// An [AppShellHeader] widget resolved through [AppShellHeaderDelegate].
class AppShellHeader extends StatelessWidget {
  /// Creates an [AppShellHeader].
  const AppShellHeader({
    super.key,
    required this.child,
    this.withBorder,
    this.style,
  }) : variant = AppShellHeaderVariant.defaults;

  /// The visual variant selected by the constructor.
  final AppShellHeaderVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether to draw a border.
  final bool? withBorder;

  /// Style overrides merged over theme defaults.
  final AppShellHeaderStyle? style;

  /// Resolves properties and builds via [AppShellHeaderDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedWithBorder = withBorder;

    const fromProps = AppShellHeaderStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AppShellHeaderState();
    final appShellHeaderContext = AppShellHeaderContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      withBorder: resolvedWithBorder,
    );
    final delegate = MantleTheme.of(context).delegate<AppShellHeaderDelegate>();
    return delegate.root(appShellHeaderContext);
  }
}

/// Visual variants of [AppShellNavbar].
enum AppShellNavbarVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [AppShellNavbar].
@immutable
class AppShellNavbarStyle {
  /// Creates an [AppShellNavbarStyle].
  const AppShellNavbarStyle();

  /// Returns a copy of this [AppShellNavbarStyle] with selected fields replaced.
  AppShellNavbarStyle copyWith() => this;

  /// Merges [other] over this [AppShellNavbarStyle]; null fields keep this value.
  AppShellNavbarStyle mergeWith(AppShellNavbarStyle? other) => this;
}

/// Resolved interaction state for [AppShellNavbar].
@immutable
class AppShellNavbarState {
  /// Creates an [AppShellNavbarState].
  const AppShellNavbarState();
}

/// Values passed to [AppShellNavbarDelegate] slots during build.
@immutable
class AppShellNavbarContext {
  /// Creates an [AppShellNavbarContext].
  const AppShellNavbarContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.withBorder,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AppShellNavbarStyle style;

  /// Resolved interaction state for this build.
  final AppShellNavbarState state;

  /// The visual variant selected by the constructor.
  final AppShellNavbarVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether to draw a border.
  final bool? withBorder;
}

/// Builder for the root slot.
class AppShellNavbarRoot {
  /// Creates an [AppShellNavbarRoot] from a builder function.
  const AppShellNavbarRoot(this._build);

  final Widget Function(AppShellNavbarContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AppShellNavbarContext context) => _build(context);
}

/// Theme-owned composition slots for [AppShellNavbar].
abstract class AppShellNavbarDelegate extends ComponentDelegate {
  /// Creates an [AppShellNavbarDelegate].
  const AppShellNavbarDelegate();

  /// Builds the composition root.
  Widget root(AppShellNavbarContext context);
}

/// An [AppShellNavbar] widget resolved through [AppShellNavbarDelegate].
class AppShellNavbar extends StatelessWidget {
  /// Creates an [AppShellNavbar].
  const AppShellNavbar({
    super.key,
    required this.child,
    this.withBorder,
    this.style,
  }) : variant = AppShellNavbarVariant.defaults;

  /// The visual variant selected by the constructor.
  final AppShellNavbarVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether to draw a border.
  final bool? withBorder;

  /// Style overrides merged over theme defaults.
  final AppShellNavbarStyle? style;

  /// Resolves properties and builds via [AppShellNavbarDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedWithBorder = withBorder;

    const fromProps = AppShellNavbarStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AppShellNavbarState();
    final appShellNavbarContext = AppShellNavbarContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      withBorder: resolvedWithBorder,
    );
    final delegate = MantleTheme.of(context).delegate<AppShellNavbarDelegate>();
    return delegate.root(appShellNavbarContext);
  }
}

/// Visual variants of [AppShellAside].
enum AppShellAsideVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [AppShellAside].
@immutable
class AppShellAsideStyle {
  /// Creates an [AppShellAsideStyle].
  const AppShellAsideStyle();

  /// Returns a copy of this [AppShellAsideStyle] with selected fields replaced.
  AppShellAsideStyle copyWith() => this;

  /// Merges [other] over this [AppShellAsideStyle]; null fields keep this value.
  AppShellAsideStyle mergeWith(AppShellAsideStyle? other) => this;
}

/// Resolved interaction state for [AppShellAside].
@immutable
class AppShellAsideState {
  /// Creates an [AppShellAsideState].
  const AppShellAsideState();
}

/// Values passed to [AppShellAsideDelegate] slots during build.
@immutable
class AppShellAsideContext {
  /// Creates an [AppShellAsideContext].
  const AppShellAsideContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.withBorder,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AppShellAsideStyle style;

  /// Resolved interaction state for this build.
  final AppShellAsideState state;

  /// The visual variant selected by the constructor.
  final AppShellAsideVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether to draw a border.
  final bool? withBorder;
}

/// Builder for the root slot.
class AppShellAsideRoot {
  /// Creates an [AppShellAsideRoot] from a builder function.
  const AppShellAsideRoot(this._build);

  final Widget Function(AppShellAsideContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AppShellAsideContext context) => _build(context);
}

/// Theme-owned composition slots for [AppShellAside].
abstract class AppShellAsideDelegate extends ComponentDelegate {
  /// Creates an [AppShellAsideDelegate].
  const AppShellAsideDelegate();

  /// Builds the composition root.
  Widget root(AppShellAsideContext context);
}

/// An [AppShellAside] widget resolved through [AppShellAsideDelegate].
class AppShellAside extends StatelessWidget {
  /// Creates an [AppShellAside].
  const AppShellAside({
    super.key,
    required this.child,
    this.withBorder,
    this.style,
  }) : variant = AppShellAsideVariant.defaults;

  /// The visual variant selected by the constructor.
  final AppShellAsideVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether to draw a border.
  final bool? withBorder;

  /// Style overrides merged over theme defaults.
  final AppShellAsideStyle? style;

  /// Resolves properties and builds via [AppShellAsideDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedWithBorder = withBorder;

    const fromProps = AppShellAsideStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AppShellAsideState();
    final appShellAsideContext = AppShellAsideContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      withBorder: resolvedWithBorder,
    );
    final delegate = MantleTheme.of(context).delegate<AppShellAsideDelegate>();
    return delegate.root(appShellAsideContext);
  }
}

/// Visual variants of [AppShellFooter].
enum AppShellFooterVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [AppShellFooter].
@immutable
class AppShellFooterStyle {
  /// Creates an [AppShellFooterStyle].
  const AppShellFooterStyle();

  /// Returns a copy of this [AppShellFooterStyle] with selected fields replaced.
  AppShellFooterStyle copyWith() => this;

  /// Merges [other] over this [AppShellFooterStyle]; null fields keep this value.
  AppShellFooterStyle mergeWith(AppShellFooterStyle? other) => this;
}

/// Resolved interaction state for [AppShellFooter].
@immutable
class AppShellFooterState {
  /// Creates an [AppShellFooterState].
  const AppShellFooterState();
}

/// Values passed to [AppShellFooterDelegate] slots during build.
@immutable
class AppShellFooterContext {
  /// Creates an [AppShellFooterContext].
  const AppShellFooterContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.withBorder,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AppShellFooterStyle style;

  /// Resolved interaction state for this build.
  final AppShellFooterState state;

  /// The visual variant selected by the constructor.
  final AppShellFooterVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether to draw a border.
  final bool? withBorder;
}

/// Builder for the root slot.
class AppShellFooterRoot {
  /// Creates an [AppShellFooterRoot] from a builder function.
  const AppShellFooterRoot(this._build);

  final Widget Function(AppShellFooterContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AppShellFooterContext context) => _build(context);
}

/// Theme-owned composition slots for [AppShellFooter].
abstract class AppShellFooterDelegate extends ComponentDelegate {
  /// Creates an [AppShellFooterDelegate].
  const AppShellFooterDelegate();

  /// Builds the composition root.
  Widget root(AppShellFooterContext context);
}

/// An [AppShellFooter] widget resolved through [AppShellFooterDelegate].
class AppShellFooter extends StatelessWidget {
  /// Creates an [AppShellFooter].
  const AppShellFooter({
    super.key,
    required this.child,
    this.withBorder,
    this.style,
  }) : variant = AppShellFooterVariant.defaults;

  /// The visual variant selected by the constructor.
  final AppShellFooterVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether to draw a border.
  final bool? withBorder;

  /// Style overrides merged over theme defaults.
  final AppShellFooterStyle? style;

  /// Resolves properties and builds via [AppShellFooterDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedWithBorder = withBorder;

    const fromProps = AppShellFooterStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AppShellFooterState();
    final appShellFooterContext = AppShellFooterContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      withBorder: resolvedWithBorder,
    );
    final delegate = MantleTheme.of(context).delegate<AppShellFooterDelegate>();
    return delegate.root(appShellFooterContext);
  }
}

/// Visual variants of [AppShellMain].
enum AppShellMainVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [AppShellMain].
@immutable
class AppShellMainStyle {
  /// Creates an [AppShellMainStyle].
  const AppShellMainStyle();

  /// Returns a copy of this [AppShellMainStyle] with selected fields replaced.
  AppShellMainStyle copyWith() => this;

  /// Merges [other] over this [AppShellMainStyle]; null fields keep this value.
  AppShellMainStyle mergeWith(AppShellMainStyle? other) => this;
}

/// Resolved interaction state for [AppShellMain].
@immutable
class AppShellMainState {
  /// Creates an [AppShellMainState].
  const AppShellMainState();
}

/// Values passed to [AppShellMainDelegate] slots during build.
@immutable
class AppShellMainContext {
  /// Creates an [AppShellMainContext].
  const AppShellMainContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AppShellMainStyle style;

  /// Resolved interaction state for this build.
  final AppShellMainState state;

  /// The visual variant selected by the constructor.
  final AppShellMainVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class AppShellMainRoot {
  /// Creates an [AppShellMainRoot] from a builder function.
  const AppShellMainRoot(this._build);

  final Widget Function(AppShellMainContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AppShellMainContext context) => _build(context);
}

/// Theme-owned composition slots for [AppShellMain].
abstract class AppShellMainDelegate extends ComponentDelegate {
  /// Creates an [AppShellMainDelegate].
  const AppShellMainDelegate();

  /// Builds the composition root.
  Widget root(AppShellMainContext context);
}

/// An [AppShellMain] widget resolved through [AppShellMainDelegate].
class AppShellMain extends StatelessWidget {
  /// Creates an [AppShellMain].
  const AppShellMain({super.key, required this.child, this.style})
    : variant = AppShellMainVariant.defaults;

  /// The visual variant selected by the constructor.
  final AppShellMainVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final AppShellMainStyle? style;

  /// Resolves properties and builds via [AppShellMainDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = AppShellMainStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AppShellMainState();
    final appShellMainContext = AppShellMainContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<AppShellMainDelegate>();
    return delegate.root(appShellMainContext);
  }
}

/// Visual variants of [AppShellSection].
enum AppShellSectionVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [AppShellSection].
@immutable
class AppShellSectionStyle {
  /// Creates an [AppShellSectionStyle].
  const AppShellSectionStyle();

  /// Returns a copy of this [AppShellSectionStyle] with selected fields replaced.
  AppShellSectionStyle copyWith() => this;

  /// Merges [other] over this [AppShellSectionStyle]; null fields keep this value.
  AppShellSectionStyle mergeWith(AppShellSectionStyle? other) => this;
}

/// Resolved interaction state for [AppShellSection].
@immutable
class AppShellSectionState {
  /// Creates an [AppShellSectionState].
  const AppShellSectionState();
}

/// Values passed to [AppShellSectionDelegate] slots during build.
@immutable
class AppShellSectionContext {
  /// Creates an [AppShellSectionContext].
  const AppShellSectionContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.grow,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AppShellSectionStyle style;

  /// Resolved interaction state for this build.
  final AppShellSectionState state;

  /// The visual variant selected by the constructor.
  final AppShellSectionVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether the control expands to fill available width.
  final bool grow;
}

/// Builder for the root slot.
class AppShellSectionRoot {
  /// Creates an [AppShellSectionRoot] from a builder function.
  const AppShellSectionRoot(this._build);

  final Widget Function(AppShellSectionContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AppShellSectionContext context) => _build(context);
}

/// Theme-owned composition slots for [AppShellSection].
abstract class AppShellSectionDelegate extends ComponentDelegate {
  /// Creates an [AppShellSectionDelegate].
  const AppShellSectionDelegate();

  /// Builds the composition root.
  Widget root(AppShellSectionContext context);
}

/// An [AppShellSection] widget resolved through [AppShellSectionDelegate].
class AppShellSection extends StatelessWidget {
  /// Creates an [AppShellSection].
  const AppShellSection({super.key, required this.child, this.grow, this.style})
    : variant = AppShellSectionVariant.defaults;

  /// The visual variant selected by the constructor.
  final AppShellSectionVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether the control expands to fill available width.
  final bool? grow;

  /// Style overrides merged over theme defaults.
  final AppShellSectionStyle? style;

  /// Resolves properties and builds via [AppShellSectionDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedGrow = grow ?? false;

    const fromProps = AppShellSectionStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AppShellSectionState();
    final appShellSectionContext = AppShellSectionContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      grow: resolvedGrow,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<AppShellSectionDelegate>();
    return delegate.root(appShellSectionContext);
  }
}
