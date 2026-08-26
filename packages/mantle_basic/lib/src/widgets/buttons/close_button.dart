import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Mantine-like [CloseButtonDelegate]: square control with an X icon.
class BasicCloseButtonDelegate extends CloseButtonDelegate {
  /// Creates a baseline close-button delegate.
  const BasicCloseButtonDelegate();

  /// Key placed on the default X icon.
  static const Key iconKey = ValueKey<String>('mantle.close_button.icon');

  @override
  Widget root(CloseButtonContext context) {
    return _BasicCloseButtonRoot(buttonContext: context);
  }
}

class _BasicCloseButtonRoot extends StatefulWidget {
  const _BasicCloseButtonRoot({required this.buttonContext});

  final CloseButtonContext buttonContext;

  @override
  State<_BasicCloseButtonRoot> createState() => _BasicCloseButtonRootState();
}

class _BasicCloseButtonRootState extends State<_BasicCloseButtonRoot> {
  var _hovered = false;
  var _pressed = false;

  @override
  Widget build(BuildContext context) {
    final ctx = widget.buttonContext;
    final visuals = _CloseButtonVisuals.of(ctx);
    final canInteract = !ctx.disabled;
    final showHover = _hovered && canInteract;
    final background = showHover
        ? visuals.hoverBackground
        : const Color(0x00000000);
    final foreground = visuals.foreground;

    final iconSize = ctx.iconSize ?? visuals.dimension * 0.7;
    final icon =
        ctx.icon ??
        _CloseIcon(
          key: BasicCloseButtonDelegate.iconKey,
          color: foreground,
          size: iconSize,
        );

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
          label: ctx.semanticLabel ?? 'Close',
          child: Opacity(
            opacity: ctx.disabled ? 0.6 : 1,
            child: Transform.translate(
              offset: Offset(0, _pressed && canInteract ? 1 : 0),
              child: SizedBox.square(
                dimension: visuals.dimension,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: background,
                    borderRadius: visuals.radius,
                  ),
                  child: IconTheme.merge(
                    data: IconThemeData(color: foreground, size: iconSize),
                    child: Center(
                      child: ctx.child == null
                          ? icon
                          : Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [icon, ctx.child!],
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

class _CloseButtonVisuals {
  const _CloseButtonVisuals({
    required this.dimension,
    required this.radius,
    required this.foreground,
    required this.hoverBackground,
  });

  factory _CloseButtonVisuals.of(CloseButtonContext ctx) {
    final theme = MantleTheme.of(ctx.context);
    final scheme = MantleProvider.colorSchemeOf(ctx.context);
    final isDark = scheme == MantleColorScheme.dark;
    final scale = theme.scale;
    final dimension = ctx.style.dimension ?? _resolveSize(ctx.size) * scale;

    final foreground =
        ctx.style.color ??
        (isDark ? theme.colors['dark'][1] : theme.colors['gray'][7]);

    final hoverBackground =
        ctx.style.hoverBackground ??
        switch (ctx.variant) {
          CloseButtonVariant.transparent => const Color(0x00000000),
          CloseButtonVariant.defaults || CloseButtonVariant.subtle =>
            isDark ? theme.colors['dark'][6] : theme.colors['gray'][0],
        };

    return _CloseButtonVisuals(
      dimension: dimension,
      radius: ctx.style.radius ?? ctx.radius,
      foreground: foreground,
      hoverBackground: hoverBackground,
    );
  }

  final double dimension;
  final BorderRadiusGeometry radius;
  final Color foreground;
  final Color hoverBackground;
}

const _sizes = <String, double>{
  'xs': 18,
  'sm': 22,
  'md': 28,
  'lg': 34,
  'xl': 44,
};

double _resolveSize(String? size) {
  final raw = size ?? 'md';
  return _sizes[raw] ?? _sizes['md']!;
}

class _CloseIcon extends StatelessWidget {
  const _CloseIcon({
    required this.color,
    required this.size,
    super.key,
  });

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(size),
      painter: _CloseIconPainter(color: color),
    );
  }
}

class _CloseIconPainter extends CustomPainter {
  _CloseIconPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = size.width * 0.12
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
    final inset = size.width * 0.22;
    canvas
      ..drawLine(
        Offset(inset, inset),
        Offset(size.width - inset, size.height - inset),
        paint,
      )
      ..drawLine(
        Offset(size.width - inset, inset),
        Offset(inset, size.height - inset),
        paint,
      );
  }

  @override
  bool shouldRepaint(covariant _CloseIconPainter oldDelegate) {
    return oldDelegate.color != color;
  }
}
