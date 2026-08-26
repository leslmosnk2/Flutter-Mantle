// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/overlays/types.dart';

part 'tooltip.g.dart';

/// Source-of-truth contract for Tooltip: label on hover or long-press.
@MantleComponent(
  name: 'Tooltip',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<String>('label'),
    MantleProperty<bool>('opened', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<OverlayPlacement>(
      'position',
      nullable: true,
      defaultValue: OverlayPlacement.top,
    ),
  ],
)
abstract class MantleTooltipContract {
  /// Builds the target wrapper and floating label.
  @MantleComponent.slot()
  Widget root(TooltipContext context);
}
