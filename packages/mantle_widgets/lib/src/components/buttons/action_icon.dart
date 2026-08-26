import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'action_icon.g.dart';

/// Source-of-truth contract for ActionIcon: a square icon button.
@MantleComponent(
  name: 'ActionIcon',
  variants: [
    MantleVariant('default'),
    MantleVariant(
      'filled',
      properties: [
        MantleProperty<bool>(
          'autoContrast',
          defaultValue: false,
        ),
        MantleProperty<Gradient>('gradient', nullable: true),
      ],
    ),
    MantleVariant('light'),
    MantleVariant('outline'),
    MantleVariant('subtle'),
    MantleVariant('transparent'),
    MantleVariant('white'),
  ],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<VoidCallback>('onPressed'),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<bool>('loading', defaultValue: false),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: _getDefaultRadius,
    ),
    MantleProperty<String>('size', nullable: true),
    MantleProperty<String>('semanticLabel', nullable: true),
  ],
)
abstract class MantleActionIconContract {
  /// Resolved visual values passed to the theme delegate.
  @MantleComponent.style(
    properties: [
      MantleProperty<Color>('color'),
      MantleProperty<Color>('hoverBackground'),
      MantleProperty<Color>('hoverColor'),
      MantleProperty<double>('dimension'),
      MantleProperty<Color>('background'),
      MantleProperty<BorderRadiusGeometry>(
        'radius',
        defaultBuilder: _getDefaultRadius,
      ),
    ],
  )
  ActionIconStyle get style;

  /// Derived interaction flags.
  @MantleComponent.state(
    properties: [
      MantleProperty<bool>('disabled', defaultValue: false),
      MantleProperty<bool>('loading', defaultValue: false),
    ],
  )
  ActionIconState get state;

  /// Builds the square chrome, gestures, and slot composition.
  @MantleComponent.slot()
  Widget root(
    ActionIconContext context, {
    required ActionIconIcon icon,
    required ActionIconLoader loader,
  });

  /// Builds the icon content.
  @MantleComponent.slot()
  Widget icon(ActionIconContext context);

  /// Builds the loading indicator, or `null` when not loading.
  @MantleComponent.slot()
  Widget? loader(ActionIconContext context);
}

BorderRadiusGeometry _getDefaultRadius(BuildContext context) {
  return BorderRadius.all(MantleTheme.of(context).resolvedDefaultRadius);
}
