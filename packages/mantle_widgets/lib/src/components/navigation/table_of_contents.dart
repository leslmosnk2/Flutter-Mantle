// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/navigation/types.dart';

part 'table_of_contents.g.dart';

/// Source-of-truth contract for TableOfContents: a list of heading links.
@MantleComponent(
  name: 'TableOfContents',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<TocHeading>>('headings'),
    MantleProperty<String>('active', nullable: true),
    MantleProperty<TocOnScrollTo>('onScrollTo', nullable: true),
    MantleProperty<int>('minDepthToOffset', nullable: true, defaultValue: 1),
    MantleProperty<double>('depthOffset', nullable: true, defaultValue: 20),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
    MantleProperty<String>('color', nullable: true),
  ],
)
abstract class MantleTableOfContentsContract {
  /// Builds the column of heading controls.
  @MantleComponent.slot()
  Widget root(TableOfContentsContext context);
}
