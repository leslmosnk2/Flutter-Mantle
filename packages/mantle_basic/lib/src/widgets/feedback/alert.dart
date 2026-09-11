import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/feedback/feedback_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [AlertDelegate]: variant-colored chrome with icon, copy, and close.
class BasicAlertDelegate extends AlertDelegate {
  /// Creates a baseline alert delegate.
  const BasicAlertDelegate();

  @override
  Widget root(AlertContext context) {
    final theme = MantleTheme.of(context.context);
    final scheme = MantleProvider.colorSchemeOf(context.context);
    final scale = theme.scale;
    final colors = _alertColors(context, theme, scheme);
    final padding = theme.spacing.all('md').left * scale;
    final gap = theme.spacing.all('xs').left * scale;
    final iconGap = theme.spacing.all('md').left * scale;
    final fontSize = resolveFontSize(theme, 'sm');
    final titleStyle = TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      height: 1.55,
      color: colors.color,
    );
    final messageColor = _messageColor(context, theme, scheme, colors.color);
    final messageStyle = TextStyle(
      fontSize: fontSize,
      height: 1.55,
      color: messageColor,
    );

    return Semantics(
      container: true,
      liveRegion: true,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: colors.background,
          borderRadius: context.radius,
          border: Border.all(color: colors.border ?? const Color(0x00000000)),
        ),
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: IconTheme.merge(
            data: IconThemeData(color: colors.color, size: 20 * scale),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (context.icon != null) ...[
                  SizedBox(
                    width: 20 * scale,
                    height: 20 * scale,
                    child: Center(child: context.icon),
                  ),
                  SizedBox(width: iconGap),
                ],
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (context.title != null)
                        DefaultTextStyle.merge(
                          style: titleStyle,
                          child: context.title!,
                        ),
                      if (context.title != null && context.child != null)
                        SizedBox(height: gap),
                      if (context.child != null)
                        DefaultTextStyle.merge(
                          style: messageStyle,
                          child: context.child!,
                        ),
                    ],
                  ),
                ),
                if (context.withCloseButton) ...[
                  SizedBox(width: iconGap),
                  CloseButton.transparent(
                    onPressed: context.onClose ?? () {},
                    iconSize: 16 * scale,
                    semanticLabel: context.closeButtonLabel,
                    style: CloseButtonStyle(
                      dimension: 20 * scale,
                      color: colors.color,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

VariantColors _alertColors(
  AlertContext ctx,
  MantleTheme theme,
  MantleColorScheme scheme,
) {
  final variantName = switch (ctx.variant) {
    AlertVariant.defaults || AlertVariant.light => 'light',
    AlertVariant.filled => 'filled',
    AlertVariant.outline => 'outline',
    AlertVariant.transparent => 'transparent',
    AlertVariant.white => 'white',
  };
  return theme.variantColorResolver(
    VariantColorsInput(
      theme: theme,
      variant: variantName,
      colorScheme: scheme,
      color: ctx.color,
      autoContrast: ctx.autoContrast,
    ),
  );
}

Color _messageColor(
  AlertContext ctx,
  MantleTheme theme,
  MantleColorScheme scheme,
  Color? variantColor,
) {
  if (ctx.variant == AlertVariant.filled) {
    return variantColor ?? theme.white;
  }
  if (ctx.variant == AlertVariant.white) {
    return theme.black;
  }
  return brightColor(theme, scheme);
}
