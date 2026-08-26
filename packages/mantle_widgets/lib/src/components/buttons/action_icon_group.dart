// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'action_icon_group.g.dart';

/// Source-of-truth contract for ActionIconGroup: Mantine `ActionIcon.Group`.
@MantleComponent(
  name: 'ActionIconGroup',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<Axis>(
      'orientation',
      nullable: true,
      defaultValue: Axis.horizontal,
    ),
    MantleProperty<double>('borderWidth', nullable: true, defaultValue: 1),
  ],
)
abstract class MantleActionIconGroupContract {
  /// Builds the grouped row or column.
  @MantleComponent.slot()
  Widget root(ActionIconGroupContext context);
}
