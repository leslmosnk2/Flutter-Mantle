import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/overlays/overlay_chrome.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline LoadingOverlayDelegate: stacks a barrier and loader over `child`.
class BasicLoadingOverlayDelegate extends LoadingOverlayDelegate {
  /// Creates a baseline loading-overlay delegate.
  const BasicLoadingOverlayDelegate();

  /// Key placed on the loader.
  static const Key loaderKey = OverlayLoader.loaderKey;

  @override
  Widget root(LoadingOverlayContext context) {
    final theme = MantleTheme.of(context.context);
    return Stack(
      fit: StackFit.passthrough,
      children: [
        context.child,
        if (context.visible)
          Positioned.fill(
            child: overlayBarrier(
              color: theme.white,
              opacity: context.backgroundOpacity,
              center: true,
              child: const OverlayLoader(key: OverlayLoader.loaderKey),
            ),
          ),
      ],
    );
  }
}
