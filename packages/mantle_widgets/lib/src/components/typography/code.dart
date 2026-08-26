// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'code.g.dart';

/// Source-of-truth contract for Code: inline or block monospace chip.
@MantleComponent(
  name: 'Code',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<bool>('block', nullable: true, defaultValue: false),
    MantleProperty<String>('color', nullable: true),
  ],
)
abstract class MantleCodeContract {
  /// Builds the code chrome.
  @MantleComponent.slot()
  Widget root(CodeContext context);
}
