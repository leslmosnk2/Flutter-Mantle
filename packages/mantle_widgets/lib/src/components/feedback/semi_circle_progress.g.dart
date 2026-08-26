// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'semi_circle_progress.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum SemiCircleProgressVariant { defaults }

@immutable
class SemiCircleProgressStyle {
  const SemiCircleProgressStyle();

  SemiCircleProgressStyle copyWith() => this;

  SemiCircleProgressStyle mergeWith(SemiCircleProgressStyle? other) => this;
}

@immutable
class SemiCircleProgressState {
  const SemiCircleProgressState();
}

@immutable
class SemiCircleProgressContext {
  const SemiCircleProgressContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    this.label,
    required this.fillDirection,
    required this.orientation,
    required this.labelPosition,
    required this.size,
    required this.thickness,
    this.filledSegmentColor,
    this.emptySegmentColor,
  });

  final BuildContext context;
  final SemiCircleProgressStyle style;
  final SemiCircleProgressState state;
  final SemiCircleProgressVariant variant;
  final double value;
  final Widget? label;
  final SemiCircleFillDirection fillDirection;
  final SemiCircleOrientation orientation;
  final SemiCircleLabelPosition labelPosition;
  final double size;
  final double thickness;
  final String? filledSegmentColor;
  final String? emptySegmentColor;
}

class SemiCircleProgressRoot {
  const SemiCircleProgressRoot(this._build);

  final Widget Function(SemiCircleProgressContext context) _build;

  Widget call(SemiCircleProgressContext context) => _build(context);
}

abstract class SemiCircleProgressDelegate extends ComponentDelegate {
  const SemiCircleProgressDelegate();

  Widget root(SemiCircleProgressContext context);
}

class SemiCircleProgress extends StatelessWidget {
  const SemiCircleProgress({
    super.key,
    required this.value,
    this.label,
    this.fillDirection,
    this.orientation,
    this.labelPosition,
    this.size,
    this.thickness,
    this.filledSegmentColor,
    this.emptySegmentColor,
    this.style,
  }) : variant = SemiCircleProgressVariant.defaults;

  final SemiCircleProgressVariant variant;
  final double value;
  final Widget? label;
  final SemiCircleFillDirection? fillDirection;
  final SemiCircleOrientation? orientation;
  final SemiCircleLabelPosition? labelPosition;
  final double? size;
  final double? thickness;
  final String? filledSegmentColor;
  final String? emptySegmentColor;
  final SemiCircleProgressStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedLabel = label;
    final resolvedFillDirection =
        fillDirection ?? SemiCircleFillDirection.leftToRight;
    final resolvedOrientation = orientation ?? SemiCircleOrientation.up;
    final resolvedLabelPosition =
        labelPosition ?? SemiCircleLabelPosition.bottom;
    final resolvedSize = size ?? 200;
    final resolvedThickness = thickness ?? 12;
    final resolvedFilledSegmentColor = filledSegmentColor;
    final resolvedEmptySegmentColor = emptySegmentColor;

    const fromProps = SemiCircleProgressStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SemiCircleProgressState();
    final semiCircleProgressContext = SemiCircleProgressContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      label: resolvedLabel,
      fillDirection: resolvedFillDirection,
      orientation: resolvedOrientation,
      labelPosition: resolvedLabelPosition,
      size: resolvedSize,
      thickness: resolvedThickness,
      filledSegmentColor: resolvedFilledSegmentColor,
      emptySegmentColor: resolvedEmptySegmentColor,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<SemiCircleProgressDelegate>();
    return delegate.root(semiCircleProgressContext);
  }
}
