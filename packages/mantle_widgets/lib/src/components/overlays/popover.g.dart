// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popover.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum PopoverVariant { defaults }

@immutable
class PopoverStyle {
  const PopoverStyle();

  PopoverStyle copyWith() => this;

  PopoverStyle mergeWith(PopoverStyle? other) => this;
}

@immutable
class PopoverState {
  const PopoverState();
}

@immutable
class PopoverContext {
  const PopoverContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.opened,
    required this.position,
    this.onClose,
  });

  final BuildContext context;
  final PopoverStyle style;
  final PopoverState state;
  final PopoverVariant variant;
  final List<Widget> children;
  final bool opened;
  final OverlayPlacement position;
  final VoidCallback? onClose;
}

class PopoverRoot {
  const PopoverRoot(this._build);

  final Widget Function(PopoverContext context) _build;

  Widget call(PopoverContext context) => _build(context);
}

abstract class PopoverDelegate extends ComponentDelegate {
  const PopoverDelegate();

  Widget root(PopoverContext context);
}

class Popover extends StatelessWidget {
  const Popover({
    super.key,
    required this.children,
    this.opened,
    this.position,
    this.onClose,
    this.style,
  }) : variant = PopoverVariant.defaults;

  final PopoverVariant variant;
  final List<Widget> children;
  final bool? opened;
  final OverlayPlacement? position;
  final VoidCallback? onClose;
  final PopoverStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedOpened = opened ?? false;
    final resolvedPosition = position ?? OverlayPlacement.bottom;
    final resolvedOnClose = onClose;

    const fromProps = PopoverStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PopoverState();
    final popoverContext = PopoverContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      opened: resolvedOpened,
      position: resolvedPosition,
      onClose: resolvedOnClose,
    );
    final delegate = MantleTheme.of(context).delegate<PopoverDelegate>();
    return delegate.root(popoverContext);
  }
}

enum PopoverTargetVariant { defaults }

@immutable
class PopoverTargetStyle {
  const PopoverTargetStyle();

  PopoverTargetStyle copyWith() => this;

  PopoverTargetStyle mergeWith(PopoverTargetStyle? other) => this;
}

@immutable
class PopoverTargetState {
  const PopoverTargetState();
}

@immutable
class PopoverTargetContext {
  const PopoverTargetContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final PopoverTargetStyle style;
  final PopoverTargetState state;
  final PopoverTargetVariant variant;
  final Widget child;
}

class PopoverTargetRoot {
  const PopoverTargetRoot(this._build);

  final Widget Function(PopoverTargetContext context) _build;

  Widget call(PopoverTargetContext context) => _build(context);
}

abstract class PopoverTargetDelegate extends ComponentDelegate {
  const PopoverTargetDelegate();

  Widget root(PopoverTargetContext context);
}

class PopoverTarget extends StatelessWidget {
  const PopoverTarget({super.key, required this.child, this.style})
    : variant = PopoverTargetVariant.defaults;

  final PopoverTargetVariant variant;
  final Widget child;
  final PopoverTargetStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = PopoverTargetStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PopoverTargetState();
    final popoverTargetContext = PopoverTargetContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<PopoverTargetDelegate>();
    return delegate.root(popoverTargetContext);
  }
}

enum PopoverDropdownVariant { defaults }

@immutable
class PopoverDropdownStyle {
  const PopoverDropdownStyle();

  PopoverDropdownStyle copyWith() => this;

  PopoverDropdownStyle mergeWith(PopoverDropdownStyle? other) => this;
}

@immutable
class PopoverDropdownState {
  const PopoverDropdownState();
}

@immutable
class PopoverDropdownContext {
  const PopoverDropdownContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final PopoverDropdownStyle style;
  final PopoverDropdownState state;
  final PopoverDropdownVariant variant;
  final Widget child;
}

class PopoverDropdownRoot {
  const PopoverDropdownRoot(this._build);

  final Widget Function(PopoverDropdownContext context) _build;

  Widget call(PopoverDropdownContext context) => _build(context);
}

abstract class PopoverDropdownDelegate extends ComponentDelegate {
  const PopoverDropdownDelegate();

  Widget root(PopoverDropdownContext context);
}

class PopoverDropdown extends StatelessWidget {
  const PopoverDropdown({super.key, required this.child, this.style})
    : variant = PopoverDropdownVariant.defaults;

  final PopoverDropdownVariant variant;
  final Widget child;
  final PopoverDropdownStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = PopoverDropdownStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PopoverDropdownState();
    final popoverDropdownContext = PopoverDropdownContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<PopoverDropdownDelegate>();
    return delegate.root(popoverDropdownContext);
  }
}
