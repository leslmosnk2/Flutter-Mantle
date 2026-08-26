// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/data_display/types.dart';

part 'badge.g.dart';

/// Source-of-truth contract for Badge: a compact label chip.
@MantleComponent(
  name: 'Badge',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<String>(
      'appearance',
      nullable: true,
      defaultValue: 'filled',
    ),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: dataDisplayPillRadius,
    ),
    MantleProperty<bool>('circle', nullable: true, defaultValue: false),
    MantleProperty<bool>('fullWidth', nullable: true, defaultValue: false),
    MantleProperty<bool>('autoContrast', nullable: true, defaultValue: false),
    MantleProperty<Widget>('leftSection', nullable: true),
    MantleProperty<Widget>('rightSection', nullable: true),
  ],
)
abstract class MantleBadgeContract {
  /// Builds the chip.
  @MantleComponent.slot()
  Widget root(BadgeContext context);
}
