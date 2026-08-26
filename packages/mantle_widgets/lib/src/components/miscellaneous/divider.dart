// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/miscellaneous/types.dart';

part 'divider.g.dart';

/// Source-of-truth contract for Divider: a horizontal or vertical rule.
@MantleComponent(
  name: 'Divider',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Axis>(
      'orientation',
      nullable: true,
      defaultValue: Axis.horizontal,
    ),
    MantleProperty<Widget>('label', nullable: true),
    MantleProperty<DividerLabelPosition>(
      'labelPosition',
      nullable: true,
      defaultValue: DividerLabelPosition.center,
    ),
    MantleProperty<String>('size', nullable: true, defaultValue: 'xs'),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<DividerLineVariant>(
      'lineVariant',
      nullable: true,
      defaultValue: DividerLineVariant.solid,
    ),
  ],
)
abstract class MantleDividerContract {
  /// Builds the rule (and optional label).
  @MantleComponent.slot()
  Widget root(DividerContext context);
}
