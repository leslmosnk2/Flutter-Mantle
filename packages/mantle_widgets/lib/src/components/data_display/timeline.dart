// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/data_display/types.dart';

part 'timeline.g.dart';

/// Source-of-truth contract for Timeline: vertical line with item bullets.
@MantleComponent(
  name: 'Timeline',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<int>('active', nullable: true, defaultValue: -1),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<double>('bulletSize', nullable: true, defaultValue: 20),
    MantleProperty<double>('lineWidth', nullable: true, defaultValue: 4),
    MantleProperty<TimelineAlign>(
      'align',
      nullable: true,
      defaultValue: TimelineAlign.left,
    ),
    MantleProperty<bool>('reverseActive', nullable: true, defaultValue: false),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: dataDisplayPillRadius,
    ),
    MantleProperty<bool>('autoContrast', nullable: true, defaultValue: false),
  ],
)
abstract class MantleTimelineContract {
  /// Builds the vertical list and publishes [TimelineScope].
  @MantleComponent.slot()
  Widget root(TimelineContext context);
}

/// Source-of-truth contract for TimelineItem (Mantine `Timeline.Item`).
@MantleComponent(
  name: 'TimelineItem',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('title', nullable: true),
    MantleProperty<Widget>('child', nullable: true),
    MantleProperty<Widget>('bullet', nullable: true),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<TimelineLineVariant>(
      'lineVariant',
      nullable: true,
      defaultValue: TimelineLineVariant.solid,
    ),
    MantleProperty<int>('index', nullable: true),
  ],
)
abstract class MantleTimelineItemContract {
  /// Builds the bullet, line, and body.
  @MantleComponent.slot()
  Widget root(TimelineItemContext context);
}
