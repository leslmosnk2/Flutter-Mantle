// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum IndicatorVariant { defaults }

@immutable
class IndicatorStyle {
  const IndicatorStyle();

  IndicatorStyle copyWith() => this;

  IndicatorStyle mergeWith(IndicatorStyle? other) => this;
}

@immutable
class IndicatorState {
  const IndicatorState();
}

@immutable
class IndicatorContext {
  const IndicatorContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.label,
    required this.position,
    required this.offset,
    required this.size,
    this.color,
    required this.radius,
    required this.inline,
    required this.withBorder,
    required this.disabled,
    required this.processing,
    required this.autoContrast,
  });

  final BuildContext context;
  final IndicatorStyle style;
  final IndicatorState state;
  final IndicatorVariant variant;
  final Widget child;
  final Widget? label;
  final IndicatorPosition position;
  final double offset;
  final double size;
  final String? color;
  final BorderRadiusGeometry radius;
  final bool inline;
  final bool withBorder;
  final bool disabled;
  final bool processing;
  final bool autoContrast;
}

class IndicatorRoot {
  const IndicatorRoot(this._build);

  final Widget Function(IndicatorContext context) _build;

  Widget call(IndicatorContext context) => _build(context);
}

abstract class IndicatorDelegate extends ComponentDelegate {
  const IndicatorDelegate();

  Widget root(IndicatorContext context);
}

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.child,
    this.label,
    this.position,
    this.offset,
    this.size,
    this.color,
    this.radius,
    this.inline,
    this.withBorder,
    this.disabled,
    this.processing,
    this.autoContrast,
    this.style,
  }) : variant = IndicatorVariant.defaults;

  final IndicatorVariant variant;
  final Widget child;
  final Widget? label;
  final IndicatorPosition? position;
  final double? offset;
  final double? size;
  final String? color;
  final BorderRadiusGeometry? radius;
  final bool? inline;
  final bool? withBorder;
  final bool? disabled;
  final bool? processing;
  final bool? autoContrast;
  final IndicatorStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedLabel = label;
    final resolvedPosition = position ?? IndicatorPosition.topEnd;
    final resolvedOffset = offset ?? 0;
    final resolvedSize = size ?? 10;
    final resolvedColor = color;
    final resolvedRadius = radius ?? dataDisplayPillRadius(context);
    final resolvedInline = inline ?? false;
    final resolvedWithBorder = withBorder ?? false;
    final resolvedDisabled = disabled ?? false;
    final resolvedProcessing = processing ?? false;
    final resolvedAutoContrast = autoContrast ?? false;

    const fromProps = IndicatorStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = IndicatorState();
    final indicatorContext = IndicatorContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      label: resolvedLabel,
      position: resolvedPosition,
      offset: resolvedOffset,
      size: resolvedSize,
      color: resolvedColor,
      radius: resolvedRadius,
      inline: resolvedInline,
      withBorder: resolvedWithBorder,
      disabled: resolvedDisabled,
      processing: resolvedProcessing,
      autoContrast: resolvedAutoContrast,
    );
    final delegate = MantleTheme.of(context).delegate<IndicatorDelegate>();
    return delegate.root(indicatorContext);
  }
}
