// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'marquee.g.dart';

/// Source-of-truth contract for Marquee: a looping overflow strip.
@MantleComponent(
  name: 'Marquee',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<int>('duration', nullable: true, defaultValue: 40000),
    MantleProperty<String>('gap', nullable: true, defaultValue: 'md'),
    MantleProperty<Axis>(
      'orientation',
      nullable: true,
      defaultValue: Axis.horizontal,
    ),
    MantleProperty<bool>('reverse', nullable: true, defaultValue: false),
    MantleProperty<bool>('pauseOnHover', nullable: true, defaultValue: false),
    MantleProperty<int>('repeat', nullable: true, defaultValue: 4),
    MantleProperty<bool>('fadeEdges', nullable: true, defaultValue: true),
    MantleProperty<double>('fadeEdgeSize', nullable: true, defaultValue: 0.05),
  ],
)
abstract class MantleMarqueeContract {
  /// Builds the scrolling strip.
  @MantleComponent.slot()
  Widget root(MarqueeContext context);
}
