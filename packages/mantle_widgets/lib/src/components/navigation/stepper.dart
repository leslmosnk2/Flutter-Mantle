// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/navigation/types.dart';

part 'stepper.g.dart';

/// Source-of-truth contract for Stepper: a sequence of labeled steps.
@MantleComponent(
  name: 'Stepper',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<int>('active'),
    MantleProperty<StepperOnStepClick>('onStepClick', nullable: true),
    MantleProperty<Axis>(
      'orientation',
      nullable: true,
      defaultValue: Axis.horizontal,
    ),
    MantleProperty<StepIconPosition>(
      'iconPosition',
      nullable: true,
      defaultValue: StepIconPosition.left,
    ),
    MantleProperty<bool>(
      'allowNextStepsSelect',
      nullable: true,
      defaultValue: true,
    ),
    MantleProperty<bool>('wrap', nullable: true, defaultValue: true),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<String>(
      'contentPadding',
      nullable: true,
      defaultValue: 'md',
    ),
  ],
)
abstract class MantleStepperContract {
  /// Builds the step row/column and active content.
  @MantleComponent.slot()
  Widget root(StepperContext context);
}

/// Source-of-truth contract for StepperStep (Mantine `Stepper.Step`).
@MantleComponent(
  name: 'StepperStep',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('label', nullable: true),
    MantleProperty<Widget>('description', nullable: true),
    MantleProperty<Widget>('icon', nullable: true),
    MantleProperty<Widget>('child', nullable: true),
    MantleProperty<bool>('loading', nullable: true, defaultValue: false),
    MantleProperty<bool>('allowStepSelect', nullable: true),
    MantleProperty<bool>('withIcon', nullable: true, defaultValue: true),
  ],
)
abstract class MantleStepperStepContract {
  /// Builds one step icon, label, and optional vertical connector.
  @MantleComponent.slot()
  Widget root(StepperStepContext context);
}

/// Source-of-truth contract for StepperCompleted (Mantine `Stepper.Completed`).
@MantleComponent(
  name: 'StepperCompleted',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleStepperCompletedContract {
  /// Builds content shown after the last step.
  @MantleComponent.slot()
  Widget root(StepperCompletedContext context);
}
