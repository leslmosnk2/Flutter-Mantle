import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/data_display/tokens.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [DividerDelegate]: a hairline rule with an optional label.
class BasicDividerDelegate extends DividerDelegate {
  /// Creates a baseline divider delegate.
  const BasicDividerDelegate();

  @override
  Widget root(DividerContext context) {
    final thickness = _thickness(context.size);
    final color = context.color != null
        ? paletteColor(context.context, context.color)
        : hairlineColor(context.context);
    if (context.orientation == Axis.vertical) {
      return _line(
        color: color,
        thickness: thickness,
        variant: context.lineVariant,
        orientation: Axis.vertical,
      );
    }
    if (context.label == null) {
      return _line(
        color: color,
        thickness: thickness,
        variant: context.lineVariant,
        orientation: Axis.horizontal,
      );
    }
    final theme = MantleTheme.of(context.context);
    final gap = resolveSpacing(theme, 'xs');
    final label = Padding(
      padding: EdgeInsets.symmetric(horizontal: gap),
      child: DefaultTextStyle.merge(
        style: TextStyle(
          fontSize: fontSizeToken(theme, 'xs'),
          color: isDarkScheme(context.context)
              ? theme.colors['dark'][2]
              : theme.colors['gray'][6],
        ),
        child: context.label!,
      ),
    );
    final line = Expanded(
      child: _line(
        color: color,
        thickness: thickness,
        variant: context.lineVariant,
        orientation: Axis.horizontal,
      ),
    );
    return Row(
      children: [
        if (context.labelPosition != DividerLabelPosition.left) line,
        label,
        if (context.labelPosition != DividerLabelPosition.right) line,
      ],
    );
  }
}

double _thickness(String size) {
  return switch (size) {
    'sm' => 2,
    'md' => 3,
    'lg' => 4,
    'xl' => 5,
    _ => 1,
  };
}

Widget _line({
  required Color color,
  required double thickness,
  required DividerLineVariant variant,
  required Axis orientation,
}) {
  if (variant == DividerLineVariant.solid) {
    if (orientation == Axis.horizontal) {
      return SizedBox(
        height: thickness,
        width: double.infinity,
        child: ColoredBox(color: color),
      );
    }
    return SizedBox(
      width: thickness,
      height: double.infinity,
      child: ColoredBox(color: color),
    );
  }
  return CustomPaint(
    painter: _DashedLinePainter(
      color: color,
      thickness: thickness,
      dotted: variant == DividerLineVariant.dotted,
      orientation: orientation,
    ),
    size: orientation == Axis.horizontal
        ? Size(double.infinity, thickness)
        : Size(thickness, double.infinity),
    child: orientation == Axis.horizontal
        ? SizedBox(height: thickness, width: double.infinity)
        : SizedBox(width: thickness, height: double.infinity),
  );
}

class _DashedLinePainter extends CustomPainter {
  _DashedLinePainter({
    required this.color,
    required this.thickness,
    required this.dotted,
    required this.orientation,
  });

  final Color color;
  final double thickness;
  final bool dotted;
  final Axis orientation;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = thickness
      ..strokeCap = dotted ? StrokeCap.round : StrokeCap.butt
      ..style = PaintingStyle.stroke;
    final dash = dotted ? thickness : 4.0;
    final gap = dotted ? thickness * 1.5 : 3.0;
    if (orientation == Axis.horizontal) {
      final y = size.height / 2;
      var x = 0.0;
      while (x < size.width) {
        canvas.drawLine(
          Offset(x, y),
          Offset(math.min(x + dash, size.width), y),
          paint,
        );
        x += dash + gap;
      }
    } else {
      final x = size.width / 2;
      var y = 0.0;
      while (y < size.height) {
        canvas.drawLine(
          Offset(x, y),
          Offset(x, math.min(y + dash, size.height)),
          paint,
        );
        y += dash + gap;
      }
    }
  }

  @override
  bool shouldRepaint(covariant _DashedLinePainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.thickness != thickness ||
        oldDelegate.dotted != dotted ||
        oldDelegate.orientation != orientation;
  }
}
