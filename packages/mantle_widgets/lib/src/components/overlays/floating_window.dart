// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/overlays/types.dart';

part 'floating_window.g.dart';

/// Source-of-truth contract for FloatingWindow: a positioned, optionally
/// draggable panel.
@MantleComponent(
  name: 'FloatingWindow',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<Widget>('title', nullable: true),
    MantleProperty<double>('left', nullable: true, defaultValue: 20),
    MantleProperty<double>('top', nullable: true, defaultValue: 20),
    MantleProperty<double>('width', nullable: true),
    MantleProperty<double>('height', nullable: true),
    MantleProperty<bool>('enabled', nullable: true, defaultValue: true),
    MantleProperty<bool>(
      'constrainToViewport',
      nullable: true,
      defaultValue: true,
    ),
    MantleProperty<bool>('withBorder', nullable: true, defaultValue: true),
    MantleProperty<FloatingWindowAxis>(
      'axis',
      nullable: true,
      defaultValue: FloatingWindowAxis.both,
    ),
    MantleProperty<VoidCallback>('onClose', nullable: true),
  ],
)
abstract class MantleFloatingWindowContract {
  /// Builds the positioned window chrome.
  @MantleComponent.slot()
  Widget root(FloatingWindowContext context);
}
