import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_basic/src/widgets/navigation/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/navigation.dart';

/// Line lengths for Burger size tokens, matching Mantine CSS variables.
const Map<String, double> kBurgerSizes = {
  'xs': 12,
  'sm': 18,
  'md': 24,
  'lg': 34,
  'xl': 42,
};

/// Baseline [BurgerDelegate]: a three-line menu toggle.
class BasicBurgerDelegate extends BurgerDelegate {
  /// Creates a baseline burger delegate.
  const BasicBurgerDelegate();

  @override
  Widget root(BurgerContext context) {
    final theme = MantleTheme.of(context.context);
    final line = kBurgerSizes[context.size] ?? kBurgerSizes['md']!;
    final pad = resolveSpacing(theme, 'xs');
    final color = context.color == null
        ? schemeForeground(context.context)
        : resolveNamedColor(context.context, context.color);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: context.onTap,
      child: Semantics(
        button: true,
        onTap: context.onTap,
        child: Padding(
          padding: EdgeInsets.all(pad / 2),
          child: SizedBox(
            width: line,
            height: line,
            child: CustomPaint(
              painter: _BurgerPainter(
                color: color,
                opened: context.opened,
                lineSize: line / 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BurgerPainter extends CustomPainter {
  const _BurgerPainter({
    required this.color,
    required this.opened,
    required this.lineSize,
  });

  final Color color;
  final bool opened;
  final double lineSize;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    final w = size.width;
    final cy = size.height / 2;
    final offset = size.height / 3;

    void lineAt(double y, {double rotation = 0}) {
      canvas
        ..save()
        ..translate(w / 2, y)
        ..rotate(rotation)
        ..drawRRect(
          RRect.fromRectAndRadius(
            Rect.fromCenter(
              center: Offset.zero,
              width: w,
              height: lineSize,
            ),
            Radius.circular(lineSize / 2),
          ),
          paint,
        )
        ..restore();
    }

    if (opened) {
      lineAt(cy, rotation: math.pi / 4);
      lineAt(cy, rotation: -math.pi / 4);
    } else {
      lineAt(cy - offset);
      lineAt(cy);
      lineAt(cy + offset);
    }
  }

  @override
  bool shouldRepaint(_BurgerPainter oldDelegate) {
    return color != oldDelegate.color ||
        opened != oldDelegate.opened ||
        lineSize != oldDelegate.lineSize;
  }
}
