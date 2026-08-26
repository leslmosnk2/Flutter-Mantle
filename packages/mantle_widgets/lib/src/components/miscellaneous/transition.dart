// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/miscellaneous/types.dart';

part 'transition.g.dart';

/// Source-of-truth contract for MTransition: mount/unmount animation.
///
/// Named `MTransition` because Flutter's `TransitionDelegate` lives in
/// `package:flutter/widgets.dart`.
@MantleComponent(
  name: 'MTransition',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<bool>('mounted'),
    MantleProperty<MantleTransitionName>(
      'transition',
      nullable: true,
      defaultValue: MantleTransitionName.fade,
    ),
    MantleProperty<int>('duration', nullable: true, defaultValue: 250),
    MantleProperty<int>('exitDuration', nullable: true),
    MantleProperty<bool>('keepMounted', nullable: true, defaultValue: false),
    MantleProperty<VoidCallback>('onEntered', nullable: true),
    MantleProperty<VoidCallback>('onExited', nullable: true),
  ],
)
abstract class MantleTransitionContract {
  /// Builds the animated wrapper.
  @MantleComponent.slot()
  Widget root(MTransitionContext context);
}
