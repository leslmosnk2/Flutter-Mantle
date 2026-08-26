// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/overlays/types.dart';

part 'menubar.g.dart';

/// Source-of-truth contract for Menubar: a horizontal row of menus.
@MantleComponent(
  name: 'Menubar',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<int>('openIndex', nullable: true),
    MantleProperty<MenubarTrigger>(
      'trigger',
      nullable: true,
      defaultValue: MenubarTrigger.click,
    ),
  ],
)
abstract class MantleMenubarContract {
  /// Builds the menubar row.
  @MantleComponent.slot()
  Widget root(MenubarContext context);
}

/// Source-of-truth contract for MenubarMenu (Mantine `Menubar.Menu`).
@MantleComponent(
  name: 'MenubarMenu',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
  ],
)
abstract class MantleMenubarMenuContract {
  /// Builds one top-level menu in the bar.
  @MantleComponent.slot()
  Widget root(MenubarMenuContext context);
}

/// Source-of-truth contract for MenubarTarget (Mantine `Menubar.Target`).
@MantleComponent(
  name: 'MenubarTarget',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleMenubarTargetContract {
  /// Builds a top-level trigger.
  @MantleComponent.slot()
  Widget root(MenubarTargetContext context);
}

/// Source-of-truth contract for MenubarDropdown (Mantine `Menubar.Dropdown`).
@MantleComponent(
  name: 'MenubarDropdown',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
  ],
)
abstract class MantleMenubarDropdownContract {
  /// Builds the dropdown under a [MenubarTarget].
  @MantleComponent.slot()
  Widget root(MenubarDropdownContext context);
}
