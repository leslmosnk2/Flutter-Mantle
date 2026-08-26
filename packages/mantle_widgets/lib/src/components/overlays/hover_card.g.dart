// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hover_card.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum HoverCardVariant { defaults }

@immutable
class HoverCardStyle {
  const HoverCardStyle();

  HoverCardStyle copyWith() => this;

  HoverCardStyle mergeWith(HoverCardStyle? other) => this;
}

@immutable
class HoverCardState {
  const HoverCardState();
}

@immutable
class HoverCardContext {
  const HoverCardContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.initiallyOpened,
  });

  final BuildContext context;
  final HoverCardStyle style;
  final HoverCardState state;
  final HoverCardVariant variant;
  final List<Widget> children;
  final bool initiallyOpened;
}

class HoverCardRoot {
  const HoverCardRoot(this._build);

  final Widget Function(HoverCardContext context) _build;

  Widget call(HoverCardContext context) => _build(context);
}

abstract class HoverCardDelegate extends ComponentDelegate {
  const HoverCardDelegate();

  Widget root(HoverCardContext context);
}

class HoverCard extends StatelessWidget {
  const HoverCard({
    super.key,
    required this.children,
    this.initiallyOpened,
    this.style,
  }) : variant = HoverCardVariant.defaults;

  final HoverCardVariant variant;
  final List<Widget> children;
  final bool? initiallyOpened;
  final HoverCardStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedInitiallyOpened = initiallyOpened ?? false;

    const fromProps = HoverCardStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = HoverCardState();
    final hoverCardContext = HoverCardContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      initiallyOpened: resolvedInitiallyOpened,
    );
    final delegate = MantleTheme.of(context).delegate<HoverCardDelegate>();
    return delegate.root(hoverCardContext);
  }
}

enum HoverCardTargetVariant { defaults }

@immutable
class HoverCardTargetStyle {
  const HoverCardTargetStyle();

  HoverCardTargetStyle copyWith() => this;

  HoverCardTargetStyle mergeWith(HoverCardTargetStyle? other) => this;
}

@immutable
class HoverCardTargetState {
  const HoverCardTargetState();
}

@immutable
class HoverCardTargetContext {
  const HoverCardTargetContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final HoverCardTargetStyle style;
  final HoverCardTargetState state;
  final HoverCardTargetVariant variant;
  final Widget child;
}

class HoverCardTargetRoot {
  const HoverCardTargetRoot(this._build);

  final Widget Function(HoverCardTargetContext context) _build;

  Widget call(HoverCardTargetContext context) => _build(context);
}

abstract class HoverCardTargetDelegate extends ComponentDelegate {
  const HoverCardTargetDelegate();

  Widget root(HoverCardTargetContext context);
}

class HoverCardTarget extends StatelessWidget {
  const HoverCardTarget({super.key, required this.child, this.style})
    : variant = HoverCardTargetVariant.defaults;

  final HoverCardTargetVariant variant;
  final Widget child;
  final HoverCardTargetStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = HoverCardTargetStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = HoverCardTargetState();
    final hoverCardTargetContext = HoverCardTargetContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<HoverCardTargetDelegate>();
    return delegate.root(hoverCardTargetContext);
  }
}

enum HoverCardDropdownVariant { defaults }

@immutable
class HoverCardDropdownStyle {
  const HoverCardDropdownStyle();

  HoverCardDropdownStyle copyWith() => this;

  HoverCardDropdownStyle mergeWith(HoverCardDropdownStyle? other) => this;
}

@immutable
class HoverCardDropdownState {
  const HoverCardDropdownState();
}

@immutable
class HoverCardDropdownContext {
  const HoverCardDropdownContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final HoverCardDropdownStyle style;
  final HoverCardDropdownState state;
  final HoverCardDropdownVariant variant;
  final Widget child;
}

class HoverCardDropdownRoot {
  const HoverCardDropdownRoot(this._build);

  final Widget Function(HoverCardDropdownContext context) _build;

  Widget call(HoverCardDropdownContext context) => _build(context);
}

abstract class HoverCardDropdownDelegate extends ComponentDelegate {
  const HoverCardDropdownDelegate();

  Widget root(HoverCardDropdownContext context);
}

class HoverCardDropdown extends StatelessWidget {
  const HoverCardDropdown({super.key, required this.child, this.style})
    : variant = HoverCardDropdownVariant.defaults;

  final HoverCardDropdownVariant variant;
  final Widget child;
  final HoverCardDropdownStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = HoverCardDropdownStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = HoverCardDropdownState();
    final hoverCardDropdownContext = HoverCardDropdownContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<HoverCardDropdownDelegate>();
    return delegate.root(hoverCardDropdownContext);
  }
}
