// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/inputs/types.dart';

part 'fieldset.g.dart';

/// Source-of-truth contract for Fieldset.
@MantleComponent(
  name: 'Fieldset',
  variants: [
    MantleVariant('default'),
    MantleVariant('filled'),
    MantleVariant('unstyled'),
  ],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<Widget>('legend', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: inputDefaultRadius,
    ),
  ],
)
abstract class MantleFieldsetContract {
  /// Builds the fieldset chrome.
  @MantleComponent.slot()
  Widget root(FieldsetContext context);
}
