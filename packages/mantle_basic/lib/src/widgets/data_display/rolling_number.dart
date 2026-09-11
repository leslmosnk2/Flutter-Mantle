import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [RollingNumberDelegate]: formatted text with a cross-fade.
class BasicRollingNumberDelegate extends RollingNumberDelegate {
  /// Creates a baseline rolling-number delegate.
  const BasicRollingNumberDelegate();

  @override
  Widget root(RollingNumberContext context) {
    final theme = MantleTheme.of(context.context);
    final text = formatMantleNumber(
      value: context.value,
      decimalScale: context.decimalScale,
      decimalSeparator: context.decimalSeparator,
      fixedDecimalScale: context.fixedDecimalScale,
      prefix: context.prefix,
      suffix: context.suffix,
      thousandSeparator: context.thousandSeparator,
    );
    final duration = Duration(milliseconds: context.animationDuration);
    final reduced = theme.respectReducedMotion;
    return AnimatedSwitcher(
      duration: reduced ? Duration.zero : duration,
      child: Text(
        text,
        key: ValueKey<String>(text),
        style: TextStyle(
          fontSize: context.fontSize,
          fontWeight: FontWeight.w600,
          fontFeatures: const [FontFeature.tabularFigures()],
        ),
      ),
    );
  }
}
