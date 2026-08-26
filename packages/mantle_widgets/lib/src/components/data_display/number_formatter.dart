// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/data_display/types.dart';

part 'number_formatter.g.dart';

/// Source-of-truth contract for NumberFormatter: formats a number as text.
@MantleComponent(
  name: 'NumberFormatter',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<num>('value', nullable: true),
    MantleProperty<bool>('allowNegative', nullable: true, defaultValue: true),
    MantleProperty<int>('decimalScale', nullable: true),
    MantleProperty<String>(
      'decimalSeparator',
      nullable: true,
      defaultValue: '.',
    ),
    MantleProperty<bool>(
      'fixedDecimalScale',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<String>('prefix', nullable: true, defaultValue: ''),
    MantleProperty<String>('suffix', nullable: true, defaultValue: ''),
    MantleProperty<ThousandsGroupStyle>(
      'thousandsGroupStyle',
      nullable: true,
      defaultValue: ThousandsGroupStyle.thousand,
    ),
    MantleProperty<String>('thousandSeparator', nullable: true),
  ],
)
abstract class MantleNumberFormatterContract {
  /// Builds the formatted text.
  @MantleComponent.slot()
  Widget root(NumberFormatterContext context);
}
