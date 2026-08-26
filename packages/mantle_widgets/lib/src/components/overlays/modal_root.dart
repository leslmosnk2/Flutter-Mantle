// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'modal_root.g.dart';

/// Source-of-truth contract for ModalRoot (Mantine `Modal.Root`).
@MantleComponent(
  name: 'ModalRoot',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<bool>('opened', nullable: true, defaultValue: false),
    MantleProperty<Widget>('child'),
    MantleProperty<VoidCallback>('onClose', nullable: true),
    MantleProperty<bool>('withOverlay', nullable: true, defaultValue: true),
  ],
)
abstract class MantleModalRootContract {
  /// Builds the primitive overlay shell.
  @MantleComponent.slot()
  Widget root(ModalRootContext context);
}
