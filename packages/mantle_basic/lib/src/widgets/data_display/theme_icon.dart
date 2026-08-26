import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/data_display/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [ThemeIconDelegate]: colored icon holder.
class BasicThemeIconDelegate extends ThemeIconDelegate {
  /// Creates a baseline theme-icon delegate.
  const BasicThemeIconDelegate();

  @override
  Widget root(ThemeIconContext context) {
    final theme = MantleTheme.of(context.context);
    final size = themeIconSize(context.size, theme.scale);
    final colors = resolveAppearance(
      context.context,
      appearance: context.appearance,
      color: context.color,
      autoContrast: context.autoContrast,
    );
    final radius = resolveRadius(context.radius, context.context);
    final foreground = colors.color ?? theme.white;
    return SizedBox(
      width: size,
      height: size,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: colors.background,
          borderRadius: radius,
          border: Border.all(color: colors.border ?? const Color(0x00000000)),
        ),
        child: Center(
          child: IconTheme.merge(
            data: IconThemeData(color: foreground, size: size * 0.55),
            child: DefaultTextStyle.merge(
              style: TextStyle(color: foreground),
              child: context.child,
            ),
          ),
        ),
      ),
    );
  }
}
