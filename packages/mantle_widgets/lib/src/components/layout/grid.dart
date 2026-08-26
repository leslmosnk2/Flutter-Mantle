// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/layout/types.dart';

part 'grid.g.dart';

/// Source-of-truth contract for Grid: a 12-column flex grid.
@MantleComponent(
  name: 'Grid',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<String>('gutter', nullable: true, defaultValue: 'md'),
    MantleProperty<bool>('grow', nullable: true, defaultValue: false),
    MantleProperty<MainAxisAlignment>(
      'justify',
      nullable: true,
      defaultValue: MainAxisAlignment.start,
    ),
    MantleProperty<CrossAxisAlignment>(
      'align',
      nullable: true,
      defaultValue: CrossAxisAlignment.stretch,
    ),
    MantleProperty<int>('columns', nullable: true, defaultValue: 12),
  ],
)
abstract class MantleGridContract {
  /// Builds the grid wrapper and inner row.
  @MantleComponent.slot()
  Widget root(GridContext context);
}

/// Source-of-truth contract for GridCol (Mantine `Grid.Col`).
@MantleComponent(
  name: 'GridCol',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<int>('span', nullable: true, defaultValue: 12),
    MantleProperty<GridColFit>('spanFit', nullable: true),
    MantleProperty<int>('offset', nullable: true, defaultValue: 0),
    MantleProperty<int>('order', nullable: true),
    MantleProperty<MantleResponsive<int>>('responsiveSpan', nullable: true),
  ],
)
abstract class MantleGridColContract {
  /// Builds the cell chrome.
  @MantleComponent.slot()
  Widget root(GridColContext context);
}
