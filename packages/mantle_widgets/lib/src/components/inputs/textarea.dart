// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/inputs/types.dart';

part 'textarea.g.dart';

/// Source-of-truth contract for Textarea: wrapped multiline text field.
@MantleComponent(
  name: 'Textarea',
  variants: [
    MantleVariant('default'),
    MantleVariant('filled'),
    MantleVariant('unstyled'),
  ],
  properties: [
    MantleProperty<String>('value', nullable: true),
    MantleProperty<String>('defaultValue', nullable: true),
    MantleProperty<void Function(String)>('onChanged', nullable: true),
    MantleProperty<String>('placeholder', nullable: true),
    MantleProperty<Widget>('label', nullable: true),
    MantleProperty<Widget>('description', nullable: true),
    MantleProperty<Widget>('error', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('readOnly', nullable: true, defaultValue: false),
    MantleProperty<bool>('required', nullable: true, defaultValue: false),
    MantleProperty<bool>('withAsterisk', nullable: true),
    MantleProperty<bool>('autosize', nullable: true, defaultValue: false),
    MantleProperty<int>('minRows', nullable: true, defaultValue: 2),
    MantleProperty<int>('maxRows', nullable: true),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: inputDefaultRadius,
    ),
  ],
)
abstract class MantleTextareaContract {
  /// Builds the wrapper and textarea.
  @MantleComponent.slot()
  Widget root(TextareaContext context);
}
