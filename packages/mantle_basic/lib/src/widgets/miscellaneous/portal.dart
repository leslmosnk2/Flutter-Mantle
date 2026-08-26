import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [PortalDelegate]: paints [PortalContext.child] in an [Overlay].
class BasicPortalDelegate extends PortalDelegate {
  /// Creates a baseline portal delegate.
  const BasicPortalDelegate();

  @override
  Widget root(PortalContext context) {
    return _PortalHost(child: context.child);
  }
}

class _PortalHost extends StatefulWidget {
  const _PortalHost({required this.child});

  final Widget child;

  @override
  State<_PortalHost> createState() => _PortalHostState();
}

class _PortalHostState extends State<_PortalHost> {
  final OverlayPortalController _controller = OverlayPortalController();

  @override
  void initState() {
    super.initState();
    _controller.show();
  }

  @override
  Widget build(BuildContext context) {
    final portal = OverlayPortal(
      controller: _controller,
      overlayChildBuilder: (context) => widget.child,
      child: const SizedBox.shrink(),
    );
    if (Overlay.maybeOf(context) != null) {
      return portal;
    }
    return Overlay(
      initialEntries: [
        OverlayEntry(builder: (context) => portal),
      ],
    );
  }
}
