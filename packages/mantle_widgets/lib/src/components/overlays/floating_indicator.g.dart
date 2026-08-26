// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floating_indicator.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum FloatingIndicatorVariant { defaults }

@immutable
class FloatingIndicatorStyle {
  const FloatingIndicatorStyle();

  FloatingIndicatorStyle copyWith() => this;

  FloatingIndicatorStyle mergeWith(FloatingIndicatorStyle? other) => this;
}

@immutable
class FloatingIndicatorState {
  const FloatingIndicatorState();
}

@immutable
class FloatingIndicatorContext {
  const FloatingIndicatorContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.active,
  });

  final BuildContext context;
  final FloatingIndicatorStyle style;
  final FloatingIndicatorState state;
  final FloatingIndicatorVariant variant;
  final List<Widget> children;
  final int active;
}

class FloatingIndicatorRoot {
  const FloatingIndicatorRoot(this._build);

  final Widget Function(FloatingIndicatorContext context) _build;

  Widget call(FloatingIndicatorContext context) => _build(context);
}

abstract class FloatingIndicatorDelegate extends ComponentDelegate {
  const FloatingIndicatorDelegate();

  Widget root(FloatingIndicatorContext context);
}

class FloatingIndicator extends StatelessWidget {
  const FloatingIndicator({
    super.key,
    required this.children,
    this.active,
    this.style,
  }) : variant = FloatingIndicatorVariant.defaults;

  final FloatingIndicatorVariant variant;
  final List<Widget> children;
  final int? active;
  final FloatingIndicatorStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedActive = active ?? 0;

    const fromProps = FloatingIndicatorStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = FloatingIndicatorState();
    final floatingIndicatorContext = FloatingIndicatorContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      active: resolvedActive,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<FloatingIndicatorDelegate>();
    return delegate.root(floatingIndicatorContext);
  }
}
