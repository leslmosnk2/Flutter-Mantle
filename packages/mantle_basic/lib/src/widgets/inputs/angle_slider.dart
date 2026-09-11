import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [AngleSliderDelegate].
class BasicAngleSliderDelegate extends AngleSliderDelegate {
  /// Creates a baseline angle slider delegate.
  const BasicAngleSliderDelegate();

  @override
  Widget root(AngleSliderContext context) {
    return _AngleSliderRoot(context: context);
  }
}

class _AngleSliderRoot extends StatefulWidget {
  const _AngleSliderRoot({required this.context});

  final AngleSliderContext context;

  @override
  State<_AngleSliderRoot> createState() => _AngleSliderRootState();
}

class _AngleSliderRootState extends State<_AngleSliderRoot> {
  double? _uncontrolled;

  double get _value =>
      widget.context.value ?? _uncontrolled ?? widget.context.defaultValue;

  void _setFrom(Offset local, Size size, {bool end = false}) {
    final ctx = widget.context;
    if (ctx.disabled) {
      return;
    }
    final center = Offset(size.width / 2, size.height / 2);
    final delta = local - center;
    var deg = (math.atan2(delta.dx, -delta.dy) * 180 / math.pi) % 360;
    if (deg < 0) {
      deg += 360;
    }
    if (ctx.step > 0) {
      deg = (deg / ctx.step).round() * ctx.step;
    }
    deg = deg % 360;
    if (ctx.value == null) {
      setState(() => _uncontrolled = deg);
    }
    ctx.onChanged?.call(deg);
    if (end) {
      ctx.onChangeEnd?.call(deg);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    final theme = MantleTheme.of(context);
    final scheme = MantleProvider.colorSchemeOf(context);
    final size = ctx.size;
    final thumb = ctx.thumbSize ?? size / 6;
    return GestureDetector(
      onPanDown: (d) => _setFrom(d.localPosition, Size.square(size)),
      onPanUpdate: (d) => _setFrom(d.localPosition, Size.square(size)),
      onPanEnd: (_) => widget.context.onChangeEnd?.call(_value),
      child: SizedBox(
        width: size,
        height: size,
        child: CustomPaint(
          painter: _AnglePainter(
            value: _value,
            thumbSize: thumb,
            color:
                theme.primary[theme.primaryShade.indexFor(
                  isDark: scheme == MantleColorScheme.dark,
                )],
            track: scheme == MantleColorScheme.dark
                ? theme.colors['dark'][4]
                : theme.colors['gray'][3],
            label: ctx.withLabel ? '${_value.round()}' : null,
            foreground: scheme == MantleColorScheme.dark
                ? theme.white
                : theme.black,
          ),
        ),
      ),
    );
  }
}

class _AnglePainter extends CustomPainter {
  _AnglePainter({
    required this.value,
    required this.thumbSize,
    required this.color,
    required this.track,
    required this.foreground,
    this.label,
  });

  final double value;
  final double thumbSize;
  final Color color;
  final Color track;
  final Color foreground;
  final String? label;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - thumbSize / 2;
    canvas
      ..drawCircle(center, radius, Paint()..color = track)
      ..drawCircle(
        center,
        radius - 6,
        Paint()..color = const Color(0x00000000),
      );
    final rad = value * math.pi / 180;
    final thumb = Offset(
      center.dx + radius * math.sin(rad),
      center.dy - radius * math.cos(rad),
    );
    canvas
      ..drawLine(
        center,
        thumb,
        Paint()
          ..color = color
          ..strokeWidth = 2,
      )
      ..drawCircle(thumb, thumbSize / 2, Paint()..color = color);
    if (label != null) {
      final painter = TextPainter(
        text: TextSpan(
          text: label,
          style: TextStyle(color: foreground, fontSize: 12),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      painter.paint(
        canvas,
        center - Offset(painter.width / 2, painter.height / 2),
      );
    }
  }

  @override
  bool shouldRepaint(covariant _AnglePainter oldDelegate) {
    return oldDelegate.value != value;
  }
}
