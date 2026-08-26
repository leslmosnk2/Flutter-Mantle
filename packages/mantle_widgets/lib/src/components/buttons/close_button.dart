import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'close_button.g.dart';

/// Source-of-truth contract for CloseButton: an ActionIcon-like X control.
@MantleComponent(
  name: 'CloseButton',
  variants: [
    MantleVariant('default'),
    MantleVariant('subtle'),
    MantleVariant('transparent'),
  ],
  properties: [
    MantleProperty<VoidCallback>('onPressed'),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: _getDefaultRadius,
    ),
    MantleProperty<String>('size', nullable: true),
    MantleProperty<double>('iconSize', nullable: true),
    MantleProperty<Widget>('icon', nullable: true),
    MantleProperty<Widget>('child', nullable: true),
    MantleProperty<String>('semanticLabel', nullable: true),
  ],
)
abstract class MantleCloseButtonContract {
  /// Resolved visual values passed to the theme delegate.
  @MantleComponent.style(
    properties: [
      MantleProperty<Color>('color'),
      MantleProperty<Color>('hoverBackground'),
      MantleProperty<double>('dimension'),
      MantleProperty<BorderRadiusGeometry>(
        'radius',
        defaultBuilder: _getDefaultRadius,
      ),
    ],
  )
  CloseButtonStyle get style;

  /// Derived interaction flags.
  @MantleComponent.state(
    properties: [
      MantleProperty<bool>('disabled', defaultValue: false),
    ],
  )
  CloseButtonState get state;

  /// Builds the square chrome and default or custom icon.
  @MantleComponent.slot()
  Widget root(CloseButtonContext context);
}

BorderRadiusGeometry _getDefaultRadius(BuildContext context) {
  return BorderRadius.all(MantleTheme.of(context).resolvedDefaultRadius);
}
