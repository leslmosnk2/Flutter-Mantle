import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/overlays/overlay_chrome.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [FloatingWindowDelegate]: a positioned, optionally draggable panel.
class BasicFloatingWindowDelegate extends FloatingWindowDelegate {
  /// Creates a baseline floating-window delegate.
  const BasicFloatingWindowDelegate();

  @override
  Widget root(FloatingWindowContext context) {
    return _BasicFloatingWindow(windowContext: context);
  }
}

class _BasicFloatingWindow extends StatefulWidget {
  const _BasicFloatingWindow({required this.windowContext});

  final FloatingWindowContext windowContext;

  @override
  State<_BasicFloatingWindow> createState() => _BasicFloatingWindowState();
}

class _BasicFloatingWindowState extends State<_BasicFloatingWindow> {
  late double _left;
  late double _top;

  @override
  void initState() {
    super.initState();
    _left = widget.windowContext.left;
    _top = widget.windowContext.top;
  }

  @override
  void didUpdateWidget(covariant _BasicFloatingWindow oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.windowContext.left != widget.windowContext.left) {
      _left = widget.windowContext.left;
    }
    if (oldWidget.windowContext.top != widget.windowContext.top) {
      _top = widget.windowContext.top;
    }
  }

  void _onDrag(DragUpdateDetails details, BoxConstraints constraints) {
    final ctx = widget.windowContext;
    if (!ctx.enabled) {
      return;
    }
    var dx = details.delta.dx;
    var dy = details.delta.dy;
    if (ctx.axis == FloatingWindowAxis.x) {
      dy = 0;
    } else if (ctx.axis == FloatingWindowAxis.y) {
      dx = 0;
    }
    setState(() {
      _left += dx;
      _top += dy;
      if (ctx.constrainToViewport) {
        final width = ctx.width ?? 200;
        final height = ctx.height ?? 120;
        _left = _left.clamp(0, math.max(0, constraints.maxWidth - width));
        _top = _top.clamp(0, math.max(0, constraints.maxHeight - height));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final ctx = widget.windowContext;
    final panel = overlayPanel(
      context: ctx.context,
      width: ctx.width,
      height: ctx.height,
      withBorder: ctx.withBorder,
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onPanUpdate: ctx.enabled
                ? (details) {
                    final box = context.findRenderObject() as RenderBox?;
                    final constraints = box == null
                        ? const BoxConstraints()
                        : BoxConstraints.tight(box.size);
                    _onDrag(details, constraints);
                  }
                : null,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 8, 8),
              child: overlayHeader(
                context: ctx.context,
                title: ctx.title,
                onClose: ctx.onClose,
                withCloseButton: ctx.onClose != null,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: ctx.child,
          ),
        ],
      ),
    );
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              left: _left,
              top: _top,
              width: ctx.width,
              height: ctx.height,
              child: panel,
            ),
          ],
        );
      },
    );
  }
}
