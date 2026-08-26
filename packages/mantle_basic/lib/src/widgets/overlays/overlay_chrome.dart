import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// First descendant of type [T] in [children], or null.
T? firstOverlayChild<T extends Widget>(List<Widget> children) {
  for (final child in children) {
    if (child is T) {
      return child;
    }
  }
  return null;
}

/// Paper-like panel used by dialog, dropdown, and window chrome.
Widget overlayPanel({
  required BuildContext context,
  required Widget child,
  double? width,
  double? height,
  bool withBorder = true,
  EdgeInsetsGeometry? padding,
}) {
  final theme = MantleTheme.of(context);
  final radius = BorderRadius.all(theme.resolvedDefaultRadius);
  return DecoratedBox(
    decoration: BoxDecoration(
      color: theme.white,
      borderRadius: radius,
      border: withBorder ? Border.all(color: theme.colors['gray'][2]) : null,
    ),
    child: SizedBox(
      width: width,
      height: height,
      child: Padding(
        padding: padding ?? const EdgeInsets.all(16),
        child: child,
      ),
    ),
  );
}

/// Full-size dimming barrier.
Widget overlayBarrier({
  required Color color,
  required double opacity,
  VoidCallback? onTap,
  Widget? child,
  bool center = false,
  Key? key,
}) {
  final fill = ColoredBox(
    key: key,
    color: color.withValues(alpha: opacity),
    child: child == null
        ? null
        : center
        ? Center(child: child)
        : child,
  );
  if (onTap == null) {
    return fill;
  }
  return GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: onTap,
    child: fill,
  );
}

/// Compact "×" control used by dialog, modal, drawer, and window headers.
class OverlayCloseControl extends StatelessWidget {
  /// Creates a close control.
  const OverlayCloseControl({required this.onPressed, super.key});

  /// Key placed on the tappable close control.
  static const Key tapKey = ValueKey<String>('mantle.overlay.close');

  /// Called when the control is tapped.
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: tapKey,
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: const Padding(
        padding: EdgeInsets.all(4),
        child: Text('×', style: TextStyle(fontSize: 18, height: 1)),
      ),
    );
  }
}

/// Header row with optional title and close control.
Widget overlayHeader({
  required BuildContext context,
  Widget? title,
  VoidCallback? onClose,
  bool withCloseButton = true,
}) {
  if (title == null && !withCloseButton) {
    return const SizedBox.shrink();
  }
  final theme = MantleTheme.of(context);
  return Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (title != null)
          DefaultTextStyle.merge(
            style: theme.typography.headings.h5,
            child: title,
          ),
        if (title != null && withCloseButton) const SizedBox(width: 8),
        if (withCloseButton) OverlayCloseControl(onPressed: onClose),
      ],
    ),
  );
}

/// Default Affix / Dialog edges when the caller omits a position.
({double? top, double? left, double? bottom, double? right}) resolveCorner({
  double? top,
  double? left,
  double? bottom,
  double? right,
  double defaultBottom = 0,
  double defaultRight = 0,
}) {
  if (top == null && left == null && bottom == null && right == null) {
    return (
      top: null,
      left: null,
      bottom: defaultBottom,
      right: defaultRight,
    );
  }
  return (top: top, left: left, bottom: bottom, right: right);
}

/// Spinning arc used by LoadingOverlay.
class OverlayLoader extends StatefulWidget {
  /// Creates a loader.
  const OverlayLoader({this.color, this.size = 24, super.key});

  /// Key placed on the loader.
  static const Key loaderKey = ValueKey<String>('mantle.overlay.loader');

  /// Stroke color.
  final Color? color;

  /// Box size.
  final double size;

  @override
  State<OverlayLoader> createState() => _OverlayLoaderState();
}

class _OverlayLoaderState extends State<OverlayLoader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    unawaited(_controller.repeat());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = MantleTheme.of(context);
    return RotationTransition(
      turns: _controller,
      child: CustomPaint(
        size: Size.square(widget.size),
        painter: _OverlayLoaderPainter(color: widget.color ?? theme.black),
      ),
    );
  }
}

class _OverlayLoaderPainter extends CustomPainter {
  _OverlayLoaderPainter({required this.color});

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
  bool shouldRepaint(covariant _OverlayLoaderPainter oldDelegate) {
    return oldDelegate.color != color;
  }
}
