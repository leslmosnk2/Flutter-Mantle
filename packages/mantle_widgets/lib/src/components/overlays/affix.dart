// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'affix.g.dart';

/// Source-of-truth contract for Affix: pins `child` to a parent corner.
@MantleComponent(
  name: 'Affix',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<double>('top', nullable: true),
    MantleProperty<double>('left', nullable: true),
    MantleProperty<double>('bottom', nullable: true),
    MantleProperty<double>('right', nullable: true),
  ],
)
abstract class MantleAffixContract {
  /// Builds the positioned child.
  @MantleComponent.slot()
  Widget root(AffixContext context);
}
