import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/combobox/combobox_chrome.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [PillDelegate].
class BasicPillDelegate extends PillDelegate {
  /// Creates a baseline pill delegate.
  const BasicPillDelegate();

  @override
  Widget root(PillContext context) {
    final theme = MantleTheme.of(context.context);
    final scheme = MantleProvider.colorSchemeOf(context.context);
    final isDark = scheme == MantleColorScheme.dark;
    final group = PillGroupScope.maybeOf(context.context);
    final size = context.size ?? group?.size ?? 'sm';
    final disabled = context.disabled || (group?.disabled ?? false);
    final height =
        context.style.height ?? (pillHeights[size] ?? pillHeights['sm']!);
    final fontSize =
        context.style.fontSize ?? (pillFontSizes[size] ?? pillFontSizes['sm']!);
    final contrast = context.variant == PillVariant.contrast;
    final background =
        context.style.background ??
        (isDark
            ? theme.colors['dark'][7]
            : (contrast ? theme.white : theme.colors['gray'][1]));
    final color =
        context.style.color ?? (isDark ? theme.colors['dark'][0] : theme.black);

    return Opacity(
      opacity: disabled ? 0.6 : 1,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: disabled
              ? (isDark ? theme.colors['dark'][5] : theme.colors['gray'][2])
              : background,
          borderRadius: context.style.radius ?? context.radius,
        ),
        child: SizedBox(
          height: height * theme.scale,
          child: Padding(
            padding: EdgeInsets.only(
              left: fontSize * 0.8,
              right: context.withRemoveButton && !disabled ? 0 : fontSize * 0.8,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: DefaultTextStyle.merge(
                    style: TextStyle(
                      fontSize: fontSize * theme.scale,
                      color: color,
                      height: 1,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    child: context.child,
                  ),
                ),
                if (context.withRemoveButton && !disabled)
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: context.onRemove,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: fontSize * 0.1,
                        right: fontSize * 0.3,
                      ),
                      child: Text(
                        '×',
                        style: TextStyle(
                          fontSize: fontSize * theme.scale,
                          color: color,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Baseline [PillGroupDelegate].
class BasicPillGroupDelegate extends PillGroupDelegate {
  /// Creates a baseline pill-group delegate.
  const BasicPillGroupDelegate();

  @override
  Widget root(PillGroupContext context) {
    final theme = MantleTheme.of(context.context);
    final size = context.size ?? 'sm';
    final gap = context.gap != null
        ? theme.spacing.all(context.gap!).left * theme.scale
        : (pillGroupGaps[size] ?? pillGroupGaps['sm']!);
    return PillGroupScope(
      size: size,
      disabled: context.disabled,
      child: Wrap(
        spacing: gap,
        runSpacing: gap,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: context.children,
      ),
    );
  }
}
