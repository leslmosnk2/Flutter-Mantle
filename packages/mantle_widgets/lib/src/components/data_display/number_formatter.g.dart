// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_formatter.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum NumberFormatterVariant { defaults }

@immutable
class NumberFormatterStyle {
  const NumberFormatterStyle();

  NumberFormatterStyle copyWith() => this;

  NumberFormatterStyle mergeWith(NumberFormatterStyle? other) => this;
}

@immutable
class NumberFormatterState {
  const NumberFormatterState();
}

@immutable
class NumberFormatterContext {
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

  final BuildContext context;
  final NumberFormatterStyle style;
  final NumberFormatterState state;
  final NumberFormatterVariant variant;
  final num? value;
  final bool allowNegative;
  final int? decimalScale;
  final String decimalSeparator;
  final bool fixedDecimalScale;
  final String prefix;
  final String suffix;
  final ThousandsGroupStyle thousandsGroupStyle;
  final String? thousandSeparator;
}

class NumberFormatterRoot {
  const NumberFormatterRoot(this._build);

  final Widget Function(NumberFormatterContext context) _build;

  Widget call(NumberFormatterContext context) => _build(context);
}

abstract class NumberFormatterDelegate extends ComponentDelegate {
  const NumberFormatterDelegate();

  Widget root(NumberFormatterContext context);
}

class NumberFormatter extends StatelessWidget {
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

  final NumberFormatterVariant variant;
  final num? value;
  final bool? allowNegative;
  final int? decimalScale;
  final String? decimalSeparator;
  final bool? fixedDecimalScale;
  final String? prefix;
  final String? suffix;
  final ThousandsGroupStyle? thousandsGroupStyle;
  final String? thousandSeparator;
  final NumberFormatterStyle? style;

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
