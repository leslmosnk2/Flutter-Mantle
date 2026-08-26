// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/feedback/types.dart';

part 'ring_progress.g.dart';

/// Source-of-truth contract for RingProgress: a circular track with sections
/// and an optional hole label.
@MantleComponent(
  name: 'RingProgress',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<RingProgressSection>>('sections', nullable: true),
    MantleProperty<double>('value', nullable: true),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<Widget>('label', nullable: true),
    MantleProperty<double>('size', nullable: true, defaultValue: 120),
    MantleProperty<double>('thickness', nullable: true, defaultValue: 12),
    MantleProperty<bool>('roundCaps', nullable: true, defaultValue: false),
    MantleProperty<String>('rootColor', nullable: true),
  ],
)
abstract class MantleRingProgressContract {
  /// Builds the ring and centered label.
  @MantleComponent.slot()
  Widget root(RingProgressContext context);
}
