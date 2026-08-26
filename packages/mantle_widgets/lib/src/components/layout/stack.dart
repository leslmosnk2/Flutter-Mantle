// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'stack.g.dart';

/// Source-of-truth contract for MStack: a vertical flex container.
@MantleComponent(
  name: 'MStack',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<String>('gap', nullable: true, defaultValue: 'md'),
    MantleProperty<CrossAxisAlignment>(
      'align',
      nullable: true,
      defaultValue: CrossAxisAlignment.stretch,
    ),
    MantleProperty<MainAxisAlignment>(
      'justify',
      nullable: true,
      defaultValue: MainAxisAlignment.start,
    ),
  ],
)
abstract class MantleStackContract {
  /// Builds the column.
  @MantleComponent.slot()
  Widget root(MStackContext context);
}
