import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/feedback/feedback_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [LoaderDelegate]: oval, bars, or dots spinner.
class BasicLoaderDelegate extends LoaderDelegate {
  /// Creates a baseline loader delegate.
  const BasicLoaderDelegate();

  @override
  Widget root(LoaderContext context) {
    if (context.child != null) {
      return context.child!;
    }
    final theme = MantleTheme.of(context.context);
    final scheme = MantleProvider.colorSchemeOf(context.context);
    final size = resolveNamedSize(loaderSizes, context.size) * theme.scale;
    final color = resolveFilledColor(theme, scheme, context.color);
    final type = switch (context.variant) {
      LoaderVariant.bars => _LoaderType.bars,
      LoaderVariant.dots => _LoaderType.dots,
      LoaderVariant.defaults || LoaderVariant.oval => _LoaderType.oval,
    };
    return _BasicLoader(
      size: size,
      color: color,
      type: type,
      reducedMotion: theme.respectReducedMotion,
    );
  }
}

enum _LoaderType { oval, bars, dots }

class _BasicLoader extends StatefulWidget {
  const _BasicLoader({
    required this.size,
    required this.color,
    required this.type,
    required this.reducedMotion,
  });

  final double size;
  final Color color;
  final _LoaderType type;
  final bool reducedMotion;

  @override
  State<_BasicLoader> createState() => _BasicLoaderState();
}

class _BasicLoaderState extends State<_BasicLoader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  Duration get _duration => switch (widget.type) {
    _LoaderType.dots => const Duration(milliseconds: 800),
    _LoaderType.oval || _LoaderType.bars => const Duration(milliseconds: 1200),
  };

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: _duration);
    if (!widget.reducedMotion) {
      unawaited(_controller.repeat());
    }
  }

  @override
  void didUpdateWidget(covariant _BasicLoader oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.type != widget.type) {
      _controller.duration = _duration;
    }
    if (oldWidget.reducedMotion != widget.reducedMotion) {
      if (widget.reducedMotion) {
        _controller
          ..stop()
          ..value = 0;
      } else {
        unawaited(_controller.repeat());
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
        return switch (widget.type) {
          _LoaderType.oval => _OvalLoader(
            size: widget.size,
            color: widget.color,
            turns: _controller.value,
          ),
          _LoaderType.bars => _BarsLoader(
            size: widget.size,
            color: widget.color,
            t: _controller.value,
          ),
          _LoaderType.dots => _DotsLoader(
            size: widget.size,
            color: widget.color,
            t: _controller.value,
          ),
        };
      },
    );
  }
}

class _OvalLoader extends StatelessWidget {
  const _OvalLoader({
    required this.size,
    required this.color,
    required this.turns,
  });

  final double size;
  final Color color;
  final double turns;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: turns * math.pi * 2,
      child: CustomPaint(
        size: Size.square(size),
        painter: _OvalLoaderPainter(color: color),
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

class _BarsLoader extends StatelessWidget {
  const _BarsLoader({
    required this.size,
    required this.color,
    required this.t,
  });

  final double size;
  final Color color;
  final double t;

  @override
  Widget build(BuildContext context) {
    final gap = size / 5;
    return SizedBox(
      width: size,
      height: size,
      child: Row(
        children: [
          for (var i = 0; i < 3; i++) ...[
            if (i > 0) SizedBox(width: gap),
            Expanded(
              child: Transform.scale(
                scale: _barScale(i),
                alignment: Alignment.bottomCenter,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: _barOpacity(i)),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: const SizedBox.expand(),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  double _phase(int index) {
    // Delays: -240ms, -120ms, 0 of a 1200ms loop.
    final delay = (2 - index) * 0.2;
    return (t + delay) % 1;
  }

  double _barScale(int index) {
    final p = _phase(index);
    if (p < 0.5) {
      return 0.6 + 0.4 * (p / 0.5);
    }
    return 1;
  }

  double _barOpacity(int index) {
    final p = _phase(index);
    if (p < 0.5) {
      return p / 0.5;
    }
    return 1;
  }
}

class _DotsLoader extends StatelessWidget {
  const _DotsLoader({
    required this.size,
    required this.color,
    required this.t,
  });

  final double size;
  final Color color;
  final double t;

  @override
  Widget build(BuildContext context) {
    final gap = size / 10;
    final dot = size / 3 - size / 15;
    return SizedBox(
      width: size,
      height: size,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 0; i < 3; i++) ...[
            if (i > 0) SizedBox(width: gap),
            Transform.scale(
              scale: _dotScale(i),
              child: Opacity(
                opacity: _dotOpacity(i),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                  child: SizedBox.square(dimension: dot),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  double _phase(int index) {
    // Second dot delayed by 0.4s of an 0.8s loop.
    final delay = index == 1 ? 0.5 : 0;
    return (t + delay) % 1;
  }

  double _dotScale(int index) {
    final p = _phase(index);
    final wave = p < 0.5 ? p / 0.5 : 1 - (p - 0.5) / 0.5;
    return 1 - 0.4 * wave;
  }

  double _dotOpacity(int index) {
    final p = _phase(index);
    final wave = p < 0.5 ? p / 0.5 : 1 - (p - 0.5) / 0.5;
    return 1 - 0.5 * wave;
  }
}
