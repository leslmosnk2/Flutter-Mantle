// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/feedback/types.dart';

part 'empty_state.g.dart';

/// Source-of-truth contract for EmptyState: placeholder for no data, empty
/// results, and first-run states.
@MantleComponent(
  name: 'EmptyState',
  variants: [
    MantleVariant('default'),
    MantleVariant('filled'),
    MantleVariant('light'),
  ],
  properties: [
    MantleProperty<Widget>('title', nullable: true),
    MantleProperty<Widget>('description', nullable: true),
    MantleProperty<Widget>('icon', nullable: true),
    MantleProperty<Widget>('action', nullable: true),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
    MantleProperty<EmptyStateAlign>(
      'align',
      nullable: true,
      defaultValue: EmptyStateAlign.center,
    ),
    MantleProperty<bool>(
      'withIndicatorBackground',
      nullable: true,
      defaultValue: false,
    ),
  ],
)
abstract class MantleEmptyStateContract {
  /// Builds the indicator, title, description, and action.
  @MantleComponent.slot()
  Widget root(EmptyStateContext context);
}
