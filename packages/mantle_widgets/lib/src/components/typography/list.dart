// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/typography/types.dart';

part 'list.g.dart';

/// Source-of-truth contract for MList (Mantine `List`).
///
/// Named `MList` so it does not collide with Dart's `List` type.
@MantleComponent(
  name: 'MList',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<ListType>(
      'type',
      nullable: true,
      defaultValue: ListType.unordered,
    ),
    MantleProperty<bool>('withPadding', nullable: true, defaultValue: false),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
    MantleProperty<Widget>('icon', nullable: true),
    MantleProperty<String>('spacing', nullable: true),
    MantleProperty<bool>('center', nullable: true, defaultValue: false),
  ],
)
abstract class MantleMListContract {
  /// Builds the list and publishes [ListScope].
  @MantleComponent.slot()
  Widget root(MListContext context);
}

/// Source-of-truth contract for ListItem (Mantine `List.Item`).
@MantleComponent(
  name: 'ListItem',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<Widget>('icon', nullable: true),
  ],
)
abstract class MantleListItemContract {
  /// Builds one item with a marker or icon.
  @MantleComponent.slot()
  Widget root(ListItemContext context);
}
