// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/data_display/types.dart';

part 'color_swatch.g.dart';

/// Source-of-truth contract for MColorSwatch: a color square or circle.
@MantleComponent(
  name: 'MColorSwatch',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Color>('color'),
    MantleProperty<double>('size', nullable: true, defaultValue: 28),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: dataDisplayPillRadius,
    ),
    MantleProperty<bool>('withShadow', nullable: true, defaultValue: true),
    MantleProperty<bool>('checked', nullable: true, defaultValue: false),
    MantleProperty<Widget>('child', nullable: true),
    MantleProperty<VoidCallback>('onTap', nullable: true),
  ],
)
abstract class MantleColorSwatchContract {
  /// Builds the swatch.
  @MantleComponent.slot()
  Widget root(MColorSwatchContext context);
}
