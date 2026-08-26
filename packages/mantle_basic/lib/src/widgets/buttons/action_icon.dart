import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/buttons/oval_loader.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Mantine-like [ActionIconDelegate] for the baseline theme.
class BasicActionIconDelegate extends ActionIconDelegate {
  /// Creates a baseline action-icon delegate.
  const BasicActionIconDelegate();

  /// Key placed on the loading indicator.
  static const Key loaderKey = ValueKey<String>('mantle.action_icon.loader');

  @override
  Widget root(
    ActionIconContext context, {
    required ActionIconIcon icon,
    required ActionIconLoader loader,
  }) {
    return _BasicActionIconRoot(
      actionIconContext: context,
      icon: icon,
      loader: loader,
    );
  }

  @override
  Widget icon(ActionIconContext context) {
    return context.child;
  }

  @override
  Widget? loader(ActionIconContext context) {
    if (!context.loading) {
      return null;
    }
    final visuals = _ActionIconVisuals.of(context);
    return OvalLoader(
      key: loaderKey,
      color: visuals.foreground,
      size: visuals.dimension * 0.55,
    );
  }
}

class _BasicActionIconRoot extends StatefulWidget {
  const _BasicActionIconRoot({
    required this.actionIconContext,
    required this.icon,
    required this.loader,
  });

  final ActionIconContext actionIconContext;
  final ActionIconIcon icon;
  final ActionIconLoader loader;

  @override
  State<_BasicActionIconRoot> createState() => _BasicActionIconRootState();
}

class _BasicActionIconRootState extends State<_BasicActionIconRoot> {
  var _hovered = false;
  var _pressed = false;

  @override
  Widget build(BuildContext context) {
    final ctx = widget.actionIconContext;
    final visuals = _ActionIconVisuals.of(ctx);
    final canInteract = !ctx.disabled && !ctx.loading;
    final showHover = _hovered && canInteract;
    final background = showHover ? visuals.hoverBackground : visuals.background;
    final foreground = showHover ? visuals.hoverForeground : visuals.foreground;

    final theme = MantleTheme.of(ctx.context);
    final motion = theme.respectReducedMotion
        ? Duration.zero
        : const Duration(milliseconds: 150);

    final loaderWidget = widget.loader(ctx);

    return MouseRegion(
      cursor: canInteract
          ? SystemMouseCursors.click
          : SystemMouseCursors.forbidden,
      onEnter: (_) {
        if (canInteract) {
          setState(() => _hovered = true);
        }
      },
      onExit: (_) => setState(() {
        _hovered = false;
        _pressed = false;
      }),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: canInteract ? ctx.onPressed : null,
        onTapDown: canInteract ? (_) => setState(() => _pressed = true) : null,
        onTapUp: (_) => setState(() => _pressed = false),
        onTapCancel: () => setState(() => _pressed = false),
        child: Semantics(
          button: true,
          enabled: canInteract,
          label: ctx.semanticLabel,
          child: Transform.translate(
            offset: Offset(0, _pressed && canInteract ? 1 : 0),
            child: SizedBox.square(
              dimension: visuals.dimension,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: visuals.gradient == null ? background : null,
                  gradient: visuals.gradient,
                  borderRadius: visuals.radius,
                  border: visuals.gradient == null
                      ? Border.all(color: visuals.borderColor)
                      : null,
                ),
                child: IconTheme.merge(
                  data: IconThemeData(
                    color: foreground,
                    size: visuals.dimension * 0.7,
                  ),
                  child: ClipRRect(
                    borderRadius: visuals.radius is BorderRadius
                        ? visuals.radius as BorderRadius
                        : BorderRadius.zero,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AnimatedOpacity(
                          opacity: ctx.loading ? 0 : 1,
                          duration: theme.respectReducedMotion
                              ? Duration.zero
                              : const Duration(milliseconds: 100),
                          child: AnimatedSlide(
                            offset: ctx.loading
                                ? const Offset(0, 1)
                                : Offset.zero,
                            duration: motion,
                            child: widget.icon(ctx),
                          ),
                        ),
                        ?loaderWidget,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ActionIconVisuals {
  const _ActionIconVisuals({
    required this.dimension,
    required this.radius,
    required this.background,
    required this.hoverBackground,
    required this.foreground,
    required this.hoverForeground,
    required this.borderColor,
    required this.gradient,
  });

  factory _ActionIconVisuals.of(ActionIconContext ctx) {
    final theme = MantleTheme.of(ctx.context);
    final scheme = MantleProvider.colorSchemeOf(ctx.context);
    final scale = theme.scale;
    final dimension = ctx.style.dimension ?? _resolveSize(ctx.size) * scale;
    final colors = _resolveColors(ctx, theme, scheme);
    final treatDisabled = ctx.disabled && !ctx.loading;
    final useGradient =
        ctx.variant == ActionIconVariant.filled &&
        ctx.gradient != null &&
        !treatDisabled;

    return _ActionIconVisuals(
      dimension: dimension,
      radius: ctx.style.radius ?? ctx.radius,
      background: ctx.style.background ?? colors.background ?? theme.white,
      hoverBackground:
          ctx.style.hoverBackground ??
          colors.hover ??
          colors.background ??
          theme.white,
      foreground: ctx.style.color ?? colors.color ?? theme.white,
      hoverForeground:
          ctx.style.hoverColor ??
          colors.hoverColor ??
          colors.color ??
          theme.white,
      borderColor: colors.border ?? const Color(0x00000000),
      gradient: useGradient ? ctx.gradient : null,
    );
  }

  final double dimension;
  final BorderRadiusGeometry radius;
  final Color background;
  final Color hoverBackground;
  final Color foreground;
  final Color hoverForeground;
  final Color borderColor;
  final Gradient? gradient;
}

const _sizes = <String, double>{
  'xs': 18,
  'sm': 22,
  'md': 28,
  'lg': 34,
  'xl': 44,
  'input-xs': 30,
  'input-sm': 36,
  'input-md': 42,
  'input-lg': 50,
  'input-xl': 60,
};

double _resolveSize(String? size) {
  final raw = size ?? 'md';
  return _sizes[raw] ?? _sizes['md']!;
}

VariantColors _resolveColors(
  ActionIconContext ctx,
  MantleTheme theme,
  MantleColorScheme scheme,
) {
  final treatDisabled = ctx.disabled && !ctx.loading;
  if (treatDisabled) {
    final isDark = scheme == MantleColorScheme.dark;
    return VariantColors(
      background: isDark ? theme.colors['dark'][6] : theme.colors['gray'][2],
      hover: isDark ? theme.colors['dark'][6] : theme.colors['gray'][2],
      color: isDark ? theme.colors['dark'][3] : theme.colors['gray'][5],
      border: const Color(0x00000000),
    );
  }

  if (ctx.variant == ActionIconVariant.defaults) {
    final isDark = scheme == MantleColorScheme.dark;
    return VariantColors(
      background: isDark ? theme.colors['dark'][6] : theme.white,
      hover: isDark ? theme.colors['dark'][5] : theme.colors['gray'][0],
      color: isDark ? theme.white : theme.black,
      border: isDark ? theme.colors['dark'][4] : theme.colors['gray'][4],
    );
  }

  final variantName = switch (ctx.variant) {
    ActionIconVariant.filled => 'filled',
    ActionIconVariant.light => 'light',
    ActionIconVariant.outline => 'outline',
    ActionIconVariant.subtle => 'subtle',
    ActionIconVariant.transparent => 'transparent',
    ActionIconVariant.white => 'white',
    ActionIconVariant.defaults => 'default',
  };

  return theme.variantColorResolver(
    VariantColorsInput(
      theme: theme,
      variant: variantName,
      colorScheme: scheme,
      autoContrast: ctx.autoContrast,
    ),
  );
}
