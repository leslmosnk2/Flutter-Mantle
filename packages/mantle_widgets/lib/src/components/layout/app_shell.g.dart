// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_shell.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum AppShellVariant { defaults }

@immutable
class AppShellStyle {
  const AppShellStyle();

  AppShellStyle copyWith() => this;

  AppShellStyle mergeWith(AppShellStyle? other) => this;
}

@immutable
class AppShellState {
  const AppShellState();
}

@immutable
class AppShellContext {
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

  final BuildContext context;
  final AppShellStyle style;
  final AppShellState state;
  final AppShellVariant variant;
  final List<Widget> children;
  final AppShellHeaderConfig? header;
  final AppShellNavbarConfig? navbar;
  final AppShellAsideConfig? aside;
  final AppShellFooterConfig? footer;
  final String? padding;
  final bool withBorder;
  final AppShellLayout layout;
  final bool disabled;
}

class AppShellRoot {
  const AppShellRoot(this._build);

  final Widget Function(AppShellContext context) _build;

  Widget call(AppShellContext context) => _build(context);
}

abstract class AppShellDelegate extends ComponentDelegate {
  const AppShellDelegate();

  Widget root(AppShellContext context);
}

class AppShell extends StatelessWidget {
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

  final AppShellVariant variant;
  final List<Widget> children;
  final AppShellHeaderConfig? header;
  final AppShellNavbarConfig? navbar;
  final AppShellAsideConfig? aside;
  final AppShellFooterConfig? footer;
  final String? padding;
  final bool? withBorder;
  final AppShellLayout? layout;
  final bool? disabled;
  final AppShellStyle? style;

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

enum AppShellHeaderVariant { defaults }

@immutable
class AppShellHeaderStyle {
  const AppShellHeaderStyle();

  AppShellHeaderStyle copyWith() => this;

  AppShellHeaderStyle mergeWith(AppShellHeaderStyle? other) => this;
}

@immutable
class AppShellHeaderState {
  const AppShellHeaderState();
}

@immutable
class AppShellHeaderContext {
  const AppShellHeaderContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.withBorder,
  });

  final BuildContext context;
  final AppShellHeaderStyle style;
  final AppShellHeaderState state;
  final AppShellHeaderVariant variant;
  final Widget child;
  final bool? withBorder;
}

class AppShellHeaderRoot {
  const AppShellHeaderRoot(this._build);

  final Widget Function(AppShellHeaderContext context) _build;

  Widget call(AppShellHeaderContext context) => _build(context);
}

abstract class AppShellHeaderDelegate extends ComponentDelegate {
  const AppShellHeaderDelegate();

  Widget root(AppShellHeaderContext context);
}

class AppShellHeader extends StatelessWidget {
  const AppShellHeader({
    super.key,
    required this.child,
    this.withBorder,
    this.style,
  }) : variant = AppShellHeaderVariant.defaults;

  final AppShellHeaderVariant variant;
  final Widget child;
  final bool? withBorder;
  final AppShellHeaderStyle? style;

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

enum AppShellNavbarVariant { defaults }

@immutable
class AppShellNavbarStyle {
  const AppShellNavbarStyle();

  AppShellNavbarStyle copyWith() => this;

  AppShellNavbarStyle mergeWith(AppShellNavbarStyle? other) => this;
}

@immutable
class AppShellNavbarState {
  const AppShellNavbarState();
}

@immutable
class AppShellNavbarContext {
  const AppShellNavbarContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.withBorder,
  });

  final BuildContext context;
  final AppShellNavbarStyle style;
  final AppShellNavbarState state;
  final AppShellNavbarVariant variant;
  final Widget child;
  final bool? withBorder;
}

class AppShellNavbarRoot {
  const AppShellNavbarRoot(this._build);

  final Widget Function(AppShellNavbarContext context) _build;

  Widget call(AppShellNavbarContext context) => _build(context);
}

abstract class AppShellNavbarDelegate extends ComponentDelegate {
  const AppShellNavbarDelegate();

  Widget root(AppShellNavbarContext context);
}

class AppShellNavbar extends StatelessWidget {
  const AppShellNavbar({
    super.key,
    required this.child,
    this.withBorder,
    this.style,
  }) : variant = AppShellNavbarVariant.defaults;

  final AppShellNavbarVariant variant;
  final Widget child;
  final bool? withBorder;
  final AppShellNavbarStyle? style;

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

enum AppShellAsideVariant { defaults }

@immutable
class AppShellAsideStyle {
  const AppShellAsideStyle();

  AppShellAsideStyle copyWith() => this;

  AppShellAsideStyle mergeWith(AppShellAsideStyle? other) => this;
}

@immutable
class AppShellAsideState {
  const AppShellAsideState();
}

@immutable
class AppShellAsideContext {
  const AppShellAsideContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.withBorder,
  });

  final BuildContext context;
  final AppShellAsideStyle style;
  final AppShellAsideState state;
  final AppShellAsideVariant variant;
  final Widget child;
  final bool? withBorder;
}

class AppShellAsideRoot {
  const AppShellAsideRoot(this._build);

  final Widget Function(AppShellAsideContext context) _build;

  Widget call(AppShellAsideContext context) => _build(context);
}

abstract class AppShellAsideDelegate extends ComponentDelegate {
  const AppShellAsideDelegate();

  Widget root(AppShellAsideContext context);
}

class AppShellAside extends StatelessWidget {
  const AppShellAside({
    super.key,
    required this.child,
    this.withBorder,
    this.style,
  }) : variant = AppShellAsideVariant.defaults;

  final AppShellAsideVariant variant;
  final Widget child;
  final bool? withBorder;
  final AppShellAsideStyle? style;

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

enum AppShellFooterVariant { defaults }

@immutable
class AppShellFooterStyle {
  const AppShellFooterStyle();

  AppShellFooterStyle copyWith() => this;

  AppShellFooterStyle mergeWith(AppShellFooterStyle? other) => this;
}

@immutable
class AppShellFooterState {
  const AppShellFooterState();
}

@immutable
class AppShellFooterContext {
  const AppShellFooterContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.withBorder,
  });

  final BuildContext context;
  final AppShellFooterStyle style;
  final AppShellFooterState state;
  final AppShellFooterVariant variant;
  final Widget child;
  final bool? withBorder;
}

class AppShellFooterRoot {
  const AppShellFooterRoot(this._build);

  final Widget Function(AppShellFooterContext context) _build;

  Widget call(AppShellFooterContext context) => _build(context);
}

abstract class AppShellFooterDelegate extends ComponentDelegate {
  const AppShellFooterDelegate();

  Widget root(AppShellFooterContext context);
}

class AppShellFooter extends StatelessWidget {
  const AppShellFooter({
    super.key,
    required this.child,
    this.withBorder,
    this.style,
  }) : variant = AppShellFooterVariant.defaults;

  final AppShellFooterVariant variant;
  final Widget child;
  final bool? withBorder;
  final AppShellFooterStyle? style;

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

enum AppShellMainVariant { defaults }

@immutable
class AppShellMainStyle {
  const AppShellMainStyle();

  AppShellMainStyle copyWith() => this;

  AppShellMainStyle mergeWith(AppShellMainStyle? other) => this;
}

@immutable
class AppShellMainState {
  const AppShellMainState();
}

@immutable
class AppShellMainContext {
  const AppShellMainContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final AppShellMainStyle style;
  final AppShellMainState state;
  final AppShellMainVariant variant;
  final Widget child;
}

class AppShellMainRoot {
  const AppShellMainRoot(this._build);

  final Widget Function(AppShellMainContext context) _build;

  Widget call(AppShellMainContext context) => _build(context);
}

abstract class AppShellMainDelegate extends ComponentDelegate {
  const AppShellMainDelegate();

  Widget root(AppShellMainContext context);
}

class AppShellMain extends StatelessWidget {
  const AppShellMain({super.key, required this.child, this.style})
    : variant = AppShellMainVariant.defaults;

  final AppShellMainVariant variant;
  final Widget child;
  final AppShellMainStyle? style;

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

enum AppShellSectionVariant { defaults }

@immutable
class AppShellSectionStyle {
  const AppShellSectionStyle();

  AppShellSectionStyle copyWith() => this;

  AppShellSectionStyle mergeWith(AppShellSectionStyle? other) => this;
}

@immutable
class AppShellSectionState {
  const AppShellSectionState();
}

@immutable
class AppShellSectionContext {
  const AppShellSectionContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.grow,
  });

  final BuildContext context;
  final AppShellSectionStyle style;
  final AppShellSectionState state;
  final AppShellSectionVariant variant;
  final Widget child;
  final bool grow;
}

class AppShellSectionRoot {
  const AppShellSectionRoot(this._build);

  final Widget Function(AppShellSectionContext context) _build;

  Widget call(AppShellSectionContext context) => _build(context);
}

abstract class AppShellSectionDelegate extends ComponentDelegate {
  const AppShellSectionDelegate();

  Widget root(AppShellSectionContext context);
}

class AppShellSection extends StatelessWidget {
  const AppShellSection({super.key, required this.child, this.grow, this.style})
    : variant = AppShellSectionVariant.defaults;

  final AppShellSectionVariant variant;
  final Widget child;
  final bool? grow;
  final AppShellSectionStyle? style;

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
