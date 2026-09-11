// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'semi_circle_progress.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [SemiCircleProgress].
enum SemiCircleProgressVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [SemiCircleProgress].
@immutable
class SemiCircleProgressStyle {
  /// Creates a [SemiCircleProgressStyle].
  const SemiCircleProgressStyle();

  /// Returns a copy of this [SemiCircleProgressStyle] with selected fields replaced.
  SemiCircleProgressStyle copyWith() => this;

  /// Merges [other] over this [SemiCircleProgressStyle]; null fields keep this value.
  SemiCircleProgressStyle mergeWith(SemiCircleProgressStyle? other) => this;
}

/// Resolved interaction state for [SemiCircleProgress].
@immutable
class SemiCircleProgressState {
  /// Creates a [SemiCircleProgressState].
  const SemiCircleProgressState();
}

/// Values passed to [SemiCircleProgressDelegate] slots during build.
@immutable
class SemiCircleProgressContext {
  /// Creates a [SemiCircleProgressContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final SemiCircleProgressStyle style;

  /// Resolved interaction state for this build.
  final SemiCircleProgressState state;

  /// The visual variant selected by the constructor.
  final SemiCircleProgressVariant variant;

  /// The controlled value.
  final double value;

  /// The label.
  final Widget? label;

  /// The fill direction.
  final SemiCircleFillDirection fillDirection;

  /// The orientation.
  final SemiCircleOrientation orientation;

  /// The label position.
  final SemiCircleLabelPosition labelPosition;

  /// Size token.
  final double size;

  /// The thickness.
  final double thickness;

  /// The filled segment color.
  final String? filledSegmentColor;

  /// The empty segment color.
  final String? emptySegmentColor;
}

/// Builder for the root slot.
class SemiCircleProgressRoot {
  /// Creates a [SemiCircleProgressRoot] from a builder function.
  const SemiCircleProgressRoot(this._build);

  final Widget Function(SemiCircleProgressContext context) _build;

  /// Invokes this slot with [context].
  Widget call(SemiCircleProgressContext context) => _build(context);
}

/// Theme-owned composition slots for [SemiCircleProgress].
abstract class SemiCircleProgressDelegate extends ComponentDelegate {
  /// Creates a [SemiCircleProgressDelegate].
  const SemiCircleProgressDelegate();

  /// Builds the composition root.
  Widget root(SemiCircleProgressContext context);
}

/// A [SemiCircleProgress] widget resolved through [SemiCircleProgressDelegate].
class SemiCircleProgress extends StatelessWidget {
  /// Creates a [SemiCircleProgress].
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

  /// The visual variant selected by the constructor.
  final SemiCircleProgressVariant variant;

  /// The controlled value.
  final double value;

  /// The label.
  final Widget? label;

  /// The fill direction.
  final SemiCircleFillDirection? fillDirection;

  /// The orientation.
  final SemiCircleOrientation? orientation;

  /// The label position.
  final SemiCircleLabelPosition? labelPosition;

  /// Size token.
  final double? size;

  /// The thickness.
  final double? thickness;

  /// The filled segment color.
  final String? filledSegmentColor;

  /// The empty segment color.
  final String? emptySegmentColor;

  /// Style overrides merged over theme defaults.
  final SemiCircleProgressStyle? style;

  /// Resolves properties and builds via [SemiCircleProgressDelegate].
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
