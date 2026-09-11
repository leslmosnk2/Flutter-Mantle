import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/overlays/overlay_chrome.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MenubarDelegate]: a horizontal row of [MenubarMenu] widgets.
class BasicMenubarDelegate extends MenubarDelegate {
  /// Creates a baseline menubar delegate.
  const BasicMenubarDelegate();

  @override
  Widget root(MenubarContext context) {
    return MenubarScope(
      openIndex: context.openIndex,
      trigger: context.trigger,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 0; i < context.children.length; i++)
            MenubarMenuIndex(index: i, child: context.children[i]),
        ],
      ),
    );
  }
}

/// Baseline [MenubarMenuDelegate]: one top-level menu in the bar.
class BasicMenubarMenuDelegate extends MenubarMenuDelegate {
  /// Creates a baseline menubar-menu delegate.
  const BasicMenubarMenuDelegate();

  @override
  Widget root(MenubarMenuContext context) {
    final scope = MenubarScope.maybeOf(context.context);
    final index = MenubarMenuIndex.maybeOf(context.context);
    final opened = scope != null && index != null && scope.openIndex == index;
    final target = firstOverlayChild<MenubarTarget>(context.children);
    final dropdown = firstOverlayChild<MenubarDropdown>(context.children);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        target ?? const SizedBox.shrink(),
        if (opened && dropdown != null) dropdown,
      ],
    );
  }
}

/// Baseline [MenubarTargetDelegate]: a top-level trigger button.
class BasicMenubarTargetDelegate extends MenubarTargetDelegate {
  /// Creates a baseline menubar-target delegate.
  const BasicMenubarTargetDelegate();

  @override
  Widget root(MenubarTargetContext context) {
    final theme = MantleTheme.of(context.context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: DefaultTextStyle.merge(
        style: theme.typography.body.copyWith(
          fontSize: theme.typography.fontSize['sm'],
        ),
        child: context.child,
      ),
    );
  }
}

/// Baseline [MenubarDropdownDelegate]: dropdown under a [MenubarTarget].
class BasicMenubarDropdownDelegate extends MenubarDropdownDelegate {
  /// Creates a baseline menubar-dropdown delegate.
  const BasicMenubarDropdownDelegate();

  @override
  Widget root(MenubarDropdownContext context) {
    return overlayPanel(
      context: context.context,
      padding: const EdgeInsets.all(4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: context.children,
      ),
    );
  }
}
