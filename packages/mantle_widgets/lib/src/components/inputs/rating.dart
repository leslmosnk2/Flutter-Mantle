// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'rating.g.dart';

/// Source-of-truth contract for Rating.
@MantleComponent(
  name: 'Rating',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<double>('value', nullable: true),
    MantleProperty<double>('defaultValue', nullable: true, defaultValue: 0.0),
    MantleProperty<void Function(double)>('onChanged', nullable: true),
    MantleProperty<int>('count', nullable: true, defaultValue: 5),
    MantleProperty<int>('fractions', nullable: true, defaultValue: 1),
    MantleProperty<bool>('readOnly', nullable: true, defaultValue: false),
    MantleProperty<bool>(
      'highlightSelectedOnly',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<String>('color', nullable: true, defaultValue: 'yellow'),
    MantleProperty<String>('size', nullable: true, defaultValue: 'sm'),
  ],
)
abstract class MantleRatingContract {
  /// Builds the rating stars.
  @MantleComponent.slot()
  Widget root(RatingContext context);
}
