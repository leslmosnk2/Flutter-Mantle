// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'focus_trap.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum FocusTrapVariant { defaults }

@immutable
class FocusTrapStyle {
  const FocusTrapStyle();

  FocusTrapStyle copyWith() => this;

  FocusTrapStyle mergeWith(FocusTrapStyle? other) => this;
}

@immutable
class FocusTrapState {
  const FocusTrapState();
}

@immutable
class FocusTrapContext {
  const FocusTrapContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.active,
  });

  final BuildContext context;
  final FocusTrapStyle style;
  final FocusTrapState state;
  final FocusTrapVariant variant;
  final Widget child;
  final bool active;
}

class FocusTrapRoot {
  const FocusTrapRoot(this._build);

  final Widget Function(FocusTrapContext context) _build;

  Widget call(FocusTrapContext context) => _build(context);
}

abstract class FocusTrapDelegate extends ComponentDelegate {
  const FocusTrapDelegate();

  Widget root(FocusTrapContext context);
}

class FocusTrap extends StatelessWidget {
  const FocusTrap({super.key, required this.child, this.active, this.style})
    : variant = FocusTrapVariant.defaults;

  final FocusTrapVariant variant;
  final Widget child;
  final bool? active;
  final FocusTrapStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedActive = active ?? true;

    const fromProps = FocusTrapStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = FocusTrapState();
    final focusTrapContext = FocusTrapContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      active: resolvedActive,
    );
    final delegate = MantleTheme.of(context).delegate<FocusTrapDelegate>();
    return delegate.root(focusTrapContext);
  }
}
