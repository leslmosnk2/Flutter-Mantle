// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/overlays/types.dart';

part 'popover.g.dart';

/// Source-of-truth contract for Popover: target + floating dropdown.
@MantleComponent(
  name: 'Popover',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<bool>('opened', nullable: true, defaultValue: false),
    MantleProperty<OverlayPlacement>(
      'position',
      nullable: true,
      defaultValue: OverlayPlacement.bottom,
    ),
    MantleProperty<VoidCallback>('onClose', nullable: true),
  ],
)
abstract class MantlePopoverContract {
  /// Builds the target and, when opened, the dropdown.
  @MantleComponent.slot()
  Widget root(PopoverContext context);
}

/// Source-of-truth contract for PopoverTarget (Mantine `Popover.Target`).
@MantleComponent(
  name: 'PopoverTarget',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantlePopoverTargetContract {
  /// Builds the anchor widget.
  @MantleComponent.slot()
  Widget root(PopoverTargetContext context);
}

/// Source-of-truth contract for PopoverDropdown (Mantine `Popover.Dropdown`).
@MantleComponent(
  name: 'PopoverDropdown',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantlePopoverDropdownContract {
  /// Builds the floating panel.
  @MantleComponent.slot()
  Widget root(PopoverDropdownContext context);
}
