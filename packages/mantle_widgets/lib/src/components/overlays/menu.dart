// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/overlays/types.dart';

part 'menu.g.dart';

/// Source-of-truth contract for Menu: target + list of actions.
@MantleComponent(
  name: 'Menu',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<bool>('opened', nullable: true, defaultValue: false),
    MantleProperty<VoidCallback>('onClose', nullable: true),
    MantleProperty<VoidCallback>('onOpen', nullable: true),
    MantleProperty<bool>(
      'closeOnItemClick',
      nullable: true,
      defaultValue: true,
    ),
    MantleProperty<MenuTrigger>(
      'trigger',
      nullable: true,
      defaultValue: MenuTrigger.click,
    ),
  ],
)
abstract class MantleMenuContract {
  /// Builds the target and dropdown list.
  @MantleComponent.slot()
  Widget root(MenuContext context);
}

/// Source-of-truth contract for MenuTarget (Mantine `Menu.Target`).
@MantleComponent(
  name: 'MenuTarget',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleMenuTargetContract {
  /// Builds the menu trigger.
  @MantleComponent.slot()
  Widget root(MenuTargetContext context);
}

/// Source-of-truth contract for MenuDropdown (Mantine `Menu.Dropdown`).
@MantleComponent(
  name: 'MenuDropdown',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
  ],
)
abstract class MantleMenuDropdownContract {
  /// Builds the item list panel.
  @MantleComponent.slot()
  Widget root(MenuDropdownContext context);
}

/// Source-of-truth contract for MenuItem (Mantine `Menu.Item`).
@MantleComponent(
  name: 'MenuItem',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<VoidCallback>('onPressed', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<Widget>('leftSection', nullable: true),
    MantleProperty<Widget>('rightSection', nullable: true),
  ],
)
abstract class MantleMenuItemContract {
  /// Builds a tappable row.
  @MantleComponent.slot()
  Widget root(MenuItemContext context);
}

/// Source-of-truth contract for MenuLabel (Mantine `Menu.Label`).
@MantleComponent(
  name: 'MenuLabel',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleMenuLabelContract {
  /// Builds a non-interactive section label.
  @MantleComponent.slot()
  Widget root(MenuLabelContext context);
}

/// Source-of-truth contract for MenuDivider (Mantine `Menu.Divider`).
@MantleComponent(
  name: 'MenuDivider',
  variants: [MantleVariant('default')],
  properties: [],
)
abstract class MantleMenuDividerContract {
  /// Builds a horizontal rule.
  @MantleComponent.slot()
  Widget root(MenuDividerContext context);
}
