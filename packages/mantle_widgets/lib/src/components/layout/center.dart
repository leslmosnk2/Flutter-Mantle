// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'center.g.dart';

/// Source-of-truth contract for MCenter: centers `child` on both axes.
@MantleComponent(
  name: 'MCenter',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<bool>('inline', nullable: true, defaultValue: false),
  ],
)
abstract class MantleCenterContract {
  /// Builds the centering wrapper.
  @MantleComponent.slot()
  Widget root(MCenterContext context);
}
