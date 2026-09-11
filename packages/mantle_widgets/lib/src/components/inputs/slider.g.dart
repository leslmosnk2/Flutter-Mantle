// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Slider].
enum SliderVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Slider].
@immutable
class SliderStyle {
  /// Creates a [SliderStyle].
  const SliderStyle();

  /// Returns a copy of this [SliderStyle] with selected fields replaced.
  SliderStyle copyWith() => this;

  /// Merges [other] over this [SliderStyle]; null fields keep this value.
  SliderStyle mergeWith(SliderStyle? other) => this;
}

/// Resolved interaction state for [Slider].
@immutable
class SliderState {
  /// Creates a [SliderState].
  const SliderState();
}

/// Values passed to [SliderDelegate] slots during build.
@immutable
class SliderContext {
  /// Creates a [SliderContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final SliderStyle style;

  /// Resolved interaction state for this build.
  final SliderState state;

  /// The visual variant selected by the constructor.
  final SliderVariant variant;

  /// The controlled value.
  final double? value;

  /// Initial value when [value] is omitted.
  final double? defaultValue;

  /// Called when the value changes.
  final void Function(double)? onChanged;

  /// Called when change end.
  final void Function(double)? onChangeEnd;

  /// The min.
  final double min;

  /// The max.
  final double max;

  /// The step.
  final double step;

  /// The marks.
  final List<SliderMark>? marks;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether label always on.
  final bool labelAlwaysOn;

  /// Foreground or accent color.
  final String? color;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class SliderRoot {
  /// Creates a [SliderRoot] from a builder function.
  const SliderRoot(this._build);

  final Widget Function(SliderContext context) _build;

  /// Invokes this slot with [context].
  Widget call(SliderContext context) => _build(context);
}

/// Theme-owned composition slots for [Slider].
abstract class SliderDelegate extends ComponentDelegate {
  /// Creates a [SliderDelegate].
  const SliderDelegate();

  /// Builds the composition root.
  Widget root(SliderContext context);
}

/// A [Slider] widget resolved through [SliderDelegate].
class Slider extends StatelessWidget {
  /// Creates a [Slider].
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

  /// The visual variant selected by the constructor.
  final SliderVariant variant;

  /// The controlled value.
  final double? value;

  /// Initial value when [value] is omitted.
  final double? defaultValue;

  /// Called when the value changes.
  final void Function(double)? onChanged;

  /// Called when change end.
  final void Function(double)? onChangeEnd;

  /// The min.
  final double? min;

  /// The max.
  final double? max;

  /// The step.
  final double? step;

  /// The marks.
  final List<SliderMark>? marks;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether label always on.
  final bool? labelAlwaysOn;

  /// Foreground or accent color.
  final String? color;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final SliderStyle? style;

  /// Resolves properties and builds via [SliderDelegate].
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

/// Visual variants of [RangeSlider].
enum RangeSliderVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [RangeSlider].
@immutable
class RangeSliderStyle {
  /// Creates a [RangeSliderStyle].
  const RangeSliderStyle();

  /// Returns a copy of this [RangeSliderStyle] with selected fields replaced.
  RangeSliderStyle copyWith() => this;

  /// Merges [other] over this [RangeSliderStyle]; null fields keep this value.
  RangeSliderStyle mergeWith(RangeSliderStyle? other) => this;
}

/// Resolved interaction state for [RangeSlider].
@immutable
class RangeSliderState {
  /// Creates a [RangeSliderState].
  const RangeSliderState();
}

/// Values passed to [RangeSliderDelegate] slots during build.
@immutable
class RangeSliderContext {
  /// Creates a [RangeSliderContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final RangeSliderStyle style;

  /// Resolved interaction state for this build.
  final RangeSliderState state;

  /// The visual variant selected by the constructor.
  final RangeSliderVariant variant;

  /// The controlled value.
  final RangeSliderValue? value;

  /// Initial value when [value] is omitted.
  final RangeSliderValue? defaultValue;

  /// Called when the value changes.
  final void Function(RangeSliderValue)? onChanged;

  /// Called when change end.
  final void Function(RangeSliderValue)? onChangeEnd;

  /// The min.
  final double min;

  /// The max.
  final double max;

  /// The step.
  final double step;

  /// The min range.
  final double minRange;

  /// The marks.
  final List<SliderMark>? marks;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether label always on.
  final bool labelAlwaysOn;

  /// Foreground or accent color.
  final String? color;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class RangeSliderRoot {
  /// Creates a [RangeSliderRoot] from a builder function.
  const RangeSliderRoot(this._build);

  final Widget Function(RangeSliderContext context) _build;

  /// Invokes this slot with [context].
  Widget call(RangeSliderContext context) => _build(context);
}

/// Theme-owned composition slots for [RangeSlider].
abstract class RangeSliderDelegate extends ComponentDelegate {
  /// Creates a [RangeSliderDelegate].
  const RangeSliderDelegate();

  /// Builds the composition root.
  Widget root(RangeSliderContext context);
}

/// A [RangeSlider] widget resolved through [RangeSliderDelegate].
class RangeSlider extends StatelessWidget {
  /// Creates a [RangeSlider].
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

  /// The visual variant selected by the constructor.
  final RangeSliderVariant variant;

  /// The controlled value.
  final RangeSliderValue? value;

  /// Initial value when [value] is omitted.
  final RangeSliderValue? defaultValue;

  /// Called when the value changes.
  final void Function(RangeSliderValue)? onChanged;

  /// Called when change end.
  final void Function(RangeSliderValue)? onChangeEnd;

  /// The min.
  final double? min;

  /// The max.
  final double? max;

  /// The step.
  final double? step;

  /// The min range.
  final double? minRange;

  /// The marks.
  final List<SliderMark>? marks;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether label always on.
  final bool? labelAlwaysOn;

  /// Foreground or accent color.
  final String? color;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final RangeSliderStyle? style;

  /// Resolves properties and builds via [RangeSliderDelegate].
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
