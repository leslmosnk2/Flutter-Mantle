// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'file_button.g.dart';

/// Mantine render-prop `{ onClick }` for [FileButton].
typedef FileButtonBuilder = Widget Function(VoidCallback onPressed);

/// Source-of-truth contract for FileButton: a file-picker trigger.
///
/// v1 does not open a platform picker. `onPressed` is the hook apps use to
/// wire `file_picker` (or equivalent). `accept` and `multiple` are metadata
/// for that hook.
@MantleComponent(
  name: 'FileButton',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<FileButtonBuilder>('builder'),
    MantleProperty<VoidCallback>('onPressed'),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('multiple', nullable: true, defaultValue: false),
    MantleProperty<String>('accept', nullable: true),
  ],
)
abstract class MantleFileButtonContract {
  /// Builds the headless host that injects a press callback into `builder`.
  @MantleComponent.slot()
  Widget root(FileButtonContext context);
}
