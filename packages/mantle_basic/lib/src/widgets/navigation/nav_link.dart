import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_basic/src/widgets/navigation/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/navigation.dart';

/// Baseline [NavLinkDelegate]: a full-width navigation row.
class BasicNavLinkDelegate extends NavLinkDelegate {
  /// Creates a baseline nav-link delegate.
  const BasicNavLinkDelegate();

  @override
  Widget root(NavLinkContext context) {
    final theme = MantleTheme.of(context.context);
    final nested = context.children ?? const <Widget>[];
    final hasChildren = nested.isNotEmpty;
    final gap = resolveSpacing(theme, 'sm');
    final indent = resolveSpacing(theme, context.childrenOffset);
    final colors = resolveVariantColors(
      context.context,
      variant: 'light',
      color: context.color,
    );
    final active = context.active;
    final disabled = context.disabled;

    final foreground = active
        ? (colors.color ?? schemeForeground(context.context))
        : schemeForeground(context.context);
    final background = active
        ? (colors.background ?? const Color(0x00000000))
        : const Color(0x00000000);

    void handleTap() {
      if (disabled) {
        return;
      }
      context.onTap?.call();
      if (hasChildren) {
        context.onOpenedChange?.call(!context.opened);
      }
    }

    final row = GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: disabled ? null : handleTap,
      child: Opacity(
        opacity: disabled ? 0.4 : 1,
        child: DecoratedBox(
          decoration: BoxDecoration(color: background),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: resolveSpacing(theme, 'sm'),
            ),
            child: Row(
              children: [
                if (context.leftSection != null) ...[
                  IconTheme.merge(
                    data: IconThemeData(color: foreground, size: 18),
                    child: context.leftSection!,
                  ),
                  SizedBox(width: gap),
                ],
                Expanded(
                  child: DefaultTextStyle.merge(
                    style: TextStyle(
                      color: foreground,
                      fontSize: resolveFontSize(theme, 'sm'),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        context.label,
                        if (context.description != null)
                          DefaultTextStyle.merge(
                            style: TextStyle(
                              color: active
                                  ? foreground.withValues(alpha: 0.9)
                                  : schemeDimmed(context.context),
                              fontSize: resolveFontSize(theme, 'xs'),
                            ),
                            child: context.description!,
                          ),
                      ],
                    ),
                  ),
                ),
                if (hasChildren || context.rightSection != null) ...[
                  SizedBox(width: gap),
                  context.rightSection ??
                      Transform.rotate(
                        angle: context.opened ? 0 : -1.5708,
                        child: Text(
                          '▾',
                          style: TextStyle(color: foreground, fontSize: 12),
                        ),
                      ),
                ],
              ],
            ),
          ),
        ),
      ),
    );

    if (!hasChildren || !context.opened) {
      return row;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        row,
        Padding(
          padding: EdgeInsets.only(left: indent),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: nested,
          ),
        ),
      ],
    );
  }
}
