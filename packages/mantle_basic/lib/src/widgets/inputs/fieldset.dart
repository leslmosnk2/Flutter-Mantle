import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [FieldsetDelegate].
class BasicFieldsetDelegate extends FieldsetDelegate {
  /// Creates a baseline fieldset delegate.
  const BasicFieldsetDelegate();

  @override
  Widget root(FieldsetContext context) {
    final theme = MantleTheme.of(context.context);
    final scheme = MantleProvider.colorSchemeOf(context.context);
    final variant = inputVariantName(context.variant);
    final isDark = scheme == MantleColorScheme.dark;
    final unstyled = variant == 'unstyled';
    final filled = variant == 'filled';
    final border = isDark ? theme.colors['dark'][4] : theme.colors['gray'][3];
    final background = unstyled
        ? const Color(0x00000000)
        : filled
        ? (isDark ? theme.colors['dark'][6] : theme.colors['gray'][0])
        : (isDark ? theme.colors['dark'][7] : theme.white);
    final padding = resolveSpacing(theme, 'lg');
    final top = resolveSpacing(theme, 'xs');

    return Opacity(
      opacity: context.disabled ? 0.6 : 1,
      child: IgnorePointer(
        ignoring: context.disabled,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: background,
            borderRadius: unstyled ? null : context.radius,
            border: unstyled ? null : Border.all(color: border),
          ),
          child: Padding(
            padding: unstyled
                ? EdgeInsets.zero
                : EdgeInsets.fromLTRB(padding, top, padding, padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (context.legend != null)
                  DefaultTextStyle.merge(
                    style: TextStyle(
                      fontSize:
                          (theme.typography.fontSize.getOrNull('sm') ?? 14) *
                          theme.scale,
                      fontWeight: FontWeight.w500,
                      color: isDark ? theme.white : theme.black,
                    ),
                    child: context.legend!,
                  ),
                ...context.children,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
