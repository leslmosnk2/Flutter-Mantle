import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/feedback/feedback_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [SkeletonDelegate]: pulsing placeholder or overlay.
class BasicSkeletonDelegate extends SkeletonDelegate {
  /// Creates a baseline skeleton delegate.
  const BasicSkeletonDelegate();

  @override
  Widget root(SkeletonContext context) {
    final theme = MantleTheme.of(context.context);
    final scheme = MantleProvider.colorSchemeOf(context.context);
    final overlay = skeletonColor(theme, scheme);
    final radius = context.circle
        ? BorderRadius.circular(1000)
        : (context.radius is BorderRadius
              ? context.radius as BorderRadius
              : BorderRadius.zero);
    final width = context.circle ? context.height : context.width;
    final height = context.height;

    Widget content;
    if (context.child != null) {
      content = context.child!;
      if (width != null || height != null) {
        content = SizedBox(width: width, height: height, child: content);
      }
    } else {
      content = SizedBox(width: width, height: height);
    }

    if (!context.visible) {
      return ClipRRect(borderRadius: radius, child: content);
    }

    final animate = context.animate && !theme.respectReducedMotion;
    return ClipRRect(
      borderRadius: radius,
      child: Stack(
        children: [
          content,
          Positioned.fill(
            child: _SkeletonOverlay(color: overlay, animate: animate),
          ),
        ],
      ),
    );
  }
}

class _SkeletonOverlay extends StatefulWidget {
  const _SkeletonOverlay({required this.color, required this.animate});

  final Color color;
  final bool animate;

  @override
  State<_SkeletonOverlay> createState() => _SkeletonOverlayState();
}

class _SkeletonOverlayState extends State<_SkeletonOverlay>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    if (widget.animate) {
      unawaited(_controller.repeat());
    }
  }

  @override
  void didUpdateWidget(covariant _SkeletonOverlay oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.animate != widget.animate) {
      if (widget.animate) {
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
        final wave =
            (_controller.value < 0.5
                    ? _controller.value / 0.5
                    : 1 - (_controller.value - 0.5) / 0.5)
                .clamp(0.0, 1.0);
        final opacity = widget.animate ? 0.4 + 0.6 * wave : 1.0;
        return ColoredBox(color: widget.color.withValues(alpha: opacity));
      },
    );
  }
}
