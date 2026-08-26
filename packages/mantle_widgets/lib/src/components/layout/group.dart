// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'group.g.dart';

/// Source-of-truth contract for Group: a wrapping horizontal flex container.
@MantleComponent(
  name: 'Group',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<String>('gap', nullable: true, defaultValue: 'md'),
    MantleProperty<CrossAxisAlignment>(
      'align',
      nullable: true,
      defaultValue: CrossAxisAlignment.center,
    ),
    MantleProperty<MainAxisAlignment>(
      'justify',
      nullable: true,
      defaultValue: MainAxisAlignment.start,
    ),
    MantleProperty<bool>('wrap', nullable: true, defaultValue: true),
    MantleProperty<bool>('grow', nullable: true, defaultValue: false),
    MantleProperty<bool>(
      'preventGrowOverflow',
      nullable: true,
      defaultValue: true,
    ),
  ],
)
abstract class MantleGroupContract {
  /// Builds the row or wrap.
  @MantleComponent.slot()
  Widget root(GroupContext context);
}
