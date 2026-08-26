import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/feedback/feedback_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [ProgressDelegate]: a single horizontal bar.
class BasicProgressDelegate extends ProgressDelegate {
  /// Creates a baseline progress delegate.
  const BasicProgressDelegate();

  @override
  Widget root(ProgressContext context) {
    final theme = MantleTheme.of(context.context);
    final scheme = MantleProvider.colorSchemeOf(context.context);
    final height = resolveNamedSize(progressSizes, context.size) * theme.scale;
    final fill = resolveFilledColor(theme, scheme, context.color);
    final track = trackColor(theme, scheme);
    final t = (context.value / 100).clamp(0.0, 1.0);
    final striped = context.striped || context.animated;

    return Semantics(
      container: true,
      value: '${context.value.round()}%',
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: context.radius is BorderRadius
              ? context.radius as BorderRadius
              : BorderRadius.zero,
          child: ColoredBox(
            color: track,
            child: Align(
              alignment: Alignment.centerLeft,
              child: FractionallySizedBox(
                widthFactor: t,
                heightFactor: 1,
                child: striped
                    ? _StripedSection(
                        color: fill,
                        animated:
                            context.animated && !theme.respectReducedMotion,
                      )
                    : ColoredBox(color: fill),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _StripedSection extends StatefulWidget {
  const _StripedSection({
    required this.color,
    required this.animated,
  });

  final Color color;
  final bool animated;

  @override
  State<_StripedSection> createState() => _StripedSectionState();
}

class _StripedSectionState extends State<_StripedSection>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    if (widget.animated) {
      unawaited(_controller.repeat());
    }
  }

  @override
  void didUpdateWidget(covariant _StripedSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.animated != widget.animated) {
      if (widget.animated) {
        unawaited(_controller.repeat());
      } else {
        _controller
          ..stop()
          ..value = 0;
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return CustomPaint(
          painter: _StripePainter(
            color: widget.color,
            offset: _controller.value * 40,
          ),
          child: const SizedBox.expand(),
        );
      },
    );
  }
}

class _StripePainter extends CustomPainter {
  _StripePainter({required this.color, required this.offset});

  final Color color;
  final double offset;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(Offset.zero & size, Paint()..color = color);
    final stripe = Paint()
      ..color = const Color(0x26FFFFFF)
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;
    const period = 20.0;
    final start = -size.height - period + (offset % period);
    for (var x = start; x < size.width + size.height; x += period) {
      canvas.drawLine(
        Offset(x, size.height),
        Offset(x + size.height, 0),
        stripe,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _StripePainter oldDelegate) {
    return oldDelegate.color != color || oldDelegate.offset != offset;
  }
}
