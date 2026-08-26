import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [NumberFormatterDelegate]: formatted [Text].
class BasicNumberFormatterDelegate extends NumberFormatterDelegate {
  /// Creates a baseline number-formatter delegate.
  const BasicNumberFormatterDelegate();

  @override
  Widget root(NumberFormatterContext context) {
    final value = context.value;
    if (value == null) {
      return const SizedBox.shrink();
    }
    return Text(
      formatMantleNumber(
        value: value,
        allowNegative: context.allowNegative,
        decimalScale: context.decimalScale,
        decimalSeparator: context.decimalSeparator,
        fixedDecimalScale: context.fixedDecimalScale,
        prefix: context.prefix,
        suffix: context.suffix,
        thousandsGroupStyle: context.thousandsGroupStyle,
        thousandSeparator: context.thousandSeparator,
      ),
    );
  }
}
