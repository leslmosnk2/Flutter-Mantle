// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'hover_card.g.dart';

/// Source-of-truth contract for HoverCard: popover that opens on hover.
@MantleComponent(
  name: 'HoverCard',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<bool>(
      'initiallyOpened',
      nullable: true,
      defaultValue: false,
    ),
  ],
)
abstract class MantleHoverCardContract {
  /// Builds the hover wrapper around target and dropdown.
  @MantleComponent.slot()
  Widget root(HoverCardContext context);
}

/// Source-of-truth contract for HoverCardTarget (Mantine `HoverCard.Target`).
@MantleComponent(
  name: 'HoverCardTarget',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleHoverCardTargetContract {
  /// Builds the hover target.
  @MantleComponent.slot()
  Widget root(HoverCardTargetContext context);
}

/// Source-of-truth contract for HoverCardDropdown
/// (Mantine `HoverCard.Dropdown`).
@MantleComponent(
  name: 'HoverCardDropdown',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleHoverCardDropdownContract {
  /// Builds the hover dropdown panel.
  @MantleComponent.slot()
  Widget root(HoverCardDropdownContext context);
}
