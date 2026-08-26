// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/layout/types.dart';

part 'simple_grid.g.dart';

/// Source-of-truth contract for SimpleGrid: equal-width columns.
@MantleComponent(
  name: 'SimpleGrid',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<int>('cols', nullable: true, defaultValue: 1),
    MantleProperty<String>('spacing', nullable: true, defaultValue: 'md'),
    MantleProperty<String>('verticalSpacing', nullable: true),
    MantleProperty<MantleResponsive<int>>('responsiveCols', nullable: true),
  ],
)
abstract class MantleSimpleGridContract {
  /// Builds the equal-column grid.
  @MantleComponent.slot()
  Widget root(SimpleGridContext context);
}
