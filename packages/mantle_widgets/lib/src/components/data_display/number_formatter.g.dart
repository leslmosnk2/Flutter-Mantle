// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_formatter.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [NumberFormatter].
enum NumberFormatterVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [NumberFormatter].
@immutable
class NumberFormatterStyle {
  /// Creates a [NumberFormatterStyle].
  const NumberFormatterStyle();

  /// Returns a copy of this [NumberFormatterStyle] with selected fields replaced.
  NumberFormatterStyle copyWith() => this;

  /// Merges [other] over this [NumberFormatterStyle]; null fields keep this value.
  NumberFormatterStyle mergeWith(NumberFormatterStyle? other) => this;
}

/// Resolved interaction state for [NumberFormatter].
@immutable
class NumberFormatterState {
  /// Creates a [NumberFormatterState].
  const NumberFormatterState();
}

/// Values passed to [NumberFormatterDelegate] slots during build.
@immutable
class NumberFormatterContext {
  /// Creates a [NumberFormatterContext].
  const NumberFormatterContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.value,
    required this.allowNegative,
    this.decimalScale,
    required this.decimalSeparator,
    required this.fixedDecimalScale,
    required this.prefix,
    required this.suffix,
    required this.thousandsGroupStyle,
    this.thousandSeparator,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final NumberFormatterStyle style;

  /// Resolved interaction state for this build.
  final NumberFormatterState state;

  /// The visual variant selected by the constructor.
  final NumberFormatterVariant variant;

  /// The controlled value.
  final num? value;

  /// Whether allow negative.
  final bool allowNegative;

  /// The decimal scale.
  final int? decimalScale;

  /// The decimal separator.
  final String decimalSeparator;

  /// Whether fixed decimal scale.
  final bool fixedDecimalScale;

  /// Widget placed before the main content.
  final String prefix;

  /// Widget placed after the main content.
  final String suffix;

  /// The thousands group style.
  final ThousandsGroupStyle thousandsGroupStyle;

  /// The thousand separator.
  final String? thousandSeparator;
}

/// Builder for the root slot.
class NumberFormatterRoot {
  /// Creates a [NumberFormatterRoot] from a builder function.
  const NumberFormatterRoot(this._build);

  final Widget Function(NumberFormatterContext context) _build;

  /// Invokes this slot with [context].
  Widget call(NumberFormatterContext context) => _build(context);
}

/// Theme-owned composition slots for [NumberFormatter].
abstract class NumberFormatterDelegate extends ComponentDelegate {
  /// Creates a [NumberFormatterDelegate].
  const NumberFormatterDelegate();

  /// Builds the composition root.
  Widget root(NumberFormatterContext context);
}

/// A [NumberFormatter] widget resolved through [NumberFormatterDelegate].
class NumberFormatter extends StatelessWidget {
  /// Creates a [NumberFormatter].
  const NumberFormatter({
    super.key,
    this.value,
    this.allowNegative,
    this.decimalScale,
    this.decimalSeparator,
    this.fixedDecimalScale,
    this.prefix,
    this.suffix,
    this.thousandsGroupStyle,
    this.thousandSeparator,
    this.style,
  }) : variant = NumberFormatterVariant.defaults;

  /// The visual variant selected by the constructor.
  final NumberFormatterVariant variant;

  /// The controlled value.
  final num? value;

  /// Whether allow negative.
  final bool? allowNegative;

  /// The decimal scale.
  final int? decimalScale;

  /// The decimal separator.
  final String? decimalSeparator;

  /// Whether fixed decimal scale.
  final bool? fixedDecimalScale;

  /// Widget placed before the main content.
  final String? prefix;

  /// Widget placed after the main content.
  final String? suffix;

  /// The thousands group style.
  final ThousandsGroupStyle? thousandsGroupStyle;

  /// The thousand separator.
  final String? thousandSeparator;

  /// Style overrides merged over theme defaults.
  final NumberFormatterStyle? style;

  /// Resolves properties and builds via [NumberFormatterDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedAllowNegative = allowNegative ?? true;
    final resolvedDecimalScale = decimalScale;
    final resolvedDecimalSeparator = decimalSeparator ?? '.';
    final resolvedFixedDecimalScale = fixedDecimalScale ?? false;
    final resolvedPrefix = prefix ?? '';
    final resolvedSuffix = suffix ?? '';
    final resolvedThousandsGroupStyle =
        thousandsGroupStyle ?? ThousandsGroupStyle.thousand;
    final resolvedThousandSeparator = thousandSeparator;

    const fromProps = NumberFormatterStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = NumberFormatterState();
    final numberFormatterContext = NumberFormatterContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      allowNegative: resolvedAllowNegative,
      decimalScale: resolvedDecimalScale,
      decimalSeparator: resolvedDecimalSeparator,
      fixedDecimalScale: resolvedFixedDecimalScale,
      prefix: resolvedPrefix,
      suffix: resolvedSuffix,
      thousandsGroupStyle: resolvedThousandsGroupStyle,
      thousandSeparator: resolvedThousandSeparator,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<NumberFormatterDelegate>();
    return delegate.root(numberFormatterContext);
  }
}
