// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'collapse.g.dart';

/// Source-of-truth contract for Collapse: animated height around a child.
@MantleComponent(
  name: 'Collapse',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<bool>('opened', nullable: true, defaultValue: false),
    MantleProperty<int>(
      'transitionDuration',
      nullable: true,
      defaultValue: 200,
    ),
    MantleProperty<bool>('animateOpacity', nullable: true, defaultValue: true),
    MantleProperty<bool>('keepMounted', nullable: true, defaultValue: false),
    MantleProperty<VoidCallback>('onTransitionEnd', nullable: true),
  ],
)
abstract class MantleCollapseContract {
  /// Builds the clipping height animation.
  @MantleComponent.slot()
  Widget root(CollapseContext context);
}
