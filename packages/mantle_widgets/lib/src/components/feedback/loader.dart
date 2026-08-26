// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'loader.g.dart';

/// Source-of-truth contract for Loader: oval, bars, or dots spinner.
///
/// The unnamed constructor (`default`) matches Mantine's oval type. Named
/// constructors select [LoaderVariant.oval], [LoaderVariant.bars], or
/// [LoaderVariant.dots].
@MantleComponent(
  name: 'Loader',
  variants: [
    MantleVariant('default'),
    MantleVariant('oval'),
    MantleVariant('bars'),
    MantleVariant('dots'),
  ],
  properties: [
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<Widget>('child', nullable: true),
  ],
)
abstract class MantleLoaderContract {
  /// Builds the spinner, or [LoaderContext.child] when set.
  @MantleComponent.slot()
  Widget root(LoaderContext context);
}
