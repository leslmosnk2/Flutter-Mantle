import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/typography/tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [TypographyDelegate]: inherited body size and line-height.
class BasicTypographyDelegate extends TypographyDelegate {
  /// Creates a baseline typography-provider delegate.
  const BasicTypographyDelegate();

  @override
  Widget root(TypographyContext context) {
    final theme = MantleTheme.of(context.context);
    final family = theme.typography.fontFamily;
    final style = TextStyle(
      fontFamily: family.isEmpty ? null : family,
      fontSize: fontSizeToken(theme, 'md'),
      height: lineHeightToken(theme, 'md'),
      color: textColor(context.context),
    );
    return TypographyScope(
      textStyle: style,
      child: DefaultTextStyle.merge(
        style: style,
        child: context.child,
      ),
    );
  }
}
