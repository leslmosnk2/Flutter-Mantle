import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [SliderDelegate].
class BasicSliderDelegate extends SliderDelegate {
  /// Creates a baseline slider delegate.
  const BasicSliderDelegate();

  @override
  Widget root(SliderContext context) {
    return _SliderRoot(context: context);
  }
}

class _SliderRoot extends StatefulWidget {
  const _SliderRoot({required this.context});

  final SliderContext context;

  @override
  State<_SliderRoot> createState() => _SliderRootState();
}

class _SliderRootState extends State<_SliderRoot> {
  double? _uncontrolled;
  var _dragging = false;

  double get _value {
    final ctx = widget.context;
    return (ctx.value ?? _uncontrolled ?? ctx.defaultValue ?? ctx.min).clamp(
      ctx.min,
      ctx.max,
    );
  }

  void _setFromLocal(double dx, double width) {
    final ctx = widget.context;
    if (ctx.disabled || width <= 0) {
      return;
    }
    final t = (dx / width).clamp(0.0, 1.0);
    var next = ctx.min + t * (ctx.max - ctx.min);
    if (ctx.step > 0) {
      next = (next / ctx.step).round() * ctx.step;
    }
    next = next.clamp(ctx.min, ctx.max);
    if (ctx.value == null) {
      setState(() => _uncontrolled = next);
    }
    ctx.onChanged?.call(next);
  }

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    final theme = MantleTheme.of(context);
    final scheme = MantleProvider.colorSchemeOf(context);
    final track = inputSizeToken(sliderSizes, ctx.size) * theme.scale;
    final color = resolveThemeColor(theme, scheme, ctx.color);
    final t = ctx.max == ctx.min
        ? 0.0
        : (_value - ctx.min) / (ctx.max - ctx.min);
    final showLabel = ctx.labelAlwaysOn || _dragging;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showLabel) Text(_value.toStringAsFixed(0)),
        SizedBox(
          height: track * 2,
          child: LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              return GestureDetector(
                onTapDown: ctx.disabled
                    ? null
                    : (d) => _setFromLocal(d.localPosition.dx, width),
                onHorizontalDragStart: ctx.disabled
                    ? null
                    : (_) => setState(() => _dragging = true),
                onHorizontalDragUpdate: ctx.disabled
                    ? null
                    : (d) => _setFromLocal(d.localPosition.dx, width),
                onHorizontalDragEnd: ctx.disabled
                    ? null
                    : (_) {
                        setState(() => _dragging = false);
                        ctx.onChangeEnd?.call(_value);
                      },
                child: CustomPaint(
                  size: Size(width, track * 2),
                  painter: _SliderPainter(
                    progress: t,
                    trackHeight: track,
                    color: color,
                    trackColor: scheme == MantleColorScheme.dark
                        ? theme.colors['dark'][4]
                        : theme.colors['gray'][2],
                    radius: ctx.radius,
                    disabled: ctx.disabled,
                  ),
                ),
              );
            },
          ),
        ),
        if (ctx.marks != null)
          Row(
            children: [
              for (final mark in ctx.marks!)
                if (mark.label != null) mark.label!,
            ],
          ),
      ],
    );
  }
}

class _SliderPainter extends CustomPainter {
  _SliderPainter({
    required this.progress,
    required this.trackHeight,
    required this.color,
    required this.trackColor,
    required this.radius,
    required this.disabled,
  });

  final double progress;
  final double trackHeight;
  final Color color;
  final Color trackColor;
  final BorderRadiusGeometry radius;
  final bool disabled;

  @override
  void paint(Canvas canvas, Size size) {
    final y = size.height / 2;
    final track = RRect.fromLTRBR(
      0,
      y - trackHeight / 2,
      size.width,
      y + trackHeight / 2,
      const Radius.circular(100),
    );
    canvas.drawRRect(track, Paint()..color = trackColor);
    canvas.drawRRect(
      RRect.fromLTRBR(
        0,
        y - trackHeight / 2,
        size.width * progress,
        y + trackHeight / 2,
        const Radius.circular(100),
      ),
      Paint()..color = disabled ? trackColor : color,
    );
    canvas.drawCircle(
      Offset(size.width * progress, y),
      trackHeight,
      Paint()..color = disabled ? trackColor : color,
    );
    canvas.drawCircle(
      Offset(size.width * progress, y),
      trackHeight * 0.55,
      Paint()..color = const Color(0xFFFFFFFF),
    );
  }

  @override
  bool shouldRepaint(covariant _SliderPainter oldDelegate) {
    return oldDelegate.progress != progress || oldDelegate.color != color;
  }
}

/// Baseline [RangeSliderDelegate].
class BasicRangeSliderDelegate extends RangeSliderDelegate {
  /// Creates a baseline range slider delegate.
  const BasicRangeSliderDelegate();

  @override
  Widget root(RangeSliderContext context) {
    return _RangeSliderRoot(context: context);
  }
}

class _RangeSliderRoot extends StatefulWidget {
  const _RangeSliderRoot({required this.context});

  final RangeSliderContext context;

  @override
  State<_RangeSliderRoot> createState() => _RangeSliderRootState();
}

class _RangeSliderRootState extends State<_RangeSliderRoot> {
  RangeSliderValue? _uncontrolled;
  var _active = 0;

  RangeSliderValue get _value {
    final ctx = widget.context;
    return ctx.value ??
        _uncontrolled ??
        ctx.defaultValue ??
        RangeSliderValue(ctx.min, ctx.max);
  }

  void _setFromLocal(double dx, double width) {
    final ctx = widget.context;
    if (ctx.disabled || width <= 0) {
      return;
    }
    final t = (dx / width).clamp(0.0, 1.0);
    var next = ctx.min + t * (ctx.max - ctx.min);
    if (ctx.step > 0) {
      next = (next / ctx.step).round() * ctx.step;
    }
    var start = _value.start;
    var end = _value.end;
    if (_active == 0) {
      start = next.clamp(ctx.min, end - ctx.minRange);
    } else {
      end = next.clamp(start + ctx.minRange, ctx.max);
    }
    final value = RangeSliderValue(start, end);
    if (ctx.value == null) {
      setState(() => _uncontrolled = value);
    }
    ctx.onChanged?.call(value);
  }

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    final theme = MantleTheme.of(context);
    final scheme = MantleProvider.colorSchemeOf(context);
    final track = inputSizeToken(sliderSizes, ctx.size) * theme.scale;
    final color = resolveThemeColor(theme, scheme, ctx.color);
    final span = ctx.max - ctx.min;
    final startT = span == 0 ? 0.0 : (_value.start - ctx.min) / span;
    final endT = span == 0 ? 1.0 : (_value.end - ctx.min) / span;

    return SizedBox(
      height: track * 2,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          return GestureDetector(
            onTapDown: ctx.disabled
                ? null
                : (d) {
                    final t = d.localPosition.dx / width;
                    _active = (t - startT).abs() <= (t - endT).abs() ? 0 : 1;
                    _setFromLocal(d.localPosition.dx, width);
                  },
            onHorizontalDragUpdate: ctx.disabled
                ? null
                : (d) => _setFromLocal(d.localPosition.dx, width),
            onHorizontalDragEnd: ctx.disabled
                ? null
                : (_) => ctx.onChangeEnd?.call(_value),
            child: CustomPaint(
              size: Size(width, track * 2),
              painter: _RangePainter(
                start: startT,
                end: endT,
                trackHeight: track,
                color: color,
                trackColor: scheme == MantleColorScheme.dark
                    ? theme.colors['dark'][4]
                    : theme.colors['gray'][2],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _RangePainter extends CustomPainter {
  _RangePainter({
    required this.start,
    required this.end,
    required this.trackHeight,
    required this.color,
    required this.trackColor,
  });

  final double start;
  final double end;
  final double trackHeight;
  final Color color;
  final Color trackColor;

  @override
  void paint(Canvas canvas, Size size) {
    final y = size.height / 2;
    canvas.drawRRect(
      RRect.fromLTRBR(
        0,
        y - trackHeight / 2,
        size.width,
        y + trackHeight / 2,
        const Radius.circular(100),
      ),
      Paint()..color = trackColor,
    );
    canvas.drawRRect(
      RRect.fromLTRBR(
        size.width * start,
        y - trackHeight / 2,
        size.width * end,
        y + trackHeight / 2,
        const Radius.circular(100),
      ),
      Paint()..color = color,
    );
    for (final t in [start, end]) {
      canvas.drawCircle(
        Offset(size.width * t, y),
        trackHeight,
        Paint()..color = color,
      );
      canvas.drawCircle(
        Offset(size.width * t, y),
        trackHeight * 0.55,
        Paint()..color = const Color(0xFFFFFFFF),
      );
    }
  }

  @override
  bool shouldRepaint(covariant _RangePainter oldDelegate) {
    return oldDelegate.start != start || oldDelegate.end != end;
  }
}
