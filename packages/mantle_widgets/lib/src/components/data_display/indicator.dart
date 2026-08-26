// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/data_display/types.dart';

part 'indicator.g.dart';

/// Source-of-truth contract for Indicator: a badge or dot overlay on a child.
@MantleComponent(
  name: 'Indicator',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<Widget>('label', nullable: true),
    MantleProperty<IndicatorPosition>(
      'position',
      nullable: true,
      defaultValue: IndicatorPosition.topEnd,
    ),
    MantleProperty<double>('offset', nullable: true, defaultValue: 0),
    MantleProperty<double>('size', nullable: true, defaultValue: 10),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: dataDisplayPillRadius,
    ),
    MantleProperty<bool>('inline', nullable: true, defaultValue: false),
    MantleProperty<bool>('withBorder', nullable: true, defaultValue: false),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('processing', nullable: true, defaultValue: false),
    MantleProperty<bool>('autoContrast', nullable: true, defaultValue: false),
  ],
)
abstract class MantleIndicatorContract {
  /// Builds the child with an overlay marker.
  @MantleComponent.slot()
  Widget root(IndicatorContext context);
}
