// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tooltip.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum TooltipVariant { defaults }

@immutable
class TooltipStyle {
  const TooltipStyle();

  TooltipStyle copyWith() => this;

  TooltipStyle mergeWith(TooltipStyle? other) => this;
}

@immutable
class TooltipState {
  const TooltipState();
}

@immutable
class TooltipContext {
  const TooltipContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.label,
    this.opened,
    required this.disabled,
    required this.position,
  });

  final BuildContext context;
  final TooltipStyle style;
  final TooltipState state;
  final TooltipVariant variant;
  final Widget child;
  final String label;
  final bool? opened;
  final bool disabled;
  final OverlayPlacement position;
}

class TooltipRoot {
  const TooltipRoot(this._build);

  final Widget Function(TooltipContext context) _build;

  Widget call(TooltipContext context) => _build(context);
}

abstract class TooltipDelegate extends ComponentDelegate {
  const TooltipDelegate();

  Widget root(TooltipContext context);
}

class Tooltip extends StatelessWidget {
  const Tooltip({
    super.key,
    required this.child,
    required this.label,
    this.opened,
    this.disabled,
    this.position,
    this.style,
  }) : variant = TooltipVariant.defaults;

  final TooltipVariant variant;
  final Widget child;
  final String label;
  final bool? opened;
  final bool? disabled;
  final OverlayPlacement? position;
  final TooltipStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedLabel = label;
    final resolvedOpened = opened;
    final resolvedDisabled = disabled ?? false;
    final resolvedPosition = position ?? OverlayPlacement.top;

    const fromProps = TooltipStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TooltipState();
    final tooltipContext = TooltipContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      label: resolvedLabel,
      opened: resolvedOpened,
      disabled: resolvedDisabled,
      position: resolvedPosition,
    );
    final delegate = MantleTheme.of(context).delegate<TooltipDelegate>();
    return delegate.root(tooltipContext);
  }
}
