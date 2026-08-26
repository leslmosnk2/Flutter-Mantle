import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/overlays/overlay_chrome.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [ModalDelegate]: centered panel over a barrier.
class BasicModalDelegate extends ModalDelegate {
  /// Creates a baseline modal delegate.
  const BasicModalDelegate();

  @override
  Widget root(ModalContext context) {
    if (!context.opened) {
      return const SizedBox.shrink();
    }
    final theme = MantleTheme.of(context.context);
    final panel = overlayPanel(
      context: context.context,
      width: context.fullScreen ? null : 440,
      child: Column(
        mainAxisSize: context.fullScreen ? MainAxisSize.max : MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          overlayHeader(
            context: context.context,
            title: context.title,
            onClose: context.onClose,
            withCloseButton: context.withCloseButton,
          ),
          context.child,
        ],
      ),
    );
    final aligned = Align(
      alignment: context.centered || context.fullScreen
          ? Alignment.center
          : Alignment.topCenter,
      child: context.fullScreen
          ? SizedBox.expand(child: panel)
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: panel,
            ),
    );
    if (!context.withOverlay) {
      return aligned;
    }
    return Stack(
      fit: StackFit.expand,
      children: [
        overlayBarrier(
          color: theme.black,
          opacity: 0.6,
          onTap: context.onClose,
        ),
        aligned,
      ],
    );
  }
}

/// Baseline ModalRootDelegate: barrier + child without header chrome.
class BasicModalRootDelegate extends ModalRootDelegate {
  /// Creates a baseline modal-root delegate.
  const BasicModalRootDelegate();

  @override
  Widget root(ModalRootContext context) {
    if (!context.opened) {
      return const SizedBox.shrink();
    }
    final theme = MantleTheme.of(context.context);
    if (!context.withOverlay) {
      return context.child;
    }
    return Stack(
      fit: StackFit.expand,
      children: [
        overlayBarrier(
          color: theme.black,
          opacity: 0.6,
          onTap: context.onClose,
        ),
        Center(child: context.child),
      ],
    );
  }
}
