// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'rolling_number.g.dart';

/// Source-of-truth contract for RollingNumber: animated numeric text.
@MantleComponent(
  name: 'RollingNumber',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<num>('value'),
    MantleProperty<String>('prefix', nullable: true, defaultValue: ''),
    MantleProperty<String>('suffix', nullable: true, defaultValue: ''),
    MantleProperty<int>('decimalScale', nullable: true),
    MantleProperty<bool>(
      'fixedDecimalScale',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<String>('thousandSeparator', nullable: true),
    MantleProperty<String>(
      'decimalSeparator',
      nullable: true,
      defaultValue: '.',
    ),
    MantleProperty<int>(
      'animationDuration',
      nullable: true,
      defaultValue: 600,
    ),
    MantleProperty<double>('fontSize', nullable: true),
  ],
)
abstract class MantleRollingNumberContract {
  /// Builds the formatted, animating number.
  @MantleComponent.slot()
  Widget root(RollingNumberContext context);
}
