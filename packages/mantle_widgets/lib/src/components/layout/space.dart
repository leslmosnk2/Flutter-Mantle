// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'space.g.dart';

/// Source-of-truth contract for Space: a standalone width/height spacer.
@MantleComponent(
  name: 'Space',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<double>('width', nullable: true),
    MantleProperty<double>('height', nullable: true),
    MantleProperty<String>('w', nullable: true),
    MantleProperty<String>('h', nullable: true),
  ],
)
abstract class MantleSpaceContract {
  /// Builds the spacer box.
  @MantleComponent.slot()
  Widget root(SpaceContext context);
}
