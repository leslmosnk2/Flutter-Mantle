import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/feedback/feedback_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [SemiCircleProgressDelegate]: a half-ring with a label.
class BasicSemiCircleProgressDelegate extends SemiCircleProgressDelegate {
  /// Creates a baseline semicircle-progress delegate.
  const BasicSemiCircleProgressDelegate();

  @override
  Widget root(SemiCircleProgressContext context) {
    final theme = MantleTheme.of(context.context);
    final scheme = MantleProvider.colorSchemeOf(context.context);
    final size = context.size * theme.scale;
    final thickness = context.thickness * theme.scale;
    final filled = resolveFilledColor(
      theme,
      scheme,
      context.filledSegmentColor,
    );
    final empty = context.emptySegmentColor != null
        ? resolveFilledColor(theme, scheme, context.emptySegmentColor)
        : trackColor(theme, scheme);
    final t = (context.value / 100).clamp(0.0, 1.0);

    return Semantics(
      container: true,
      value: '${context.value.round()}%',
      child: SizedBox(
        width: size,
        height: size / 2,
        child: Stack(
          children: [
            Positioned.fill(
              child: CustomPaint(
                painter: _SemiCirclePainter(
                  t: t,
                  thickness: thickness,
                  filled: filled,
                  empty: empty,
                  fillDirection: context.fillDirection,
                  orientation: context.orientation,
                ),
              ),
            ),
            if (context.label != null)
              Positioned(
                left: thickness * 2,
                right: thickness * 2,
                top: context.labelPosition == SemiCircleLabelPosition.center
                    ? size / 4 - 10
                    : (context.orientation == SemiCircleOrientation.down
                          ? 0
                          : null),
                bottom: context.labelPosition == SemiCircleLabelPosition.bottom
                    ? (context.orientation == SemiCircleOrientation.down
                          ? null
                          : 0)
                    : null,
                child: Center(child: context.label),
              ),
          ],
        ),
      ),
    );
  }
}

class _SemiCirclePainter extends CustomPainter {
  _SemiCirclePainter({
    required this.t,
    required this.thickness,
    required this.filled,
    required this.empty,
    required this.fillDirection,
    required this.orientation,
  });

  final double t;
  final double thickness;
  final Color filled;
  final Color empty;
  final SemiCircleFillDirection fillDirection;
  final SemiCircleOrientation orientation;

  @override
  void paint(Canvas canvas, Size size) {
    final diameter = size.width;
    final radius = (diameter - 2 * thickness) / 2;
    final center = Offset(
      diameter / 2,
      orientation == SemiCircleOrientation.up ? diameter / 2 : 0,
    );
    final rect = Rect.fromCircle(center: center, radius: radius);

    final emptyPaint = Paint()
      ..color = empty
      ..style = PaintingStyle.stroke
      ..strokeWidth = thickness
      ..strokeCap = StrokeCap.butt;
    final filledPaint = Paint()
      ..color = filled
      ..style = PaintingStyle.stroke
      ..strokeWidth = thickness
      ..strokeCap = StrokeCap.butt;

    final up = orientation == SemiCircleOrientation.up;
    // Flutter: 0 is east, positive is clockwise. Top semicircle is π → 0
    // counter-clockwise (negative sweep).
    const emptyStart = math.pi;
    final emptySweep = up ? -math.pi : math.pi;
    canvas.drawArc(rect, emptyStart, emptySweep, false, emptyPaint);

    if (t <= 0) {
      return;
    }
    final sweep = t * (up ? -math.pi : math.pi);
    final ltr = fillDirection == SemiCircleFillDirection.leftToRight;
    final start = switch ((up, ltr)) {
      (true, true) => math.pi,
      (true, false) => 0.0,
      (false, true) => math.pi,
      (false, false) => 0.0,
    };
    final signedSweep = switch ((up, ltr)) {
      (true, true) => sweep,
      (true, false) => -sweep,
      (false, true) => sweep,
      (false, false) => -sweep,
    };
    canvas.drawArc(rect, start, signedSweep, false, filledPaint);
  }

  @override
  bool shouldRepaint(covariant _SemiCirclePainter oldDelegate) {
    return oldDelegate.t != t ||
        oldDelegate.thickness != thickness ||
        oldDelegate.filled != filled ||
        oldDelegate.empty != empty ||
        oldDelegate.fillDirection != fillDirection ||
        oldDelegate.orientation != orientation;
  }
}
