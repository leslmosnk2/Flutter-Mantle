// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/miscellaneous/types.dart';

part 'scroll_area.g.dart';

/// Source-of-truth contract for ScrollArea: a scrollable viewport.
@MantleComponent(
  name: 'ScrollArea',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<ScrollAreaType>(
      'type',
      nullable: true,
      defaultValue: ScrollAreaType.hover,
    ),
    MantleProperty<ScrollAreaScrollbars>(
      'scrollbars',
      nullable: true,
      defaultValue: ScrollAreaScrollbars.xy,
    ),
    MantleProperty<ScrollAreaOnScrollPositionChange>(
      'onScrollPositionChange',
      nullable: true,
    ),
  ],
)
abstract class MantleScrollAreaContract {
  /// Builds the viewport.
  @MantleComponent.slot()
  Widget root(ScrollAreaContext context);
}
