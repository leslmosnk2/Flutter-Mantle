import 'package:flutter/widgets.dart';

/// Side of the screen a Drawer slides in from.
enum DrawerPosition {
  /// From the start edge (LTR left).
  left,

  /// From the end edge (LTR right).
  right,

  /// From the top edge.
  top,

  /// From the bottom edge.
  bottom,
}

/// Placement of a tooltip, popover, or menu dropdown relative to its target.
enum OverlayPlacement {
  /// Above the target.
  top,

  /// Below the target.
  bottom,

  /// Toward the start edge (LTR left).
  left,

  /// Toward the end edge (LTR right).
  right,
}

/// Drag axis lock for FloatingWindow.
enum FloatingWindowAxis {
  /// Horizontal only.
  x,

  /// Vertical only.
  y,

  /// Both axes.
  both,
}

/// How a Menubar opens its first menu.
enum MenubarTrigger {
  /// Open on tap; hover switches once any menu is open.
  click,

  /// Open as soon as a target is hovered.
  hover,
}

/// How a Menu opens.
enum MenuTrigger {
  /// Open on tap.
  click,

  /// Open on hover.
  hover,
}

/// Values published by Popover for PopoverTarget / PopoverDropdown.
class PopoverScope extends InheritedWidget {
  /// Creates a popover scope.
  const PopoverScope({
    required this.opened,
    required this.position,
    required super.child,
    super.key,
  });

  /// Whether the dropdown is shown.
  final bool opened;

  /// Side the dropdown sits on.
  final OverlayPlacement position;

  /// The nearest [PopoverScope], or null.
  static PopoverScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PopoverScope>();
  }

  /// The nearest [PopoverScope].
  static PopoverScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'PopoverTarget/Dropdown used outside Popover');
    return scope!;
  }

  @override
  bool updateShouldNotify(PopoverScope oldWidget) {
    return opened != oldWidget.opened || position != oldWidget.position;
  }
}

/// Values published by HoverCard for target / dropdown.
class HoverCardScope extends InheritedWidget {
  /// Creates a hover-card scope.
  const HoverCardScope({
    required this.opened,
    required super.child,
    super.key,
  });

  /// Whether the dropdown is shown.
  final bool opened;

  /// The nearest [HoverCardScope], or null.
  static HoverCardScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HoverCardScope>();
  }

  /// The nearest [HoverCardScope].
  static HoverCardScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'HoverCardTarget/Dropdown used outside HoverCard');
    return scope!;
  }

  @override
  bool updateShouldNotify(HoverCardScope oldWidget) {
    return opened != oldWidget.opened;
  }
}

/// Values published by Menu for item / dropdown widgets.
class MenuScope extends InheritedWidget {
  /// Creates a menu scope.
  const MenuScope({
    required this.opened,
    required this.closeOnItemClick,
    required super.child,
    this.onClose,
    super.key,
  });

  /// Whether the dropdown is shown.
  final bool opened;

  /// When true, tapping an item should close the menu.
  final bool closeOnItemClick;

  /// Called when the menu requests close (item tap, target toggle).
  final VoidCallback? onClose;

  /// The nearest [MenuScope], or null.
  static MenuScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MenuScope>();
  }

  /// The nearest [MenuScope].
  static MenuScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'Menu child used outside Menu');
    return scope!;
  }

  @override
  bool updateShouldNotify(MenuScope oldWidget) {
    return opened != oldWidget.opened ||
        closeOnItemClick != oldWidget.closeOnItemClick ||
        onClose != oldWidget.onClose;
  }
}

/// Values published by Menubar for menu children.
class MenubarScope extends InheritedWidget {
  /// Creates a menubar scope.
  const MenubarScope({
    required this.openIndex,
    required this.trigger,
    required super.child,
    super.key,
  });

  /// Index of the open MenubarMenu, or null when all are closed.
  final int? openIndex;

  /// How menus open when none is currently open.
  final MenubarTrigger trigger;

  /// The nearest [MenubarScope], or null.
  static MenubarScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MenubarScope>();
  }

  /// The nearest [MenubarScope].
  static MenubarScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'MenubarMenu used outside Menubar');
    return scope!;
  }

  @override
  bool updateShouldNotify(MenubarScope oldWidget) {
    return openIndex != oldWidget.openIndex || trigger != oldWidget.trigger;
  }
}

/// Zero-based index of a MenubarMenu inside Menubar.
class MenubarMenuIndex extends InheritedWidget {
  /// Creates an index wrapper.
  const MenubarMenuIndex({
    required this.index,
    required super.child,
    super.key,
  });

  /// Position in the menubar row.
  final int index;

  /// The nearest index, or null.
  static int? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<MenubarMenuIndex>()
        ?.index;
  }

  @override
  bool updateShouldNotify(MenubarMenuIndex oldWidget) {
    return index != oldWidget.index;
  }
}
