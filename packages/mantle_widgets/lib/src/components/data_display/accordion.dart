// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/data_display/types.dart';

part 'accordion.g.dart';

/// Source-of-truth contract for Accordion: expandable item list.
@MantleComponent(
  name: 'Accordion',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<List<String>>('value', nullable: true),
    MantleProperty<List<String>>('defaultValue', nullable: true),
    MantleProperty<AccordionOnChange>('onChange', nullable: true),
    MantleProperty<bool>('multiple', nullable: true, defaultValue: false),
    MantleProperty<AccordionChevronPosition>(
      'chevronPosition',
      nullable: true,
      defaultValue: AccordionChevronPosition.right,
    ),
    MantleProperty<bool>(
      'disableChevronRotation',
      nullable: true,
      defaultValue: false,
    ),
    MantleProperty<Widget>('chevron', nullable: true),
    MantleProperty<String>(
      'appearance',
      nullable: true,
      defaultValue: 'default',
    ),
    MantleProperty<BorderRadiusGeometry>(
      'radius',
      defaultBuilder: dataDisplayDefaultRadius,
    ),
  ],
)
abstract class MantleAccordionContract {
  /// Builds the item list and publishes [AccordionScope].
  @MantleComponent.slot()
  Widget root(AccordionContext context);
}

/// Source-of-truth contract for AccordionItem (Mantine `Accordion.Item`).
@MantleComponent(
  name: 'AccordionItem',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<String>('value'),
    MantleProperty<Widget>('label'),
    MantleProperty<Widget>('child'),
    MantleProperty<Widget>('icon', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
  ],
)
abstract class MantleAccordionItemContract {
  /// Builds the control row and collapsible panel.
  @MantleComponent.slot()
  Widget root(AccordionItemContext context);
}
