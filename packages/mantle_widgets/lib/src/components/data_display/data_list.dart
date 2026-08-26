// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/data_display/types.dart';

part 'data_list.g.dart';

/// Source-of-truth contract for DataList: label-value description list.
@MantleComponent(
  name: 'DataList',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
    MantleProperty<String>('gap', nullable: true, defaultValue: 'sm'),
    MantleProperty<DataListOrientation>(
      'orientation',
      nullable: true,
      defaultValue: DataListOrientation.horizontal,
    ),
    MantleProperty<bool>('withDivider', nullable: true, defaultValue: false),
    MantleProperty<double>('labelWidth', nullable: true, defaultValue: 120),
  ],
)
abstract class MantleDataListContract {
  /// Builds the list and publishes [DataListScope].
  @MantleComponent.slot()
  Widget root(DataListContext context);
}

/// Source-of-truth contract for DataListItem (Mantine `DataList.Item`).
@MantleComponent(
  name: 'DataListItem',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
  ],
)
abstract class MantleDataListItemContract {
  /// Builds one label-value row.
  @MantleComponent.slot()
  Widget root(DataListItemContext context);
}

/// Source-of-truth contract for DataListItemLabel
/// (Mantine `DataList.ItemLabel`).
@MantleComponent(
  name: 'DataListItemLabel',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleDataListItemLabelContract {
  /// Builds the label.
  @MantleComponent.slot()
  Widget root(DataListItemLabelContext context);
}

/// Source-of-truth contract for DataListItemValue
/// (Mantine `DataList.ItemValue`).
@MantleComponent(
  name: 'DataListItemValue',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleDataListItemValueContract {
  /// Builds the value.
  @MantleComponent.slot()
  Widget root(DataListItemValueContext context);
}
