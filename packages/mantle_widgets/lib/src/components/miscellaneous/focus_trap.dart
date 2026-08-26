// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'focus_trap.g.dart';

/// Source-of-truth contract for FocusTrap: autofocus the child subtree.
@MantleComponent(
  name: 'FocusTrap',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<bool>('active', nullable: true, defaultValue: true),
  ],
)
abstract class MantleFocusTrapContract {
  /// Builds the focus scope.
  @MantleComponent.slot()
  Widget root(FocusTrapContext context);
}
