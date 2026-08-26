// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/data_display/types.dart';

part 'overflow_list.g.dart';

/// Source-of-truth contract for OverflowList: hide items that do not fit.
@MantleComponent(
  name: 'OverflowList',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<OverflowListOverflowBuilder>('renderOverflow'),
    MantleProperty<double>('gap', nullable: true, defaultValue: 4),
    MantleProperty<int>('maxVisibleItems', nullable: true),
    MantleProperty<OverflowCollapseFrom>(
      'collapseFrom',
      nullable: true,
      defaultValue: OverflowCollapseFrom.end,
    ),
  ],
)
abstract class MantleOverflowListContract {
  /// Builds the visible row plus overflow widget.
  @MantleComponent.slot()
  Widget root(OverflowListContext context);
}
