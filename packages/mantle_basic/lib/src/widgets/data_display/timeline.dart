import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/data_display/tokens.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [TimelineDelegate]: vertical list with [TimelineScope].
class BasicTimelineDelegate extends TimelineDelegate {
  /// Creates a baseline timeline delegate.
  const BasicTimelineDelegate();

  @override
  Widget root(TimelineContext context) {
    final children = context.children;
    return TimelineScope(
      active: context.active,
      color: context.color,
      bulletSize: context.bulletSize,
      lineWidth: context.lineWidth,
      align: context.align,
      reverseActive: context.reverseActive,
      itemCount: children.length,
      child: Column(
        crossAxisAlignment: context.align == TimelineAlign.left
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.end,
        children: [
          for (var i = 0; i < children.length; i++)
            TimelineItemIndex(
              index: i,
              isLast: i == children.length - 1,
              child: children[i],
            ),
        ],
      ),
    );
  }
}

/// Baseline [TimelineItemDelegate]: bullet + body.
class BasicTimelineItemDelegate extends TimelineItemDelegate {
  /// Creates a baseline timeline-item delegate.
  const BasicTimelineItemDelegate();

  @override
  Widget root(TimelineItemContext context) {
    final scope = TimelineScope.of(context.context);
    final indexScope = TimelineItemIndex.maybeOf(context.context);
    final index = context.index ?? indexScope?.index ?? 0;
    final isLast = indexScope?.isLast ?? true;
    final theme = MantleTheme.of(context.context);
    final active = scope.isActive(index);
    final lineActive = scope.isLineActive(index);
    final fill = paletteColor(
      context.context,
      context.color ?? scope.color,
    );
    final inactive = hairlineColor(context.context);
    final offset = scope.bulletSize / 2 + scope.lineWidth / 2;
    final gap = resolveSpacing(theme, 'xl');
    final alignEnd = scope.align == TimelineAlign.right;
    final bulletBorder = active ? fill : inactive;
    final lineColor = lineActive ? fill : inactive;

    final bullet = Container(
      width: scope.bulletSize,
      height: scope.bulletSize,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active && context.bullet != null
            ? fill
            : (context.bullet != null
                  ? (isDarkScheme(context.context)
                        ? theme.colors['dark'][4]
                        : theme.colors['gray'][3])
                  : bodyColor(context.context)),
        border: Border.all(color: bulletBorder, width: scope.lineWidth),
      ),
      child: context.bullet,
    );

    final body = Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: alignEnd ? 0 : offset,
          right: alignEnd ? offset : 0,
          bottom: isLast ? 0 : gap,
        ),
        child: Column(
          crossAxisAlignment: alignEnd
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            if (context.title case final title?)
              DefaultTextStyle.merge(
                style: const TextStyle(fontWeight: FontWeight.w500, height: 1),
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: resolveSpacing(theme, 'xs') / 2,
                  ),
                  child: title,
                ),
              ),
            ?context.child,
          ],
        ),
      ),
    );

    return Stack(
      children: [
        if (!isLast)
          Positioned(
            top: scope.bulletSize,
            bottom: 0,
            left: alignEnd ? null : offset - scope.lineWidth / 2,
            right: alignEnd ? offset - scope.lineWidth / 2 : null,
            child: CustomPaint(
              painter: _LinePainter(
                color: lineColor,
                width: scope.lineWidth,
                variant: context.lineVariant,
              ),
            ),
          ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: alignEnd ? [body, bullet] : [bullet, body],
        ),
      ],
    );
  }
}

class _LinePainter extends CustomPainter {
  _LinePainter({
    required this.color,
    required this.width,
    required this.variant,
  });

  final Color color;
  final double width;
  final TimelineLineVariant variant;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = width
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.butt;
    if (variant == TimelineLineVariant.dashed) {
      paint.strokeWidth = width;
      const dash = 6.0;
      const gap = 4.0;
      var y = 0.0;
      while (y < size.height) {
        canvas.drawLine(
          Offset(size.width / 2, y),
          Offset(size.width / 2, (y + dash).clamp(0, size.height)),
          paint,
        );
        y += dash + gap;
      }
      return;
    }
    if (variant == TimelineLineVariant.dotted) {
      var y = 0.0;
      while (y < size.height) {
        canvas.drawCircle(Offset(size.width / 2, y), width / 2, paint);
        y += width * 2;
      }
      return;
    }
    canvas.drawLine(
      Offset(size.width / 2, 0),
      Offset(size.width / 2, size.height),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant _LinePainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.width != width ||
        oldDelegate.variant != variant;
  }
}
