import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MColorSwatchDelegate]: color tile with optional check.
class BasicMColorSwatchDelegate extends MColorSwatchDelegate {
  /// Creates a baseline color-swatch delegate.
  const BasicMColorSwatchDelegate();

  /// Key on the check mark.
  static const Key checkKey = ValueKey<String>('mantle.colorswatch.check');

  @override
  Widget root(MColorSwatchContext context) {
    final radius = context.radius.resolve(
      Directionality.of(context.context),
    );
    final swatch = SizedBox(
      width: context.size,
      height: context.size,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.color,
          borderRadius: radius,
          boxShadow: context.withShadow
              ? const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 4,
                  ),
                ]
              : null,
        ),
        child: Center(
          child:
              context.child ??
              (context.checked
                  ? CustomPaint(
                      key: checkKey,
                      size: Size.square(context.size * 0.45),
                      painter: const _CheckPainter(),
                    )
                  : null),
        ),
      ),
    );

    if (context.onTap == null) {
      return swatch;
    }
    return GestureDetector(
      onTap: context.onTap,
      child: swatch,
    );
  }
}

class _CheckPainter extends CustomPainter {
  const _CheckPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFFFFFFF)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.18
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    final path = Path()
      ..moveTo(size.width * 0.15, size.height * 0.55)
      ..lineTo(size.width * 0.4, size.height * 0.8)
      ..lineTo(size.width * 0.85, size.height * 0.25);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
