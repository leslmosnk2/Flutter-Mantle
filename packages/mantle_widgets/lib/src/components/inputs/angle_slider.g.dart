// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'angle_slider.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum AngleSliderVariant { defaults }

@immutable
class AngleSliderStyle {
  const AngleSliderStyle();

  AngleSliderStyle copyWith() => this;

  AngleSliderStyle mergeWith(AngleSliderStyle? other) => this;
}

@immutable
class AngleSliderState {
  const AngleSliderState();
}

@immutable
class AngleSliderContext {
  const AngleSliderContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.value,
    required this.defaultValue,
    this.onChanged,
    this.onChangeEnd,
    required this.step,
    required this.size,
    this.thumbSize,
    required this.withLabel,
    required this.disabled,
  });

  final BuildContext context;
  final AngleSliderStyle style;
  final AngleSliderState state;
  final AngleSliderVariant variant;
  final double? value;
  final double defaultValue;
  final void Function(double)? onChanged;
  final void Function(double)? onChangeEnd;
  final double step;
  final double size;
  final double? thumbSize;
  final bool withLabel;
  final bool disabled;
}

class AngleSliderRoot {
  const AngleSliderRoot(this._build);

  final Widget Function(AngleSliderContext context) _build;

  Widget call(AngleSliderContext context) => _build(context);
}

abstract class AngleSliderDelegate extends ComponentDelegate {
  const AngleSliderDelegate();

  Widget root(AngleSliderContext context);
}

class AngleSlider extends StatelessWidget {
  const AngleSlider({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.onChangeEnd,
    this.step,
    this.size,
    this.thumbSize,
    this.withLabel,
    this.disabled,
    this.style,
  }) : variant = AngleSliderVariant.defaults;

  final AngleSliderVariant variant;
  final double? value;
  final double? defaultValue;
  final void Function(double)? onChanged;
  final void Function(double)? onChangeEnd;
  final double? step;
  final double? size;
  final double? thumbSize;
  final bool? withLabel;
  final bool? disabled;
  final AngleSliderStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue ?? 0.0;
    final resolvedOnChanged = onChanged;
    final resolvedOnChangeEnd = onChangeEnd;
    final resolvedStep = step ?? 1.0;
    final resolvedSize = size ?? 60.0;
    final resolvedThumbSize = thumbSize;
    final resolvedWithLabel = withLabel ?? true;
    final resolvedDisabled = disabled ?? false;

    const fromProps = AngleSliderStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AngleSliderState();
    final angleSliderContext = AngleSliderContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      onChangeEnd: resolvedOnChangeEnd,
      step: resolvedStep,
      size: resolvedSize,
      thumbSize: resolvedThumbSize,
      withLabel: resolvedWithLabel,
      disabled: resolvedDisabled,
    );
    final delegate = MantleTheme.of(context).delegate<AngleSliderDelegate>();
    return delegate.root(angleSliderContext);
  }
}
