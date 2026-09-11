// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rolling_number.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [RollingNumber].
enum RollingNumberVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [RollingNumber].
@immutable
class RollingNumberStyle {
  /// Creates a [RollingNumberStyle].
  const RollingNumberStyle();

  /// Returns a copy of this [RollingNumberStyle] with selected fields replaced.
  RollingNumberStyle copyWith() => this;

  /// Merges [other] over this [RollingNumberStyle]; null fields keep this value.
  RollingNumberStyle mergeWith(RollingNumberStyle? other) => this;
}

/// Resolved interaction state for [RollingNumber].
@immutable
class RollingNumberState {
  /// Creates a [RollingNumberState].
  const RollingNumberState();
}

/// Values passed to [RollingNumberDelegate] slots during build.
@immutable
class RollingNumberContext {
  /// Creates a [RollingNumberContext].
  const RollingNumberContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    required this.prefix,
    required this.suffix,
    this.decimalScale,
    required this.fixedDecimalScale,
    this.thousandSeparator,
    required this.decimalSeparator,
    required this.animationDuration,
    this.fontSize,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final RollingNumberStyle style;

  /// Resolved interaction state for this build.
  final RollingNumberState state;

  /// The visual variant selected by the constructor.
  final RollingNumberVariant variant;

  /// The controlled value.
  final num value;

  /// Widget placed before the main content.
  final String prefix;

  /// Widget placed after the main content.
  final String suffix;

  /// The decimal scale.
  final int? decimalScale;

  /// Whether fixed decimal scale.
  final bool fixedDecimalScale;

  /// The thousand separator.
  final String? thousandSeparator;

  /// The decimal separator.
  final String decimalSeparator;

  /// The animation duration.
  final int animationDuration;

  /// Font size in logical pixels.
  final double? fontSize;
}

/// Builder for the root slot.
class RollingNumberRoot {
  /// Creates a [RollingNumberRoot] from a builder function.
  const RollingNumberRoot(this._build);

  final Widget Function(RollingNumberContext context) _build;

  /// Invokes this slot with [context].
  Widget call(RollingNumberContext context) => _build(context);
}

/// Theme-owned composition slots for [RollingNumber].
abstract class RollingNumberDelegate extends ComponentDelegate {
  /// Creates a [RollingNumberDelegate].
  const RollingNumberDelegate();

  /// Builds the composition root.
  Widget root(RollingNumberContext context);
}

/// A [RollingNumber] widget resolved through [RollingNumberDelegate].
class RollingNumber extends StatelessWidget {
  /// Creates a [RollingNumber].
  const RollingNumber({
    super.key,
    required this.value,
    this.prefix,
    this.suffix,
    this.decimalScale,
    this.fixedDecimalScale,
    this.thousandSeparator,
    this.decimalSeparator,
    this.animationDuration,
    this.fontSize,
    this.style,
  }) : variant = RollingNumberVariant.defaults;

  /// The visual variant selected by the constructor.
  final RollingNumberVariant variant;

  /// The controlled value.
  final num value;

  /// Widget placed before the main content.
  final String? prefix;

  /// Widget placed after the main content.
  final String? suffix;

  /// The decimal scale.
  final int? decimalScale;

  /// Whether fixed decimal scale.
  final bool? fixedDecimalScale;

  /// The thousand separator.
  final String? thousandSeparator;

  /// The decimal separator.
  final String? decimalSeparator;

  /// The animation duration.
  final int? animationDuration;

  /// Font size in logical pixels.
  final double? fontSize;

  /// Style overrides merged over theme defaults.
  final RollingNumberStyle? style;

  /// Resolves properties and builds via [RollingNumberDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedPrefix = prefix ?? '';
    final resolvedSuffix = suffix ?? '';
    final resolvedDecimalScale = decimalScale;
    final resolvedFixedDecimalScale = fixedDecimalScale ?? false;
    final resolvedThousandSeparator = thousandSeparator;
    final resolvedDecimalSeparator = decimalSeparator ?? '.';
    final resolvedAnimationDuration = animationDuration ?? 600;
    final resolvedFontSize = fontSize;

    const fromProps = RollingNumberStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = RollingNumberState();
    final rollingNumberContext = RollingNumberContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      prefix: resolvedPrefix,
      suffix: resolvedSuffix,
      decimalScale: resolvedDecimalScale,
      fixedDecimalScale: resolvedFixedDecimalScale,
      thousandSeparator: resolvedThousandSeparator,
      decimalSeparator: resolvedDecimalSeparator,
      animationDuration: resolvedAnimationDuration,
      fontSize: resolvedFontSize,
    );
    final delegate = MantleTheme.of(context).delegate<RollingNumberDelegate>();
    return delegate.root(rollingNumberContext);
  }
}
