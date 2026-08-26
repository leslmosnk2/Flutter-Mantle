// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/inputs/types.dart';

part 'file_input.g.dart';

/// Source-of-truth contract for FileInput: tap-to-pick file field.
@MantleComponent(
  name: 'FileInput',
  variants: [
    MantleVariant('default'),
    MantleVariant('filled'),
    MantleVariant('unstyled'),
  ],
  properties: [
    MantleProperty<List<MantlePickedFile>>('value', nullable: true),
    MantleProperty<void Function(List<MantlePickedFile>)>(
      'onChanged',
      nullable: true,
    ),
    MantleProperty<VoidCallback>('onPick', nullable: true),
    MantleProperty<String>('placeholder', nullable: true),
    MantleProperty<Widget>('label', nullable: true),
    MantleProperty<Widget>('description', nullable: true),
    MantleProperty<Widget>('error', nullable: true),
    MantleProperty<bool>('multiple', nullable: true, defaultValue: false),
    MantleProperty<bool>('clearable', nullable: true, defaultValue: false),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('readOnly', nullable: true, defaultValue: false),
    MantleProperty<bool>('required', nullable: true, defaultValue: false),
    MantleProperty<bool>('withAsterisk', nullable: true),
    MantleProperty<String>('accept', nullable: true),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: inputDefaultRadius,
    ),
  ],
)
abstract class MantleFileInputContract {
  /// Builds the file field.
  @MantleComponent.slot()
  Widget root(FileInputContext context);
}
