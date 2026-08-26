import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/overlays/overlay_chrome.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [DialogDelegate]: a small corner panel without a barrier.
class BasicDialogDelegate extends DialogDelegate {
  /// Creates a baseline dialog delegate.
  const BasicDialogDelegate();

  @override
  Widget root(DialogContext context) {
    if (!context.opened) {
      return const SizedBox.shrink();
    }
    final edges = resolveCorner(
      top: context.top,
      left: context.left,
      bottom: context.bottom,
      right: context.right,
      defaultBottom: 30,
      defaultRight: 30,
    );
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: edges.top,
          left: edges.left,
          bottom: edges.bottom,
          right: edges.right,
          child: overlayPanel(
            context: context.context,
            width: context.width ?? 340,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (context.withCloseButton)
                  Align(
                    alignment: Alignment.topRight,
                    child: OverlayCloseControl(onPressed: context.onClose),
                  ),
                context.child,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
