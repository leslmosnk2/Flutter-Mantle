// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum SliderVariant { defaults }

@immutable
class SliderStyle {
  const SliderStyle();

  SliderStyle copyWith() => this;

  SliderStyle mergeWith(SliderStyle? other) => this;
}

@immutable
class SliderState {
  const SliderState();
}

@immutable
class SliderContext {
  const SliderContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.onChangeEnd,
    required this.min,
    required this.max,
    required this.step,
    this.marks,
    required this.disabled,
    required this.labelAlwaysOn,
    this.color,
    required this.size,
    required this.radius,
  });

  final BuildContext context;
  final SliderStyle style;
  final SliderState state;
  final SliderVariant variant;
  final double? value;
  final double? defaultValue;
  final void Function(double)? onChanged;
  final void Function(double)? onChangeEnd;
  final double min;
  final double max;
  final double step;
  final List<SliderMark>? marks;
  final bool disabled;
  final bool labelAlwaysOn;
  final String? color;
  final String size;
  final BorderRadiusGeometry radius;
}

class SliderRoot {
  const SliderRoot(this._build);

  final Widget Function(SliderContext context) _build;

  Widget call(SliderContext context) => _build(context);
}

abstract class SliderDelegate extends ComponentDelegate {
  const SliderDelegate();

  Widget root(SliderContext context);
}

class Slider extends StatelessWidget {
  const Slider({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.onChangeEnd,
    this.min,
    this.max,
    this.step,
    this.marks,
    this.disabled,
    this.labelAlwaysOn,
    this.color,
    this.size,
    this.radius,
    this.style,
  }) : variant = SliderVariant.defaults;

  final SliderVariant variant;
  final double? value;
  final double? defaultValue;
  final void Function(double)? onChanged;
  final void Function(double)? onChangeEnd;
  final double? min;
  final double? max;
  final double? step;
  final List<SliderMark>? marks;
  final bool? disabled;
  final bool? labelAlwaysOn;
  final String? color;
  final String? size;
  final BorderRadiusGeometry? radius;
  final SliderStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedOnChangeEnd = onChangeEnd;
    final resolvedMin = min ?? 0.0;
    final resolvedMax = max ?? 100.0;
    final resolvedStep = step ?? 1.0;
    final resolvedMarks = marks;
    final resolvedDisabled = disabled ?? false;
    final resolvedLabelAlwaysOn = labelAlwaysOn ?? false;
    final resolvedColor = color;
    final resolvedSize = size ?? 'md';
    final resolvedRadius = radius ?? inputPillRadius(context);

    const fromProps = SliderStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SliderState();
    final sliderContext = SliderContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      onChangeEnd: resolvedOnChangeEnd,
      min: resolvedMin,
      max: resolvedMax,
      step: resolvedStep,
      marks: resolvedMarks,
      disabled: resolvedDisabled,
      labelAlwaysOn: resolvedLabelAlwaysOn,
      color: resolvedColor,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<SliderDelegate>();
    return delegate.root(sliderContext);
  }
}

enum RangeSliderVariant { defaults }

@immutable
class RangeSliderStyle {
  const RangeSliderStyle();

  RangeSliderStyle copyWith() => this;

  RangeSliderStyle mergeWith(RangeSliderStyle? other) => this;
}

@immutable
class RangeSliderState {
  const RangeSliderState();
}

@immutable
class RangeSliderContext {
  const RangeSliderContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.onChangeEnd,
    required this.min,
    required this.max,
    required this.step,
    required this.minRange,
    this.marks,
    required this.disabled,
    required this.labelAlwaysOn,
    this.color,
    required this.size,
    required this.radius,
  });

  final BuildContext context;
  final RangeSliderStyle style;
  final RangeSliderState state;
  final RangeSliderVariant variant;
  final RangeSliderValue? value;
  final RangeSliderValue? defaultValue;
  final void Function(RangeSliderValue)? onChanged;
  final void Function(RangeSliderValue)? onChangeEnd;
  final double min;
  final double max;
  final double step;
  final double minRange;
  final List<SliderMark>? marks;
  final bool disabled;
  final bool labelAlwaysOn;
  final String? color;
  final String size;
  final BorderRadiusGeometry radius;
}

class RangeSliderRoot {
  const RangeSliderRoot(this._build);

  final Widget Function(RangeSliderContext context) _build;

  Widget call(RangeSliderContext context) => _build(context);
}

abstract class RangeSliderDelegate extends ComponentDelegate {
  const RangeSliderDelegate();

  Widget root(RangeSliderContext context);
}

class RangeSlider extends StatelessWidget {
  const RangeSlider({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.onChangeEnd,
    this.min,
    this.max,
    this.step,
    this.minRange,
    this.marks,
    this.disabled,
    this.labelAlwaysOn,
    this.color,
    this.size,
    this.radius,
    this.style,
  }) : variant = RangeSliderVariant.defaults;

  final RangeSliderVariant variant;
  final RangeSliderValue? value;
  final RangeSliderValue? defaultValue;
  final void Function(RangeSliderValue)? onChanged;
  final void Function(RangeSliderValue)? onChangeEnd;
  final double? min;
  final double? max;
  final double? step;
  final double? minRange;
  final List<SliderMark>? marks;
  final bool? disabled;
  final bool? labelAlwaysOn;
  final String? color;
  final String? size;
  final BorderRadiusGeometry? radius;
  final RangeSliderStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedOnChangeEnd = onChangeEnd;
    final resolvedMin = min ?? 0.0;
    final resolvedMax = max ?? 100.0;
    final resolvedStep = step ?? 1.0;
    final resolvedMinRange = minRange ?? 0.0;
    final resolvedMarks = marks;
    final resolvedDisabled = disabled ?? false;
    final resolvedLabelAlwaysOn = labelAlwaysOn ?? false;
    final resolvedColor = color;
    final resolvedSize = size ?? 'md';
    final resolvedRadius = radius ?? inputPillRadius(context);

    const fromProps = RangeSliderStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = RangeSliderState();
    final rangeSliderContext = RangeSliderContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      onChangeEnd: resolvedOnChangeEnd,
      min: resolvedMin,
      max: resolvedMax,
      step: resolvedStep,
      minRange: resolvedMinRange,
      marks: resolvedMarks,
      disabled: resolvedDisabled,
      labelAlwaysOn: resolvedLabelAlwaysOn,
      color: resolvedColor,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<RangeSliderDelegate>();
    return delegate.root(rangeSliderContext);
  }
}
