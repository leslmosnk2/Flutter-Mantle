import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [RatingDelegate].
class BasicRatingDelegate extends RatingDelegate {
  /// Creates a baseline rating delegate.
  const BasicRatingDelegate();

  @override
  Widget root(RatingContext context) {
    return _RatingRoot(context: context);
  }
}

class _RatingRoot extends StatefulWidget {
  const _RatingRoot({required this.context});

  final RatingContext context;

  @override
  State<_RatingRoot> createState() => _RatingRootState();
}

class _RatingRootState extends State<_RatingRoot> {
  double? _uncontrolled;

  double get _value =>
      widget.context.value ?? _uncontrolled ?? widget.context.defaultValue;

  void _set(double next) {
    final ctx = widget.context;
    if (ctx.readOnly) {
      return;
    }
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
    final size = inputSizeToken(ratingSizes, ctx.size) * theme.scale;
    final color = resolveThemeColor(theme, scheme, ctx.color);
    final empty = scheme == MantleColorScheme.dark
        ? theme.colors['dark'][3]
        : theme.colors['gray'][3];

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var i = 1; i <= ctx.count; i++)
          GestureDetector(
            onTap: () {
              final step = 1 / ctx.fractions;
              _set(i.toDouble());
              if (step < 1) {
                _set(i.toDouble());
              }
            },
            child: CustomPaint(
              size: Size.square(size),
              painter: _StarPainter(
                fill: ctx.highlightSelectedOnly
                    ? (_value.round() == i ? 1 : 0)
                    : (_value - (i - 1)).clamp(0.0, 1.0),
                color: color,
                empty: empty,
              ),
            ),
          ),
      ],
    );
  }
}

class _StarPainter extends CustomPainter {
  _StarPainter({
    required this.fill,
    required this.color,
    required this.empty,
  });

  final double fill;
  final Color color;
  final Color empty;

  @override
  void paint(Canvas canvas, Size size) {
    final path = _star(size);
    canvas.drawPath(path, Paint()..color = empty);
    if (fill <= 0) {
      return;
    }
    canvas
      ..save()
      ..clipRect(
        Rect.fromLTWH(0, 0, size.width * fill, size.height),
      )
      ..drawPath(path, Paint()..color = color)
      ..restore();
  }

  Path _star(Size size) {
    const points = <Offset>[
      Offset(0.5, 0.05),
      Offset(0.61, 0.35),
      Offset(0.95, 0.35),
      Offset(0.67, 0.57),
      Offset(0.79, 0.91),
      Offset(0.5, 0.7),
      Offset(0.21, 0.91),
      Offset(0.33, 0.57),
      Offset(0.05, 0.35),
      Offset(0.39, 0.35),
    ];
    final path = Path()
      ..moveTo(points.first.dx * size.width, points.first.dy * size.height);
    for (final point in points.skip(1)) {
      path.lineTo(point.dx * size.width, point.dy * size.height);
    }
    return path..close();
  }

  @override
  bool shouldRepaint(covariant _StarPainter oldDelegate) {
    return oldDelegate.fill != fill || oldDelegate.color != color;
  }
}
