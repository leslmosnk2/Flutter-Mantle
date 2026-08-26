// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/typography/types.dart';

part 'blockquote.g.dart';

/// Source-of-truth contract for Blockquote: bordered quote with cite and icon.
@MantleComponent(
  name: 'Blockquote',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<Widget>('cite', nullable: true),
    MantleProperty<Widget>('icon', nullable: true),
    MantleProperty<double>('iconSize', nullable: true, defaultValue: 48),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: typographyDefaultRadius,
    ),
  ],
)
abstract class MantleBlockquoteContract {
  /// Builds the quote chrome.
  @MantleComponent.slot()
  Widget root(BlockquoteContext context);
}
