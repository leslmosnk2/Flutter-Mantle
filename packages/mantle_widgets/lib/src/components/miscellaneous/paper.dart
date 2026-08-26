// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/miscellaneous/types.dart';

part 'paper.g.dart';

/// Source-of-truth contract for Paper: an elevated surface.
@MantleComponent(
  name: 'Paper',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child', nullable: true),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: miscellaneousDefaultRadius,
    ),
    MantleProperty<String>('shadow', nullable: true),
    MantleProperty<bool>('withBorder', nullable: true, defaultValue: false),
    MantleProperty<String>('padding', nullable: true),
  ],
)
abstract class MantlePaperContract {
  /// Builds the surface.
  @MantleComponent.slot()
  Widget root(PaperContext context);
}
