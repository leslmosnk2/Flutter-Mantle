import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/feedback/feedback_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MNotificationDelegate]: card with color line or icon.
class BasicMNotificationDelegate extends MNotificationDelegate {
  /// Creates a baseline notification delegate.
  const BasicMNotificationDelegate();

  @override
  Widget root(MNotificationContext context) {
    final theme = MantleTheme.of(context.context);
    final scheme = MantleProvider.colorSchemeOf(context.context);
    final scale = theme.scale;
    final accent = resolveFilledColor(theme, scheme, context.color);
    final isDark = scheme == MantleColorScheme.dark;
    final background = isDark ? theme.colors['dark'][6] : theme.white;
    final padding = theme.spacing.all('xs').left * scale;
    final iconGap = theme.spacing.all('md').left * scale;
    final fontSize = resolveFontSize(theme, 'sm');
    final lineHeight = theme.typography.lineHeight.getOrNull('sm') ?? 1.45;
    final hasIcon = context.icon != null || context.loading;
    final titleColor = isDark ? theme.white : theme.colors['gray'][9];
    final messageColor = context.title != null
        ? (isDark ? theme.colors['dark'][2] : theme.colors['gray'][6])
        : (isDark ? theme.colors['dark'][0] : theme.black);
    final borderColor = context.withBorder
        ? (isDark ? theme.colors['dark'][4] : theme.colors['gray'][3])
        : const Color(0x00000000);

    return Semantics(
      container: true,
      liveRegion: true,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          borderRadius: context.radius,
          border: Border.all(color: borderColor),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0D000000),
              blurRadius: 3,
              offset: Offset(0, 1),
            ),
            BoxShadow(
              color: Color(0x1A000000),
              blurRadius: 15,
              offset: Offset(0, 10),
              spreadRadius: -5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: context.radius is BorderRadius
              ? context.radius as BorderRadius
              : BorderRadius.zero,
          child: Stack(
            children: [
              if (!hasIcon)
                Positioned(
                  left: 4 * scale,
                  top: 8 * scale,
                  bottom: 8 * scale,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: accent,
                      borderRadius: context.radius,
                    ),
                    child: SizedBox(width: 6 * scale),
                  ),
                ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  hasIcon ? padding : 22 * scale,
                  padding,
                  padding,
                  padding,
                ),
                child: Row(
                  children: [
                    if (context.loading) ...[
                      Loader(size: 'sm', color: context.color),
                      SizedBox(width: iconGap),
                    ] else if (context.icon != null) ...[
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: accent,
                          shape: BoxShape.circle,
                        ),
                        child: SizedBox.square(
                          dimension: 28 * scale,
                          child: IconTheme.merge(
                            data: IconThemeData(
                              color: theme.white,
                              size: 16 * scale,
                            ),
                            child: Center(child: context.icon),
                          ),
                        ),
                      ),
                      SizedBox(width: iconGap),
                    ],
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (context.title != null) ...[
                            DefaultTextStyle.merge(
                              style: TextStyle(
                                fontSize: fontSize,
                                height: lineHeight,
                                fontWeight: FontWeight.w500,
                                color: titleColor,
                              ),
                              child: context.title!,
                            ),
                            SizedBox(height: 2 * scale),
                          ],
                          if (context.message != null)
                            DefaultTextStyle.merge(
                              style: TextStyle(
                                fontSize: fontSize,
                                height: lineHeight,
                                color: messageColor,
                              ),
                              child: context.message!,
                            ),
                        ],
                      ),
                    ),
                    if (context.withClose) ...[
                      SizedBox(width: theme.spacing.all('xs').left * scale),
                      CloseButton(
                        onPressed: context.onClose ?? () {},
                        iconSize: 16 * scale,
                        semanticLabel: 'Hide notification',
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
