// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/typography/types.dart';

part 'table.g.dart';

/// Source-of-truth contract for MTable (Mantine `Table`).
///
/// Named `MTable` because [Table] collides with `package:flutter/widgets.dart`.
@MantleComponent(
  name: 'MTable',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children', nullable: true),
    MantleProperty<TableData>('data', nullable: true),
    MantleProperty<bool>(
      'withTableBorder',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<bool>(
      'withColumnBorders',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<bool>(
      'withRowBorders',
      nullable: true,
      defaultValue: true,
    ),
    MantleProperty<bool>('striped', nullable: true, defaultValue: false),
    MantleProperty<TableStriped>('stripedFrom', nullable: true),
    MantleProperty<bool>(
      'highlightOnHover',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<String>(
      'horizontalSpacing',
      nullable: true,
      defaultValue: 'xs',
    ),
    MantleProperty<String>(
      'verticalSpacing',
      nullable: true,
      defaultValue: 'xs',
    ),
    MantleProperty<bool>('stickyHeader', nullable: true, defaultValue: false),
    MantleProperty<TableCaptionSide>(
      'captionSide',
      nullable: true,
      defaultValue: TableCaptionSide.bottom,
    ),
    MantleProperty<bool>('tabularNums', nullable: true, defaultValue: false),
    MantleProperty<String>('borderColor', nullable: true),
    MantleProperty<String>('stripedColor', nullable: true),
    MantleProperty<String>('highlightOnHoverColor', nullable: true),
  ],
)
abstract class MantleMTableContract {
  /// Builds the table and publishes [TableScope].
  @MantleComponent.slot()
  Widget root(MTableContext context);
}

/// Source-of-truth contract for TableThead (Mantine `Table.Thead`).
@MantleComponent(
  name: 'TableThead',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
  ],
)
abstract class MantleTableTheadContract {
  /// Builds the header section.
  @MantleComponent.slot()
  Widget root(TableTheadContext context);
}

/// Source-of-truth contract for TableTbody (Mantine `Table.Tbody`).
@MantleComponent(
  name: 'TableTbody',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
  ],
)
abstract class MantleTableTbodyContract {
  /// Builds the body section.
  @MantleComponent.slot()
  Widget root(TableTbodyContext context);
}

/// Source-of-truth contract for TableTfoot (Mantine `Table.Tfoot`).
@MantleComponent(
  name: 'TableTfoot',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
  ],
)
abstract class MantleTableTfootContract {
  /// Builds the footer section.
  @MantleComponent.slot()
  Widget root(TableTfootContext context);
}

/// Source-of-truth contract for TableTr (Mantine `Table.Tr`).
@MantleComponent(
  name: 'TableTr',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
  ],
)
abstract class MantleTableTrContract {
  /// Builds one row of cells.
  @MantleComponent.slot()
  Widget root(TableTrContext context);
}

/// Source-of-truth contract for TableTh (Mantine `Table.Th`).
@MantleComponent(
  name: 'TableTh',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleTableThContract {
  /// Builds a header cell.
  @MantleComponent.slot()
  Widget root(TableThContext context);
}

/// Source-of-truth contract for TableTd (Mantine `Table.Td`).
@MantleComponent(
  name: 'TableTd',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleTableTdContract {
  /// Builds a data cell.
  @MantleComponent.slot()
  Widget root(TableTdContext context);
}

/// Source-of-truth contract for TableCaption (Mantine `Table.Caption`).
@MantleComponent(
  name: 'TableCaption',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleTableCaptionContract {
  /// Builds the caption.
  @MantleComponent.slot()
  Widget root(TableCaptionContext context);
}

/// Source-of-truth contract for TableScrollContainer
/// (Mantine `Table.ScrollContainer`).
@MantleComponent(
  name: 'TableScrollContainer',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<double>('minWidth'),
    MantleProperty<double>('maxHeight', nullable: true),
  ],
)
abstract class MantleTableScrollContainerContract {
  /// Builds a horizontally scrollable table wrapper.
  @MantleComponent.slot()
  Widget root(TableScrollContainerContext context);
}
