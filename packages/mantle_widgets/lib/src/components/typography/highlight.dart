// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'highlight.g.dart';

/// Source-of-truth contract for Highlight: Mark matching substrings in text.
@MantleComponent(
  name: 'Highlight',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<String>('text'),
    MantleProperty<List<String>>('highlight'),
    MantleProperty<String>('color', nullable: true, defaultValue: 'yellow'),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
  ],
)
abstract class MantleHighlightContract {
  /// Builds text with highlighted spans.
  @MantleComponent.slot()
  Widget root(HighlightContext context);
}
