// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/navigation/types.dart';

part 'anchor.g.dart';

/// Source-of-truth contract for Anchor: an inline text link.
@MantleComponent(
  name: 'Anchor',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<AnchorOnPressed>('onPressed', nullable: true),
    MantleProperty<String>('href', nullable: true),
    MantleProperty<AnchorUnderline>(
      'underline',
      nullable: true,
      defaultValue: AnchorUnderline.hover,
    ),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
    MantleProperty<String>('color', nullable: true),
  ],
)
abstract class MantleAnchorContract {
  /// Builds the tappable text link.
  @MantleComponent.slot()
  Widget root(AnchorContext context);
}
