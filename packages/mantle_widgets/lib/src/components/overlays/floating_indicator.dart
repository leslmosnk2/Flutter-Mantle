// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'floating_indicator.g.dart';

/// Source-of-truth contract for FloatingIndicator: highlight over
/// tab-like children.
@MantleComponent(
  name: 'FloatingIndicator',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<int>('active', nullable: true, defaultValue: 0),
  ],
)
abstract class MantleFloatingIndicatorContract {
  /// Builds the group with a decoration behind the active child.
  @MantleComponent.slot()
  Widget root(FloatingIndicatorContext context);
}
