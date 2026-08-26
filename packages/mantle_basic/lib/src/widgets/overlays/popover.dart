import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/overlays/overlay_chrome.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline PopoverDelegate: target plus a dropdown when opened.
class BasicPopoverDelegate extends PopoverDelegate {
  /// Creates a baseline popover delegate.
  const BasicPopoverDelegate();

  @override
  Widget root(PopoverContext context) {
    final target = firstOverlayChild<PopoverTarget>(context.children);
    final dropdown = firstOverlayChild<PopoverDropdown>(context.children);
    return PopoverScope(
      opened: context.opened,
      position: context.position,
      child: _placed(
        position: context.position,
        target: target ?? const SizedBox.shrink(),
        dropdown: context.opened ? dropdown : null,
      ),
    );
  }
}

/// Baseline [PopoverTargetDelegate]: the popover anchor.
class BasicPopoverTargetDelegate extends PopoverTargetDelegate {
  /// Creates a baseline popover-target delegate.
  const BasicPopoverTargetDelegate();

  @override
  Widget root(PopoverTargetContext context) => context.child;
}

/// Baseline [PopoverDropdownDelegate]: the floating panel.
class BasicPopoverDropdownDelegate extends PopoverDropdownDelegate {
  /// Creates a baseline popover-dropdown delegate.
  const BasicPopoverDropdownDelegate();

  @override
  Widget root(PopoverDropdownContext context) {
    return overlayPanel(context: context.context, child: context.child);
  }
}

Widget _placed({
  required OverlayPlacement position,
  required Widget target,
  Widget? dropdown,
}) {
  if (dropdown == null) {
    return target;
  }
  return switch (position) {
    OverlayPlacement.bottom => Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [target, const SizedBox(height: 8), dropdown],
    ),
    OverlayPlacement.top => Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [dropdown, const SizedBox(height: 8), target],
    ),
    OverlayPlacement.right => Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [target, const SizedBox(width: 8), dropdown],
    ),
    OverlayPlacement.left => Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [dropdown, const SizedBox(width: 8), target],
    ),
  };
}
