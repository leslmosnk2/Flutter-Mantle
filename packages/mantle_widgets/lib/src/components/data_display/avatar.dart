// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/data_display/types.dart';

part 'avatar.g.dart';

/// Source-of-truth contract for Avatar: image, initials, or placeholder.
@MantleComponent(
  name: 'Avatar',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<String>('src', nullable: true),
    MantleProperty<String>('name', nullable: true),
    MantleProperty<Widget>('child', nullable: true),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
    MantleProperty<String>('color', nullable: true, defaultValue: 'gray'),
    MantleProperty<String>('appearance', nullable: true, defaultValue: 'light'),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: dataDisplayPillRadius,
    ),
    MantleProperty<String>('alt', nullable: true),
    MantleProperty<bool>('autoContrast', nullable: true, defaultValue: false),
  ],
)
abstract class MantleAvatarContract {
  /// Builds the circle (or rounded square).
  @MantleComponent.slot()
  Widget root(AvatarContext context);
}

/// Source-of-truth contract for AvatarGroup (Mantine `Avatar.Group`).
@MantleComponent(
  name: 'AvatarGroup',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<String>('spacing', nullable: true, defaultValue: 'sm'),
  ],
)
abstract class MantleAvatarGroupContract {
  /// Builds the overlapping row.
  @MantleComponent.slot()
  Widget root(AvatarGroupContext context);
}
