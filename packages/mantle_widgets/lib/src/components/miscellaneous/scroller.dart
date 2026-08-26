// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'scroller.g.dart';

/// Source-of-truth contract for Scroller: a horizontal strip with controls.
@MantleComponent(
  name: 'Scroller',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<double>('scrollAmount', nullable: true, defaultValue: 200),
    MantleProperty<bool>('draggable', nullable: true, defaultValue: true),
    MantleProperty<double>('controlSize', nullable: true, defaultValue: 50),
    MantleProperty<Widget>('startControlIcon', nullable: true),
    MantleProperty<Widget>('endControlIcon', nullable: true),
    MantleProperty<bool>(
      'showStartControl',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<bool>('showEndControl', nullable: true, defaultValue: false),
  ],
)
abstract class MantleScrollerContract {
  /// Builds the strip and controls.
  @MantleComponent.slot()
  Widget root(ScrollerContext context);
}
