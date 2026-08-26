import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_basic/src/widgets/typography/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [BlockquoteDelegate]: start border, translucent fill, cite, icon.
class BasicBlockquoteDelegate extends BlockquoteDelegate {
  /// Creates a baseline blockquote delegate.
  const BasicBlockquoteDelegate();

  @override
  Widget root(BlockquoteContext context) {
    final theme = MantleTheme.of(context.context);
    final dark = isDarkScheme(context.context);
    final border = paletteColor(context.context, context.color);
    final fill = border.withValues(alpha: dark ? 0.06 : 0.07);
    final radius = resolveRadius(context.radius, context.context);
    final xl = resolveSpacing(theme, 'xl');
    final hasIcon = context.icon != null;
    final iconOffset = context.iconSize / 2;

    final quote = DecoratedBox(
      decoration: BoxDecoration(
        color: fill,
        border: BorderDirectional(
          start: BorderSide(color: border, width: 3),
        ),
        borderRadius: BorderRadiusDirectional.only(
          topEnd: radius.topRight,
          bottomEnd: radius.bottomRight,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          38 * theme.scale,
          xl,
          38 * theme.scale,
          xl,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            DefaultTextStyle.merge(
              style: TextStyle(
                fontSize: fontSizeToken(theme, 'md'),
                height: lineHeightToken(theme, 'md'),
                color: textColor(context.context),
              ),
              child: context.child,
            ),
            if (context.cite != null) ...[
              SizedBox(height: resolveSpacing(theme, 'md')),
              DefaultTextStyle.merge(
                style: TextStyle(
                  fontSize: fontSizeToken(theme, 'md') * 0.85,
                  color: textColor(context.context).withValues(alpha: 0.6),
                ),
                child: context.cite!,
              ),
            ],
          ],
        ),
      ),
    );

    if (!hasIcon) {
      return quote;
    }

    return Padding(
      padding: EdgeInsets.only(top: iconOffset, left: iconOffset),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          quote,
          PositionedDirectional(
            start: -iconOffset,
            top: -iconOffset,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: bodyColor(context.context),
                shape: BoxShape.circle,
              ),
              child: SizedBox(
                width: context.iconSize,
                height: context.iconSize,
                child: Center(
                  child: IconTheme(
                    data: IconThemeData(
                      color: border,
                      size: context.iconSize * 0.45,
                    ),
                    child: DefaultTextStyle.merge(
                      style: TextStyle(
                        color: border,
                        fontSize: context.iconSize * 0.4,
                      ),
                      child: context.icon!,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
