import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MarqueeDelegate]: a looping translating strip.
class BasicMarqueeDelegate extends MarqueeDelegate {
  /// Creates a baseline marquee delegate.
  const BasicMarqueeDelegate();

  @override
  Widget root(MarqueeContext context) {
    return _MarqueeRoot(marqueeContext: context);
  }
}

class _MarqueeRoot extends StatefulWidget {
  const _MarqueeRoot({required this.marqueeContext});

  final MarqueeContext marqueeContext;

  @override
  State<_MarqueeRoot> createState() => _MarqueeRootState();
}

class _MarqueeRootState extends State<_MarqueeRoot>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final GlobalKey _measureKey = GlobalKey();
  double _extent = 0;
  var _paused = false;

  MarqueeContext get _ctx => widget.marqueeContext;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: _ctx.duration.clamp(1, 1 << 30)),
    );
    unawaited(_controller.repeat());
    WidgetsBinding.instance.addPostFrameCallback((_) => _measure());
  }

  @override
  void didUpdateWidget(covariant _MarqueeRoot oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.marqueeContext.duration != _ctx.duration) {
      _controller.duration = Duration(
        milliseconds: _ctx.duration.clamp(1, 1 << 30),
      );
      unawaited(_controller.repeat());
    }
    WidgetsBinding.instance.addPostFrameCallback((_) => _measure());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _measure() {
    final box = _measureKey.currentContext?.findRenderObject() as RenderBox?;
    if (box == null || !box.hasSize) {
      return;
    }
    final extent = _ctx.orientation == Axis.horizontal
        ? box.size.width
        : box.size.height;
    if (extent != _extent) {
      setState(() => _extent = extent);
    }
  }

  void _setPaused(bool paused) {
    if (!_ctx.pauseOnHover || paused == _paused) {
      return;
    }
    setState(() => _paused = paused);
    if (paused) {
      _controller.stop();
    } else {
      unawaited(_controller.repeat());
    }
  }

  Widget _group({Key? key}) {
    final theme = MantleTheme.of(_ctx.context);
    final gap = resolveSpacing(theme, _ctx.gap);
    return Flex(
      key: key,
      direction: _ctx.orientation,
      mainAxisSize: MainAxisSize.min,
      children: childrenWithGap(
        _ctx.children,
        gap,
        axis: _ctx.orientation,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final horizontal = _ctx.orientation == Axis.horizontal;
    final copies = _ctx.repeat < 2 ? 2 : _ctx.repeat;
    final theme = MantleTheme.of(_ctx.context);
    final gap = resolveSpacing(theme, _ctx.gap);
    Widget strip = AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final t = _ctx.reverse ? 1 - _controller.value : _controller.value;
        final offset = _extent <= 0 ? 0.0 : t * (_extent + gap);
        return Transform.translate(
          offset: horizontal ? Offset(-offset, 0) : Offset(0, -offset),
          child: child,
        );
      },
      child: OverflowBox(
        alignment: horizontal ? Alignment.centerLeft : Alignment.topCenter,
        minWidth: 0,
        maxWidth: horizontal ? double.infinity : null,
        minHeight: 0,
        maxHeight: horizontal ? null : double.infinity,
        child: Flex(
          direction: _ctx.orientation,
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i = 0; i < copies; i++) ...[
              if (i > 0)
                if (horizontal) SizedBox(width: gap) else SizedBox(height: gap),
              _group(key: i == 0 ? _measureKey : null),
            ],
          ],
        ),
      ),
    );
    strip = ClipRect(child: strip);
    if (_ctx.fadeEdges) {
      final fade = _ctx.fadeEdgeSize.clamp(0.0, 0.5);
      strip = ShaderMask(
        blendMode: BlendMode.dstIn,
        shaderCallback: (rect) {
          return LinearGradient(
            begin: horizontal ? Alignment.centerLeft : Alignment.topCenter,
            end: horizontal ? Alignment.centerRight : Alignment.bottomCenter,
            colors: const [
              Color(0x00000000),
              Color(0xFFFFFFFF),
              Color(0xFFFFFFFF),
              Color(0x00000000),
            ],
            stops: [0, fade, 1 - fade, 1],
          ).createShader(rect);
        },
        child: strip,
      );
    }
    if (_ctx.pauseOnHover) {
      strip = MouseRegion(
        onEnter: (_) => _setPaused(true),
        onExit: (_) => _setPaused(false),
        child: strip,
      );
    }
    return strip;
  }
}
