import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/data_display/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [ScrollerDelegate]: horizontal strip with chevron controls.
class BasicScrollerDelegate extends ScrollerDelegate {
  /// Creates a baseline scroller delegate.
  const BasicScrollerDelegate();

  /// Key on the start (leading) control.
  static const Key startControlKey = ValueKey<String>(
    'mantle.scroller.start',
  );

  /// Key on the end (trailing) control.
  static const Key endControlKey = ValueKey<String>('mantle.scroller.end');

  @override
  Widget root(ScrollerContext context) {
    return _ScrollerRoot(scrollerContext: context);
  }
}

class _ScrollerRoot extends StatefulWidget {
  const _ScrollerRoot({required this.scrollerContext});

  final ScrollerContext scrollerContext;

  @override
  State<_ScrollerRoot> createState() => _ScrollerRootState();
}

class _ScrollerRootState extends State<_ScrollerRoot> {
  final ScrollController _controller = ScrollController();
  var _canStart = false;
  var _canEnd = false;

  ScrollerContext get _ctx => widget.scrollerContext;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_updateEdges);
    WidgetsBinding.instance.addPostFrameCallback((_) => _updateEdges());
  }

  @override
  void dispose() {
    _controller
      ..removeListener(_updateEdges)
      ..dispose();
    super.dispose();
  }

  void _updateEdges() {
    if (!_controller.hasClients) {
      return;
    }
    final position = _controller.position;
    final canStart = position.pixels > 0.5;
    final canEnd = position.pixels < position.maxScrollExtent - 0.5;
    if (canStart != _canStart || canEnd != _canEnd) {
      setState(() {
        _canStart = canStart;
        _canEnd = canEnd;
      });
    }
  }

  void _scrollBy(double delta) {
    if (!_controller.hasClients) {
      return;
    }
    final target = (_controller.offset + delta).clamp(
      0.0,
      _controller.position.maxScrollExtent,
    );
    unawaited(
      _controller.animateTo(
        target,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
      ),
    );
  }

  Widget _control({
    required Key key,
    required bool show,
    required AlignmentGeometry alignment,
    required VoidCallback onTap,
    required Widget icon,
    required bool start,
  }) {
    final body = bodyColor(_ctx.context);
    return Positioned(
      left: start ? 0 : null,
      right: start ? null : 0,
      top: 0,
      bottom: 0,
      width: _ctx.controlSize,
      child: IgnorePointer(
        ignoring: !show,
        child: Opacity(
          opacity: show ? 1 : 0,
          child: GestureDetector(
            key: key,
            behavior: HitTestBehavior.opaque,
            onTap: onTap,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: start ? Alignment.centerLeft : Alignment.centerRight,
                  end: start ? Alignment.centerRight : Alignment.centerLeft,
                  colors: [
                    body,
                    body.withValues(alpha: 0),
                  ],
                ),
              ),
              child: Align(alignment: alignment, child: icon),
            ),
          ),
        ),
      ),
    );
  }

  Widget _chevron({required bool start}) {
    final theme = MantleTheme.of(_ctx.context);
    final color = isDarkScheme(_ctx.context)
        ? theme.colors['dark'][2]
        : theme.colors['gray'][6];
    return RotatedBox(
      quarterTurns: start ? 1 : 3,
      child: SizedBox(
        width: 16,
        height: 16,
        child: CustomPaint(painter: _ScrollerChevronPainter(color: color)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final showStart = _ctx.showStartControl || _canStart;
    final showEnd = _ctx.showEndControl || _canEnd;
    Widget scroller = SingleChildScrollView(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      child: _ctx.child,
    );
    if (_ctx.draggable) {
      scroller = GestureDetector(
        onHorizontalDragUpdate: (details) {
          if (!_controller.hasClients) {
            return;
          }
          final next = (_controller.offset - details.delta.dx).clamp(
            0.0,
            _controller.position.maxScrollExtent,
          );
          _controller.jumpTo(next);
        },
        child: scroller,
      );
    }
    return Stack(
      children: [
        NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            _updateEdges();
            return false;
          },
          child: scroller,
        ),
        _control(
          key: BasicScrollerDelegate.startControlKey,
          show: showStart,
          alignment: Alignment.centerLeft,
          onTap: () => _scrollBy(-_ctx.scrollAmount),
          icon: _ctx.startControlIcon ?? _chevron(start: true),
          start: true,
        ),
        _control(
          key: BasicScrollerDelegate.endControlKey,
          show: showEnd,
          alignment: Alignment.centerRight,
          onTap: () => _scrollBy(_ctx.scrollAmount),
          icon: _ctx.endControlIcon ?? _chevron(start: false),
          start: false,
        ),
      ],
    );
  }
}

class _ScrollerChevronPainter extends CustomPainter {
  _ScrollerChevronPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    final path = Path()
      ..moveTo(size.width * 0.2, size.height * 0.35)
      ..lineTo(size.width * 0.5, size.height * 0.65)
      ..lineTo(size.width * 0.8, size.height * 0.35);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _ScrollerChevronPainter oldDelegate) {
    return oldDelegate.color != color;
  }
}
