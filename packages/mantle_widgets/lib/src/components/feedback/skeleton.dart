// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/feedback/types.dart';

part 'skeleton.g.dart';

/// Source-of-truth contract for Skeleton: a placeholder block or overlay.
@MantleComponent(
  name: 'Skeleton',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<double>('width', nullable: true),
    MantleProperty<double>('height', nullable: true),
    MantleProperty<bool>('circle', nullable: true, defaultValue: false),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: feedbackDefaultRadius,
    ),
    MantleProperty<Widget>('child', nullable: true),
    MantleProperty<bool>('visible', nullable: true, defaultValue: true),
    MantleProperty<bool>('animate', nullable: true, defaultValue: true),
  ],
)
abstract class MantleSkeletonContract {
  /// Builds the placeholder, or wraps [SkeletonContext.child] with an overlay.
  @MantleComponent.slot()
  Widget root(SkeletonContext context);
}
