// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'angle_slider.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [AngleSlider].
enum AngleSliderVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [AngleSlider].
@immutable
class AngleSliderStyle {
  /// Creates an [AngleSliderStyle].
  const AngleSliderStyle();

  /// Returns a copy of this [AngleSliderStyle] with selected fields replaced.
  AngleSliderStyle copyWith() => this;

  /// Merges [other] over this [AngleSliderStyle]; null fields keep this value.
  AngleSliderStyle mergeWith(AngleSliderStyle? other) => this;
}

/// Resolved interaction state for [AngleSlider].
@immutable
class AngleSliderState {
  /// Creates an [AngleSliderState].
  const AngleSliderState();
}

/// Values passed to [AngleSliderDelegate] slots during build.
@immutable
class AngleSliderContext {
  /// Creates an [AngleSliderContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AngleSliderStyle style;

  /// Resolved interaction state for this build.
  final AngleSliderState state;

  /// The visual variant selected by the constructor.
  final AngleSliderVariant variant;

  /// The controlled value.
  final double? value;

  /// Initial value when [value] is omitted.
  final double defaultValue;

  /// Called when the value changes.
  final void Function(double)? onChanged;

  /// Called when change end.
  final void Function(double)? onChangeEnd;

  /// The step.
  final double step;

  /// Size token.
  final double size;

  /// The thumb size.
  final double? thumbSize;

  /// Whether with label.
  final bool withLabel;

  /// Whether interaction is disabled.
  final bool disabled;
}

/// Builder for the root slot.
class AngleSliderRoot {
  /// Creates an [AngleSliderRoot] from a builder function.
  const AngleSliderRoot(this._build);

  final Widget Function(AngleSliderContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AngleSliderContext context) => _build(context);
}

/// Theme-owned composition slots for [AngleSlider].
abstract class AngleSliderDelegate extends ComponentDelegate {
  /// Creates an [AngleSliderDelegate].
  const AngleSliderDelegate();

  /// Builds the composition root.
  Widget root(AngleSliderContext context);
}

/// An [AngleSlider] widget resolved through [AngleSliderDelegate].
class AngleSlider extends StatelessWidget {
  /// Creates an [AngleSlider].
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

  /// The visual variant selected by the constructor.
  final AngleSliderVariant variant;

  /// The controlled value.
  final double? value;

  /// Initial value when [value] is omitted.
  final double? defaultValue;

  /// Called when the value changes.
  final void Function(double)? onChanged;

  /// Called when change end.
  final void Function(double)? onChangeEnd;

  /// The step.
  final double? step;

  /// Size token.
  final double? size;

  /// The thumb size.
  final double? thumbSize;

  /// Whether with label.
  final bool? withLabel;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Style overrides merged over theme defaults.
  final AngleSliderStyle? style;

  /// Resolves properties and builds via [AngleSliderDelegate].
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
