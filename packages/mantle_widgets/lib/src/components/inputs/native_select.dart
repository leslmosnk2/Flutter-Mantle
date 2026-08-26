// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/inputs/types.dart';

part 'native_select.g.dart';

/// Source-of-truth contract for NativeSelect: simple option dropdown.
@MantleComponent(
  name: 'NativeSelect',
  variants: [
    MantleVariant('default'),
    MantleVariant('filled'),
    MantleVariant('unstyled'),
  ],
  properties: [
    MantleProperty<List<NativeSelectItem>>('data'),
    MantleProperty<String>('value', nullable: true),
    MantleProperty<String>('defaultValue', nullable: true),
    MantleProperty<void Function(String)>('onChanged', nullable: true),
    MantleProperty<String>('placeholder', nullable: true),
    MantleProperty<Widget>('label', nullable: true),
    MantleProperty<Widget>('description', nullable: true),
    MantleProperty<Widget>('error', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('required', nullable: true, defaultValue: false),
    MantleProperty<bool>('withAsterisk', nullable: true),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: inputDefaultRadius,
    ),
  ],
)
abstract class MantleNativeSelectContract {
  /// Builds the select field.
  @MantleComponent.slot()
  Widget root(NativeSelectContext context);
}
