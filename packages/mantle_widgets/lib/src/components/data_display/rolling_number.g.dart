// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rolling_number.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum RollingNumberVariant { defaults }

@immutable
class RollingNumberStyle {
  const RollingNumberStyle();

  RollingNumberStyle copyWith() => this;

  RollingNumberStyle mergeWith(RollingNumberStyle? other) => this;
}

@immutable
class RollingNumberState {
  const RollingNumberState();
}

@immutable
class RollingNumberContext {
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

  final BuildContext context;
  final RollingNumberStyle style;
  final RollingNumberState state;
  final RollingNumberVariant variant;
  final num value;
  final String prefix;
  final String suffix;
  final int? decimalScale;
  final bool fixedDecimalScale;
  final String? thousandSeparator;
  final String decimalSeparator;
  final int animationDuration;
  final double? fontSize;
}

class RollingNumberRoot {
  const RollingNumberRoot(this._build);

  final Widget Function(RollingNumberContext context) _build;

  Widget call(RollingNumberContext context) => _build(context);
}

abstract class RollingNumberDelegate extends ComponentDelegate {
  const RollingNumberDelegate();

  Widget root(RollingNumberContext context);
}

class RollingNumber extends StatelessWidget {
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

  final RollingNumberVariant variant;
  final num value;
  final String? prefix;
  final String? suffix;
  final int? decimalScale;
  final bool? fixedDecimalScale;
  final String? thousandSeparator;
  final String? decimalSeparator;
  final int? animationDuration;
  final double? fontSize;
  final RollingNumberStyle? style;

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
