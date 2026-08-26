// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'dialog.g.dart';

/// Source-of-truth contract for Dialog: a small corner panel without a barrier.
@MantleComponent(
  name: 'Dialog',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<bool>('opened', nullable: true, defaultValue: false),
    MantleProperty<Widget>('child'),
    MantleProperty<VoidCallback>('onClose', nullable: true),
    MantleProperty<bool>(
      'withCloseButton',
      nullable: true,
      defaultValue: true,
    ),
    MantleProperty<double>('top', nullable: true),
    MantleProperty<double>('left', nullable: true),
    MantleProperty<double>('bottom', nullable: true),
    MantleProperty<double>('right', nullable: true),
    MantleProperty<double>('width', nullable: true),
  ],
)
abstract class MantleDialogContract {
  /// Builds the positioned paper panel.
  @MantleComponent.slot()
  Widget root(DialogContext context);
}
