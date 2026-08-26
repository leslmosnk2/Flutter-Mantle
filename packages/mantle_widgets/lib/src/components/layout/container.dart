// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/layout/types.dart';

part 'container.g.dart';

/// Source-of-truth contract for MContainer: max-width centered content.
@MantleComponent(
  name: 'MContainer',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
    MantleProperty<bool>('fluid', nullable: true, defaultValue: false),
    MantleProperty<ContainerStrategy>(
      'strategy',
      nullable: true,
      defaultValue: ContainerStrategy.block,
    ),
  ],
)
abstract class MantleContainerContract {
  /// Builds the centered max-width wrapper.
  @MantleComponent.slot()
  Widget root(MContainerContext context);
}
