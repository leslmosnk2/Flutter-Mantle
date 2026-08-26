// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/data_display/types.dart';

part 'background_image.g.dart';

/// Source-of-truth contract for BackgroundImage: image behind a child.
@MantleComponent(
  name: 'BackgroundImage',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<String>('src', nullable: true),
    MantleProperty<MantleImageProvider>('image', nullable: true),
    MantleProperty<Widget>('child'),
    MantleProperty<BoxFit>('fit', nullable: true, defaultValue: BoxFit.cover),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: _zeroRadius,
    ),
  ],
)
abstract class MantleBackgroundImageContract {
  /// Builds the clipped background and child.
  @MantleComponent.slot()
  Widget root(BackgroundImageContext context);
}

BorderRadiusGeometry _zeroRadius(BuildContext context) => BorderRadius.zero;
