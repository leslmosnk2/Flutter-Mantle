// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/overlays/types.dart';

part 'drawer.g.dart';

/// Source-of-truth contract for Drawer: a side panel over a barrier.
@MantleComponent(
  name: 'Drawer',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<bool>('opened', nullable: true, defaultValue: false),
    MantleProperty<Widget>('child'),
    MantleProperty<Widget>('title', nullable: true),
    MantleProperty<VoidCallback>('onClose', nullable: true),
    MantleProperty<DrawerPosition>(
      'position',
      nullable: true,
      defaultValue: DrawerPosition.left,
    ),
    MantleProperty<bool>('withOverlay', nullable: true, defaultValue: true),
    MantleProperty<bool>(
      'withCloseButton',
      nullable: true,
      defaultValue: true,
    ),
    MantleProperty<double>('size', nullable: true),
  ],
)
abstract class MantleDrawerContract {
  /// Builds the barrier and sliding panel.
  @MantleComponent.slot()
  Widget root(DrawerContext context);
}
