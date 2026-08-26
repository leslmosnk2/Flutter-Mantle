// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'kbd.g.dart';

/// Source-of-truth contract for Kbd: keyboard-key chrome around text.
@MantleComponent(
  name: 'Kbd',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
  ],
)
abstract class MantleKbdContract {
  /// Builds the key chrome.
  @MantleComponent.slot()
  Widget root(KbdContext context);
}
