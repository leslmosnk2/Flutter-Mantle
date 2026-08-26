import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/overlays/overlay_chrome.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [DrawerDelegate]: a sliding side panel over a barrier.
class BasicDrawerDelegate extends DrawerDelegate {
  /// Creates a baseline drawer delegate.
  const BasicDrawerDelegate();

  @override
  Widget root(DrawerContext context) {
    if (!context.opened) {
      return const SizedBox.shrink();
    }
    final theme = MantleTheme.of(context.context);
    final size = context.size ?? 440;
    final panel = overlayPanel(
      context: context.context,
      width:
          context.position == DrawerPosition.top ||
              context.position == DrawerPosition.bottom
          ? null
          : size,
      height:
          context.position == DrawerPosition.left ||
              context.position == DrawerPosition.right
          ? null
          : size,
      padding: EdgeInsets.zero,
      child: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              overlayHeader(
                context: context.context,
                title: context.title,
                onClose: context.onClose,
                withCloseButton: context.withCloseButton,
              ),
              Expanded(child: context.child),
            ],
          ),
        ),
      ),
    );
    final aligned = Align(
      alignment: _alignment(context.position),
      child: panel,
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

  Alignment _alignment(DrawerPosition position) {
    return switch (position) {
      DrawerPosition.left => Alignment.centerLeft,
      DrawerPosition.right => Alignment.centerRight,
      DrawerPosition.top => Alignment.topCenter,
      DrawerPosition.bottom => Alignment.bottomCenter,
    };
  }
}
