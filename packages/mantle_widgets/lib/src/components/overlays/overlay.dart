// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'overlay.g.dart';

/// Source-of-truth contract for MOverlay: a dimming barrier over its parent.
///
/// Named `MOverlay` because Flutter's `Overlay` lives in `widgets.dart`.
@MantleComponent(
  name: 'MOverlay',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<bool>('visible', nullable: true, defaultValue: true),
    MantleProperty<double>(
      'backgroundOpacity',
      nullable: true,
      defaultValue: 0.6,
    ),
    MantleProperty<Color>('color', nullable: true),
    MantleProperty<VoidCallback>('onTap', nullable: true),
    MantleProperty<Widget>('child', nullable: true),
    MantleProperty<bool>('center', nullable: true, defaultValue: false),
  ],
)
abstract class MantleOverlayContract {
  /// Builds the barrier (and optional centered `child`).
  @MantleComponent.slot()
  Widget root(MOverlayContext context);
}
