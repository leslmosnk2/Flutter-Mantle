import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/combobox/types.dart';

part 'pill.g.dart';

/// Source-of-truth contract for Pill: a compact value chip.
///
/// Mantine `Pill.Group` is [PillGroup].
@MantleComponent(
  name: 'Pill',
  variants: [
    MantleVariant('default'),
    MantleVariant('contrast'),
  ],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<bool>(
      'withRemoveButton',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<VoidCallback>('onRemove', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<String>('size', nullable: true),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: defaultPillRadius,
    ),
  ],
)
abstract class MantlePillContract {
  /// Chip colors and metrics.
  @MantleComponent.style(
    properties: [
      MantleProperty<Color>('background'),
      MantleProperty<Color>('color'),
      MantleProperty<double>('height'),
      MantleProperty<double>('fontSize'),
      MantleProperty<BorderRadiusGeometry>(
        'radius',
        defaultBuilder: defaultPillRadius,
      ),
    ],
  )
  PillStyle get style;

  /// Disabled / remove flags.
  @MantleComponent.state(
    properties: [
      MantleProperty<bool>('disabled', defaultValue: false),
      MantleProperty<bool>('withRemoveButton', defaultValue: false),
    ],
  )
  PillState get state;

  /// Builds the chip.
  @MantleComponent.slot()
  Widget root(PillContext context);
}

// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

/// Source-of-truth contract for PillGroup (Mantine `Pill.Group`).
@MantleComponent(
  name: 'PillGroup',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<String>('size', nullable: true),
    MantleProperty<String>('gap', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
  ],
)
abstract class MantlePillGroupContract {
  /// Builds a wrapping row of pills.
  @MantleComponent.slot()
  Widget root(PillGroupContext context);
}
