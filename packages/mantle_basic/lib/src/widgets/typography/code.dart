import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_basic/src/widgets/typography/tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [CodeDelegate]: monospace chip.
class BasicCodeDelegate extends CodeDelegate {
  /// Creates a baseline code delegate.
  const BasicCodeDelegate();

  @override
  Widget root(CodeContext context) {
    final theme = MantleTheme.of(context.context);
    final dark = isDarkScheme(context.context);
    final background = context.color == null
        ? (dark ? theme.colors['dark'][6] : theme.colors['gray'][0])
        : paletteColor(context.context, context.color);
    final padding = context.block
        ? EdgeInsets.all(resolveSpacing(theme, 'xs'))
        : EdgeInsets.symmetric(
            horizontal: resolveSpacing(theme, 'xs') / 2,
            vertical: 2 * theme.scale,
          );

    return DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        borderRadius: theme.radius.border('sm'),
      ),
      child: Padding(
        padding: padding,
        child: DefaultTextStyle.merge(
          style: TextStyle(
            fontFamily: theme.typography.fontFamilyMono,
            fontSize: fontSizeToken(theme, 'xs'),
            height: lineHeightToken(theme, 'md'),
            color: textColor(context.context),
          ),
          child: context.child,
        ),
      ),
    );
  }
}
