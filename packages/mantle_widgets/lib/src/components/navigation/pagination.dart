// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/navigation/types.dart';

part 'pagination.g.dart';

/// Source-of-truth contract for Pagination: a controlled page-number control.
@MantleComponent(
  name: 'Pagination',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<int>('total'),
    MantleProperty<int>('value', nullable: true, defaultValue: 1),
    MantleProperty<PaginationOnChange>('onChange', nullable: true),
    MantleProperty<int>('siblings', nullable: true, defaultValue: 1),
    MantleProperty<int>('boundaries', nullable: true, defaultValue: 1),
    MantleProperty<bool>('withControls', nullable: true, defaultValue: true),
    MantleProperty<bool>('withEdges', nullable: true, defaultValue: false),
    MantleProperty<bool>('withPages', nullable: true, defaultValue: true),
    MantleProperty<bool>(
      'hideWithOnePage',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<double>('gap', nullable: true, defaultValue: 8),
  ],
)
abstract class MantlePaginationContract {
  /// Builds the row of page, dots, and edge controls.
  @MantleComponent.slot()
  Widget root(PaginationContext context);
}

/// Source-of-truth contract for PaginationControl
/// (Mantine `Pagination.Control`).
@MantleComponent(
  name: 'PaginationControl',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<VoidCallback>('onPressed', nullable: true),
    MantleProperty<bool>('active', nullable: true, defaultValue: false),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('withPadding', nullable: true, defaultValue: true),
  ],
)
abstract class MantlePaginationControlContract {
  /// Builds a single page or edge button.
  @MantleComponent.slot()
  Widget root(PaginationControlContext context);
}
