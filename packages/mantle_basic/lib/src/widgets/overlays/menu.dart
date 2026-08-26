import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/overlays/overlay_chrome.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline MenuDelegate: target plus a list of items when opened.
class BasicMenuDelegate extends MenuDelegate {
  /// Creates a baseline menu delegate.
  const BasicMenuDelegate();

  @override
  Widget root(MenuContext context) {
    final target = firstOverlayChild<MenuTarget>(context.children);
    final dropdown = firstOverlayChild<MenuDropdown>(context.children);
    return MenuScope(
      opened: context.opened,
      closeOnItemClick: context.closeOnItemClick,
      onClose: context.onClose,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          target ?? const SizedBox.shrink(),
          if (context.opened && dropdown != null) ...[
            const SizedBox(height: 4),
            dropdown,
          ],
        ],
      ),
    );
  }
}

/// Baseline [MenuTargetDelegate]: the menu trigger.
class BasicMenuTargetDelegate extends MenuTargetDelegate {
  /// Creates a baseline menu-target delegate.
  const BasicMenuTargetDelegate();

  @override
  Widget root(MenuTargetContext context) {
    final scope = MenuScope.maybeOf(context.context);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (scope == null) {
          return;
        }
        if (scope.opened) {
          scope.onClose?.call();
        }
      },
      child: context.child,
    );
  }
}

/// Baseline [MenuDropdownDelegate]: the item list panel.
class BasicMenuDropdownDelegate extends MenuDropdownDelegate {
  /// Creates a baseline menu-dropdown delegate.
  const BasicMenuDropdownDelegate();

  @override
  Widget root(MenuDropdownContext context) {
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

/// Baseline [MenuItemDelegate]: a tappable row.
class BasicMenuItemDelegate extends MenuItemDelegate {
  /// Creates a baseline menu-item delegate.
  const BasicMenuItemDelegate();

  @override
  Widget root(MenuItemContext context) {
    final theme = MantleTheme.of(context.context);
    final scope = MenuScope.maybeOf(context.context);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: context.disabled
          ? null
          : () {
              context.onPressed?.call();
              if (scope?.closeOnItemClick ?? true) {
                scope?.onClose?.call();
              }
            },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: DefaultTextStyle.merge(
          style: theme.typography.body.copyWith(
            fontSize: theme.typography.fontSize['sm'],
            color: context.disabled ? theme.colors['gray'][5] : theme.black,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (context.leftSection != null) ...[
                context.leftSection!,
                const SizedBox(width: 10),
              ],
              context.child,
              if (context.rightSection != null) ...[
                const SizedBox(width: 10),
                context.rightSection!,
              ],
            ],
          ),
        ),
      ),
    );
  }
}

/// Baseline [MenuLabelDelegate]: a non-interactive section heading.
class BasicMenuLabelDelegate extends MenuLabelDelegate {
  /// Creates a baseline menu-label delegate.
  const BasicMenuLabelDelegate();

  @override
  Widget root(MenuLabelContext context) {
    final theme = MantleTheme.of(context.context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 4),
      child: DefaultTextStyle.merge(
        style: theme.typography.label.copyWith(
          fontSize: theme.typography.fontSize['xs'],
          color: theme.colors['gray'][6],
        ),
        child: context.child,
      ),
    );
  }
}

/// Baseline [MenuDividerDelegate]: a horizontal rule.
class BasicMenuDividerDelegate extends MenuDividerDelegate {
  /// Creates a baseline menu-divider delegate.
  const BasicMenuDividerDelegate();

  @override
  Widget root(MenuDividerContext context) {
    final theme = MantleTheme.of(context.context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ColoredBox(
        color: theme.colors['gray'][2],
        child: const SizedBox(height: 1, width: 160),
      ),
    );
  }
}
