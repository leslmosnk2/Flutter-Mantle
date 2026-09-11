import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/feedback/feedback_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [RingProgressDelegate]: circular sections and a hole label.
class BasicRingProgressDelegate extends RingProgressDelegate {
  /// Creates a baseline ring-progress delegate.
  const BasicRingProgressDelegate();

  @override
  Widget root(RingProgressContext context) {
    final theme = MantleTheme.of(context.context);
    final scheme = MantleProvider.colorSchemeOf(context.context);
    final size = context.size * theme.scale;
    final thickness = math.min(
      context.thickness * theme.scale,
      size / 4,
    );
    final sections =
        context.sections ??
        (context.value != null
            ? [
                RingProgressSection(
                  value: context.value!,
                  color: context.color ?? theme.primaryColor,
                ),
              ]
            : const <RingProgressSection>[]);
    final root = context.rootColor != null
        ? resolveFilledColor(theme, scheme, context.rootColor)
        : trackColor(theme, scheme);
    final paints = [
      for (final section in sections)
        (
          value: section.value,
          color: resolveFilledColor(theme, scheme, section.color),
        ),
    ];

    return Semantics(
      container: true,
      child: SizedBox.square(
        dimension: size,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              size: Size.square(size),
              painter: _RingPainter(
                sections: paints,
                rootColor: root,
                thickness: thickness,
                roundCaps: context.roundCaps,
              ),
            ),
            if (context.label != null)
              Padding(
                padding: EdgeInsets.all(thickness * 2),
                child: Center(child: context.label),
              ),
          ],
        ),
      ),
    );
  }
}

class _RingPainter extends CustomPainter {
  _RingPainter({
    required this.sections,
    required this.rootColor,
    required this.thickness,
    required this.roundCaps,
  });

  final List<({double value, Color color})> sections;
  final Color rootColor;
  final double thickness;
  final bool roundCaps;

  @override
  void paint(Canvas canvas, Size size) {
    final radius = (size.width * 0.9 - thickness * 2) / 2;
    final center = Offset(size.width / 2, size.height / 2);
    final rect = Rect.fromCircle(center: center, radius: radius);
    final cap = roundCaps ? StrokeCap.round : StrokeCap.butt;

    final track = Paint()
      ..color = rootColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = thickness
      ..strokeCap = StrokeCap.butt;
    canvas.drawArc(rect, 0, math.pi * 2, false, track);

    var start = -math.pi / 2;
    for (final section in sections) {
      final sweep = (section.value / 100).clamp(0.0, 1.0) * math.pi * 2;
      if (sweep <= 0) {
        continue;
      }
      final paint = Paint()
        ..color = section.color
        ..style = PaintingStyle.stroke
        ..strokeWidth = thickness
        ..strokeCap = cap;
      canvas.drawArc(rect, start, sweep, false, paint);
      start += sweep;
    }
  }

  @override
  bool shouldRepaint(covariant _RingPainter oldDelegate) {
    return oldDelegate.rootColor != rootColor ||
        oldDelegate.thickness != thickness ||
        oldDelegate.roundCaps != roundCaps ||
        oldDelegate.sections.length != sections.length;
  }
}
