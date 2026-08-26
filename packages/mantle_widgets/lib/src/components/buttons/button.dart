import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'button.g.dart';

@MantleComponent(
  name: 'Button',
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
    MantleProperty<bool>('grow', nullable: true, defaultValue: false),
    MantleProperty<Widget>('prefix', nullable: true),
    MantleProperty<Widget>('suffix', nullable: true),
    // MantleProperty<LoaderProperties>('loaderProperties', nullable: true),
    MantleProperty<bool>('loading', defaultValue: false),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: _getDefaultRadius,
    ),
    MantleProperty<AlignmentGeometry>(
      'alignment',
      defaultValue: Alignment.center,
    ),
    MantleProperty<String>('size', nullable: true),
  ],
)
/// Source-of-truth contract for Button: public API, style, state, and slots.
abstract class MantleButtonContract {
  /// Resolved visual values passed to the theme delegate.
  @MantleComponent.style(
    properties: [
      MantleProperty<Color>('color'),
      MantleProperty<Color>('hoverBackground'),
      MantleProperty<Color>('hoverColor'),
      MantleProperty<double>('height'),
      MantleProperty<TextStyle>('textStyle'),
      MantleProperty<double>('horizontalPadding'),
      MantleProperty<AlignmentGeometry>(
        'alignment',
        defaultValue: Alignment.center,
      ),
      MantleProperty<Color>('background'),
      MantleProperty<BorderRadiusGeometry>(
        'radius',
        defaultBuilder: _getDefaultRadius,
      ),
    ],
  )
  ButtonStyle get style;

  /// Derived interaction flags (disabled, loading, section presence).
  @MantleComponent.state(
    properties: [
      MantleProperty<bool>('disabled', defaultValue: false),
      MantleProperty<bool>('loading', defaultValue: false),
      MantleProperty<bool>('grow', defaultValue: false),
      MantleProperty<bool>('hasLeftSection', defaultValue: false),
      MantleProperty<bool>('hasRightSection', defaultValue: false),
      MantleProperty<SectionPosition>(
        'sectionPosition',
        nullable: true,
      ),
    ],
  )
  ButtonState get state;

  /// Builds the outermost widget: chrome, gestures, and slot composition.
  @MantleComponent.slot()
  Widget root(
    ButtonContext context, {
    required ButtonInner inner,
    required ButtonLoader loader,
  });

  /// Builds the row of prefix, label, and suffix.
  @MantleComponent.slot()
  Widget inner(
    ButtonContext context, {
    required ButtonLabel label,
    required ButtonSection prefix,
    required ButtonSection suffix,
  });

  /// Builds the loading indicator, or `null` when not loading.
  @MantleComponent.slot()
  Widget? loader(ButtonContext context);

  /// Builds the button's text/child content.
  @MantleComponent.slot()
  Widget label(ButtonContext context);

  /// Builds a prefix or suffix accessory.
  @MantleComponent.slot()
  Widget section(ButtonContext context);
}

/// Which side of the label a section sits on.
enum SectionPosition {
  /// Before the label (start in LTR).
  left,

  /// After the label (end in LTR).
  right,
}

BorderRadiusGeometry _getDefaultRadius(BuildContext context) {
  return BorderRadius.all(MantleTheme.of(context).resolvedDefaultRadius);
}
