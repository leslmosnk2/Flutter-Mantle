// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/feedback/types.dart';

part 'semi_circle_progress.g.dart';

/// Source-of-truth contract for SemiCircleProgress: a half-ring with a label.
@MantleComponent(
  name: 'SemiCircleProgress',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<double>('value'),
    MantleProperty<Widget>('label', nullable: true),
    MantleProperty<SemiCircleFillDirection>(
      'fillDirection',
      nullable: true,
      defaultValue: SemiCircleFillDirection.leftToRight,
    ),
    MantleProperty<SemiCircleOrientation>(
      'orientation',
      nullable: true,
      defaultValue: SemiCircleOrientation.up,
    ),
    MantleProperty<SemiCircleLabelPosition>(
      'labelPosition',
      nullable: true,
      defaultValue: SemiCircleLabelPosition.bottom,
    ),
    MantleProperty<double>('size', nullable: true, defaultValue: 200),
    MantleProperty<double>('thickness', nullable: true, defaultValue: 12),
    MantleProperty<String>('filledSegmentColor', nullable: true),
    MantleProperty<String>('emptySegmentColor', nullable: true),
  ],
)
abstract class MantleSemiCircleProgressContract {
  /// Builds the semicircle track, fill, and label.
  @MantleComponent.slot()
  Widget root(SemiCircleProgressContext context);
}
