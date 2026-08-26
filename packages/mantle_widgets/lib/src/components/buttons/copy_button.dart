// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'copy_button.g.dart';

/// Mantine render-prop `{ copied, copy }` for [CopyButton].
typedef CopyButtonBuilder =
    Widget Function(
      BuildContext context, {
      required bool copied,
      required VoidCallback copy,
    });

/// Source-of-truth contract for CopyButton: clipboard copy with copied state.
@MantleComponent(
  name: 'CopyButton',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<String>('value'),
    MantleProperty<CopyButtonBuilder>('builder'),
    MantleProperty<int>('timeout', nullable: true, defaultValue: 1000),
    MantleProperty<VoidCallback>('onCopy', nullable: true),
  ],
)
abstract class MantleCopyButtonContract {
  /// Builds the headless host that exposes `copied` and `copy` to `builder`.
  @MantleComponent.slot()
  Widget root(CopyButtonContext context);
}
