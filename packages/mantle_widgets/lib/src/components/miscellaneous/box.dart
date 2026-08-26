// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'box.g.dart';

/// Source-of-truth contract for Box: a passthrough padded/colored container.
@MantleComponent(
  name: 'Box',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child', nullable: true),
    MantleProperty<EdgeInsetsGeometry>('padding', nullable: true),
    MantleProperty<EdgeInsetsGeometry>('margin', nullable: true),
    MantleProperty<Color>('color', nullable: true),
    MantleProperty<BorderRadiusGeometry>('radius', nullable: true),
    MantleProperty<double>('width', nullable: true),
    MantleProperty<double>('height', nullable: true),
  ],
)
abstract class MantleBoxContract {
  /// Builds the container.
  @MantleComponent.slot()
  Widget root(BoxContext context);
}
