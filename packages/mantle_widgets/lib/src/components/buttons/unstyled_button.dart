// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'unstyled_button.g.dart';

/// Source-of-truth contract for UnstyledButton: button semantics, no chrome.
@MantleComponent(
  name: 'UnstyledButton',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<VoidCallback>('onPressed'),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<String>('semanticLabel', nullable: true),
  ],
)
abstract class MantleUnstyledButtonContract {
  /// Builds the pressable, unstyled host.
  @MantleComponent.slot()
  Widget root(UnstyledButtonContext context);
}
