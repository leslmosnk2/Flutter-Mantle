// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/feedback/types.dart';

part 'progress.g.dart';

/// Source-of-truth contract for Progress: a single horizontal bar (`0–100`).
@MantleComponent(
  name: 'Progress',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<double>('value'),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<bool>('striped', nullable: true, defaultValue: false),
    MantleProperty<bool>('animated', nullable: true, defaultValue: false),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: feedbackDefaultRadius,
    ),
  ],
)
abstract class MantleProgressContract {
  /// Builds the track and filled section.
  @MantleComponent.slot()
  Widget root(ProgressContext context);
}
