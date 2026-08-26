// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/feedback/types.dart';

part 'alert.g.dart';

/// Source-of-truth contract for Alert: inline feedback with optional icon,
/// title, body, and close control.
@MantleComponent(
  name: 'Alert',
  variants: [
    MantleVariant('default'),
    MantleVariant(
      'filled',
      properties: [
        MantleProperty<bool>('autoContrast', defaultValue: false),
      ],
    ),
    MantleVariant('light'),
    MantleVariant('outline'),
    MantleVariant('transparent'),
    MantleVariant('white'),
  ],
  properties: [
    MantleProperty<Widget>('title', nullable: true),
    MantleProperty<Widget>('child', nullable: true),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<Widget>('icon', nullable: true),
    MantleProperty<bool>(
      'withCloseButton',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<VoidCallback>('onClose', nullable: true),
    MantleProperty<String>('closeButtonLabel', nullable: true),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: feedbackDefaultRadius,
    ),
  ],
)
abstract class MantleAlertContract {
  /// Builds the colored chrome, icon, title, message, and close button.
  @MantleComponent.slot()
  Widget root(AlertContext context);
}
