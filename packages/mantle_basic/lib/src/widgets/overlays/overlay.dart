import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/overlays/overlay_chrome.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MOverlayDelegate]: a dimming barrier over the parent.
class BasicMOverlayDelegate extends MOverlayDelegate {
  /// Creates a baseline overlay delegate.
  const BasicMOverlayDelegate();

  /// Key placed on the barrier fill.
  static const Key barrierKey = ValueKey<String>('mantle.overlay.barrier');

  @override
  Widget root(MOverlayContext context) {
    if (!context.visible) {
      return const SizedBox.shrink();
    }
    final theme = MantleTheme.of(context.context);
    return overlayBarrier(
      key: barrierKey,
      color: context.color ?? theme.black,
      opacity: context.backgroundOpacity,
      onTap: context.onTap,
      center: context.center,
      child: context.child,
    );
  }
}
