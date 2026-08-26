// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/navigation/types.dart';

part 'burger.g.dart';

/// Source-of-truth contract for Burger: a three-line menu toggle.
@MantleComponent(
  name: 'Burger',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<bool>('opened', nullable: true, defaultValue: false),
    MantleProperty<BurgerOnTap>('onTap', nullable: true),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
    MantleProperty<String>('color', nullable: true),
  ],
)
abstract class MantleBurgerContract {
  /// Builds the tappable burger / close icon.
  @MantleComponent.slot()
  Widget root(BurgerContext context);
}
