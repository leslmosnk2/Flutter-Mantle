// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/feedback/types.dart';

part 'notification.g.dart';

/// Source-of-truth contract for MNotification: the visual card only, not a
/// toast queue.
@MantleComponent(
  name: 'MNotification',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('title', nullable: true),
    MantleProperty<Widget>('message', nullable: true),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<Widget>('icon', nullable: true),
    MantleProperty<bool>('withClose', nullable: true, defaultValue: true),
    MantleProperty<VoidCallback>('onClose', nullable: true),
    MantleProperty<bool>('loading', nullable: true, defaultValue: false),
    MantleProperty<bool>('withBorder', nullable: true, defaultValue: false),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: feedbackDefaultRadius,
    ),
  ],
)
abstract class MantleNotificationContract {
  /// Builds the color line or icon, body, and optional close control.
  @MantleComponent.slot()
  Widget root(MNotificationContext context);
}
