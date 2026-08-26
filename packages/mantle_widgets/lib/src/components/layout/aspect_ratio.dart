// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'aspect_ratio.g.dart';

/// Source-of-truth contract for MAspectRatio: locks `child` to `ratio`.
@MantleComponent(
  name: 'MAspectRatio',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<double>('ratio', nullable: true, defaultValue: 1),
  ],
)
abstract class MantleAspectRatioContract {
  /// Builds the ratio box.
  @MantleComponent.slot()
  Widget root(MAspectRatioContext context);
}
