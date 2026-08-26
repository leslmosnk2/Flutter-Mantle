import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/widgets.dart';

/// Spinning oval used by loading action icons (and matching Button).
class OvalLoader extends StatefulWidget {
  /// Creates a spinning arc.
  const OvalLoader({
    required this.color,
    required this.size,
    super.key,
  });

  /// Stroke color.
  final Color color;

  /// Width and height.
  final double size;

  @override
  State<OvalLoader> createState() => _OvalLoaderState();
}

class _OvalLoaderState extends State<OvalLoader>
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
      Rect.fromLTWH(inset, inset, size.width - stroke, size.height - stroke),
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
