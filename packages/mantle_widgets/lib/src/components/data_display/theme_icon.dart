// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/data_display/types.dart';

part 'theme_icon.g.dart';

/// Source-of-truth contract for ThemeIcon: a colored square wrapping an icon.
@MantleComponent(
  name: 'ThemeIcon',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<String>(
      'appearance',
      nullable: true,
      defaultValue: 'filled',
    ),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: dataDisplayDefaultRadius,
    ),
    MantleProperty<bool>('autoContrast', nullable: true, defaultValue: false),
  ],
)
abstract class MantleThemeIconContract {
  /// Builds the icon chrome.
  @MantleComponent.slot()
  Widget root(ThemeIconContext context);
}
