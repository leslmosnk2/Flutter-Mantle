import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/overlays/overlay_chrome.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline HoverCardDelegate: popover that opens while the pointer is
/// over it.
class BasicHoverCardDelegate extends HoverCardDelegate {
  /// Creates a baseline hover-card delegate.
  const BasicHoverCardDelegate();

  @override
  Widget root(HoverCardContext context) {
    return _BasicHoverCard(hoverContext: context);
  }
}

class _BasicHoverCard extends StatefulWidget {
  const _BasicHoverCard({required this.hoverContext});

  final HoverCardContext hoverContext;

  @override
  State<_BasicHoverCard> createState() => _BasicHoverCardState();
}

class _BasicHoverCardState extends State<_BasicHoverCard> {
  late bool _opened;

  @override
  void initState() {
    super.initState();
    _opened = widget.hoverContext.initiallyOpened;
  }

  @override
  Widget build(BuildContext context) {
    final children = widget.hoverContext.children;
    final target = firstOverlayChild<HoverCardTarget>(children);
    final dropdown = firstOverlayChild<HoverCardDropdown>(children);
    return HoverCardScope(
      opened: _opened,
      child: MouseRegion(
        onEnter: (_) => setState(() => _opened = true),
        onExit: (_) => setState(() => _opened = false),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            target ?? const SizedBox.shrink(),
            if (_opened && dropdown != null) ...[
              const SizedBox(height: 8),
              dropdown,
            ],
          ],
        ),
      ),
    );
  }
}

/// Baseline [HoverCardTargetDelegate]: the hover target.
class BasicHoverCardTargetDelegate extends HoverCardTargetDelegate {
  /// Creates a baseline hover-card-target delegate.
  const BasicHoverCardTargetDelegate();

  @override
  Widget root(HoverCardTargetContext context) => context.child;
}

/// Baseline [HoverCardDropdownDelegate]: the hover dropdown panel.
class BasicHoverCardDropdownDelegate extends HoverCardDropdownDelegate {
  /// Creates a baseline hover-card-dropdown delegate.
  const BasicHoverCardDropdownDelegate();

  @override
  Widget root(HoverCardDropdownContext context) {
    return overlayPanel(context: context.context, child: context.child);
  }
}
