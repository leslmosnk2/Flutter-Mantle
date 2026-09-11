import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Mantine-like [ButtonDelegate] for the baseline theme.
class BasicButtonDelegate extends ButtonDelegate {
  /// Creates a baseline button delegate.
  const BasicButtonDelegate();

  /// Key placed on the loading indicator.
  static const Key loaderKey = ValueKey<String>('mantle.button.loader');

  @override
  Widget root(
    ButtonContext context, {
    required ButtonInner inner,
    required ButtonLoader loader,
  }) {
    return _BasicButtonRoot(
      buttonContext: context,
      inner: inner,
      loader: loader,
    );
  }

  @override
  Widget inner(
    ButtonContext context, {
    required ButtonLabel label,
    required ButtonSection prefix,
    required ButtonSection suffix,
  }) {
    final visuals = _ButtonVisuals.of(context);
    final hasPrefix = context.prefix != null;
    final hasSuffix = context.suffix != null;
    // Generated prefix/suffix slots both call [section] with the same
    // context, so they cannot tell left from right. Lay the provided
    // widgets out directly.

    return Row(
      mainAxisSize: context.grow ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment: _mainAxisAlignment(
        context.context,
        context.alignment,
      ),
      children: [
        if (hasPrefix) ...[
          context.prefix!,
          SizedBox(width: visuals.sectionGap),
        ],
        label(context),
        if (hasSuffix) ...[
          SizedBox(width: visuals.sectionGap),
          context.suffix!,
        ],
      ],
    );
  }

  @override
  Widget? loader(ButtonContext context) {
    if (!context.loading) {
      return null;
    }
    final visuals = _ButtonVisuals.of(context);
    return _BasicButtonLoader(
      key: loaderKey,
      color: visuals.foreground,
      size: visuals.loaderSize,
    );
  }

  @override
  Widget label(ButtonContext context) {
    final visuals = _ButtonVisuals.of(context);
    return DefaultTextStyle.merge(
      style: visuals.textStyle,
      child: context.child,
    );
  }

  @override
  Widget section(ButtonContext context) {
    // Generated prefix/suffix slots both call this with the same context.
    // Prefer the widget that exists; inner() lays them out in order.
    return context.prefix ?? context.suffix ?? const SizedBox.shrink();
  }
}

class _BasicButtonRoot extends StatefulWidget {
  const _BasicButtonRoot({
    required this.buttonContext,
    required this.inner,
    required this.loader,
  });

  final ButtonContext buttonContext;
  final ButtonInner inner;
  final ButtonLoader loader;

  @override
  State<_BasicButtonRoot> createState() => _BasicButtonRootState();
}

class _BasicButtonRootState extends State<_BasicButtonRoot> {
  var _hovered = false;
  var _pressed = false;

  @override
  Widget build(BuildContext context) {
    final ctx = widget.buttonContext;
    final visuals = _ButtonVisuals.of(ctx);
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
          child: Transform.translate(
            offset: Offset(0, _pressed && canInteract ? 1 : 0),
            child: SizedBox(
              height: visuals.height,
              width: ctx.grow ? double.infinity : null,
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
                    size: visuals.textStyle.fontSize,
                  ),
                  child: DefaultTextStyle.merge(
                    style: visuals.textStyle.copyWith(color: foreground),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: visuals.paddingLeft,
                        right: visuals.paddingRight,
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
                                child: widget.inner(ctx),
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
        ),
      ),
    );
  }
}

class _ButtonVisuals {
  const _ButtonVisuals({
    required this.height,
    required this.paddingLeft,
    required this.paddingRight,
    required this.radius,
    required this.background,
    required this.hoverBackground,
    required this.foreground,
    required this.hoverForeground,
    required this.borderColor,
    required this.gradient,
    required this.textStyle,
    required this.sectionGap,
    required this.loaderSize,
  });

  factory _ButtonVisuals.of(ButtonContext ctx) {
    final theme = MantleTheme.of(ctx.context);
    final scheme = MantleProvider.colorSchemeOf(ctx.context);
    final scale = theme.scale;
    final size = _resolveSize(ctx.size);
    final height = ctx.style.height ?? size.height * scale;
    final paddingX = ctx.style.horizontalPadding ?? size.paddingX * scale;
    final hasPrefix = ctx.prefix != null;
    final hasSuffix = ctx.suffix != null;
    final fontSize = theme.typography.fontSize.getOrNull(size.fontKey) ?? 14;

    final colors = _resolveColors(ctx, theme, scheme);
    final treatDisabled = ctx.disabled && !ctx.loading;
    final useGradient =
        ctx.variant == ButtonVariant.filled &&
        ctx.gradient != null &&
        !treatDisabled;

    final textStyle =
        const TextStyle(
              fontWeight: FontWeight.w600,
              height: 1,
            )
            .merge(ctx.style.textStyle)
            .copyWith(
              fontSize: ctx.style.textStyle?.fontSize ?? fontSize * scale,
              color: ctx.style.color ?? colors.color,
            );

    return _ButtonVisuals(
      height: height,
      paddingLeft: hasPrefix ? paddingX / 1.5 : paddingX,
      paddingRight: hasSuffix ? paddingX / 1.5 : paddingX,
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
      textStyle: textStyle,
      sectionGap: theme.spacing.all('xs').left * scale,
      loaderSize: height / 1.8,
    );
  }

  final double height;
  final double paddingLeft;
  final double paddingRight;
  final BorderRadiusGeometry radius;
  final Color background;
  final Color hoverBackground;
  final Color foreground;
  final Color hoverForeground;
  final Color borderColor;
  final Gradient? gradient;
  final TextStyle textStyle;
  final double sectionGap;
  final double loaderSize;
}

class _ButtonSize {
  const _ButtonSize({
    required this.height,
    required this.paddingX,
    required this.fontKey,
  });

  final double height;
  final double paddingX;
  final String fontKey;
}

const _regularHeights = <String, double>{
  'xs': 30,
  'sm': 36,
  'md': 42,
  'lg': 50,
  'xl': 60,
};

const _regularPaddings = <String, double>{
  'xs': 14,
  'sm': 18,
  'md': 22,
  'lg': 26,
  'xl': 32,
};

const _compactHeights = <String, double>{
  'xs': 22,
  'sm': 26,
  'md': 30,
  'lg': 34,
  'xl': 40,
};

const _compactPaddings = <String, double>{
  'xs': 7,
  'sm': 8,
  'md': 10,
  'lg': 12,
  'xl': 14,
};

_ButtonSize _resolveSize(String? size) {
  final raw = size ?? 'sm';
  final compact = raw.startsWith('compact-');
  final key = compact ? raw.substring('compact-'.length) : raw;
  final heights = compact ? _compactHeights : _regularHeights;
  final paddings = compact ? _compactPaddings : _regularPaddings;
  return _ButtonSize(
    height: heights[key] ?? _regularHeights['sm']!,
    paddingX: paddings[key] ?? _regularPaddings['sm']!,
    fontKey: _regularHeights.containsKey(key) ? key : 'sm',
  );
}

VariantColors _resolveColors(
  ButtonContext ctx,
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

  if (ctx.variant == ButtonVariant.defaults) {
    final isDark = scheme == MantleColorScheme.dark;
    return VariantColors(
      background: isDark ? theme.colors['dark'][6] : theme.white,
      hover: isDark ? theme.colors['dark'][5] : theme.colors['gray'][0],
      color: isDark ? theme.white : theme.black,
      border: isDark ? theme.colors['dark'][4] : theme.colors['gray'][4],
    );
  }

  final variantName = switch (ctx.variant) {
    ButtonVariant.filled => 'filled',
    ButtonVariant.light => 'light',
    ButtonVariant.outline => 'outline',
    ButtonVariant.subtle => 'subtle',
    ButtonVariant.transparent => 'transparent',
    ButtonVariant.white => 'white',
    ButtonVariant.defaults => 'default',
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

MainAxisAlignment _mainAxisAlignment(
  BuildContext context,
  AlignmentGeometry alignment,
) {
  final resolved = alignment.resolve(Directionality.of(context));
  if (resolved.x <= -0.5) {
    return MainAxisAlignment.start;
  }
  if (resolved.x >= 0.5) {
    return MainAxisAlignment.end;
  }
  return MainAxisAlignment.center;
}

class _BasicButtonLoader extends StatefulWidget {
  const _BasicButtonLoader({
    required this.color,
    required this.size,
    super.key,
  });

  final Color color;
  final double size;

  @override
  State<_BasicButtonLoader> createState() => _BasicButtonLoaderState();
}

class _BasicButtonLoaderState extends State<_BasicButtonLoader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    unawaited(_controller.repeat());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: CustomPaint(
        size: Size.square(widget.size),
        painter: _OvalLoaderPainter(color: widget.color),
      ),
    );
  }
}

class _OvalLoaderPainter extends CustomPainter {
  _OvalLoaderPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final stroke = size.width / 8;
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke
      ..strokeCap = StrokeCap.round;
    final inset = stroke / 2;
    canvas.drawArc(
      Rect.fromLTWH(
        inset,
        inset,
        size.width - stroke,
        size.height - stroke,
      ),
      0,
      math.pi * 1.5,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant _OvalLoaderPainter oldDelegate) {
    return oldDelegate.color != color;
  }
}
