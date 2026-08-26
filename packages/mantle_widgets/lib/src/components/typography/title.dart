// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'title.g.dart';

/// Source-of-truth contract for MTitle (Mantine `Title`).
///
/// Named `MTitle` because [Title] collides with `package:flutter/widgets.dart`.
@MantleComponent(
  name: 'MTitle',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<int>('order', nullable: true, defaultValue: 1),
    MantleProperty<String>('size', nullable: true),
    MantleProperty<int>('lineClamp', nullable: true),
  ],
)
abstract class MantleTitleContract {
  /// Builds the heading.
  @MantleComponent.slot()
  Widget root(MTitleContext context);
}
