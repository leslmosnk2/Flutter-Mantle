import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/data_display/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [BadgeDelegate]: uppercase chip.
class BasicBadgeDelegate extends BadgeDelegate {
  /// Creates a baseline badge delegate.
  const BasicBadgeDelegate();

  @override
  Widget root(BadgeContext context) {
    final theme = MantleTheme.of(context.context);
    final metrics = badgeMetrics(context.size, theme.scale);
    final colors = resolveAppearance(
      context.context,
      appearance: context.appearance,
      color: context.color,
      autoContrast: context.autoContrast,
    );
    final isDot = context.appearance == 'dot';
    final background = isDot
        ? (isDarkScheme(context.context)
              ? theme.colors['dark'][5]
              : theme.white)
        : colors.background;
    final foreground = isDot ? textColor(context.context) : colors.color;
    final borderColor = isDot
        ? (isDarkScheme(context.context)
              ? theme.colors['dark'][5]
              : theme.colors['gray'][4])
        : colors.border ?? const Color(0x00000000);
    final radius = context.circle
        ? BorderRadius.circular(metrics.height)
        : resolveRadius(context.radius, context.context);
    final sectionGap = theme.spacing.all('xs').left * theme.scale / 2;

    return SizedBox(
      height: metrics.height,
      width: context.circle
          ? metrics.height
          : (context.fullWidth ? double.infinity : null),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          borderRadius: radius,
          border: Border.all(color: borderColor),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.circle ? 2 : metrics.paddingX,
          ),
          child: Row(
            mainAxisSize: context.fullWidth
                ? MainAxisSize.max
                : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isDot) ...[
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: paletteColor(context.context, context.color),
                    shape: BoxShape.circle,
                  ),
                  child: SizedBox(
                    width: metrics.height / 3.4,
                    height: metrics.height / 3.4,
                  ),
                ),
                SizedBox(width: sectionGap),
              ] else if (context.leftSection != null) ...[
                context.leftSection!,
                SizedBox(width: sectionGap),
              ],
              Flexible(
                child: DefaultTextStyle.merge(
                  style: TextStyle(
                    color: foreground,
                    fontSize: metrics.fontSize,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.25,
                    height: 1,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  child: context.child,
                ),
              ),
              if (context.rightSection != null) ...[
                SizedBox(width: sectionGap),
                context.rightSection!,
              ],
            ],
          ),
        ),
      ),
    );
  }
}
