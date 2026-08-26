// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/navigation/types.dart';

part 'tabs.g.dart';

/// Source-of-truth contract for Tabs: a tabbed panel container.
@MantleComponent(
  name: 'Tabs',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<String>('value', nullable: true),
    MantleProperty<TabsOnChange>('onChange', nullable: true),
    MantleProperty<Axis>(
      'orientation',
      nullable: true,
      defaultValue: Axis.horizontal,
    ),
    MantleProperty<TabsPlacement>(
      'placement',
      nullable: true,
      defaultValue: TabsPlacement.left,
    ),
    MantleProperty<bool>('inverted', nullable: true, defaultValue: false),
    MantleProperty<bool>('keepMounted', nullable: true, defaultValue: true),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<String>('radius', nullable: true),
  ],
)
abstract class MantleTabsContract {
  /// Builds the tabs wrapper and provides [TabsScope].
  @MantleComponent.slot()
  Widget root(TabsContext context);
}

/// Source-of-truth contract for TabsList (Mantine `Tabs.List`).
@MantleComponent(
  name: 'TabsList',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<bool>('grow', nullable: true, defaultValue: false),
    MantleProperty<MainAxisAlignment>(
      'justify',
      nullable: true,
      defaultValue: MainAxisAlignment.start,
    ),
  ],
)
abstract class MantleTabsListContract {
  /// Builds the tablist row or column.
  @MantleComponent.slot()
  Widget root(TabsListContext context);
}

/// Source-of-truth contract for TabsTab (Mantine `Tabs.Tab`).
@MantleComponent(
  name: 'TabsTab',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<String>('value'),
    MantleProperty<Widget>('child', nullable: true),
    MantleProperty<Widget>('leftSection', nullable: true),
    MantleProperty<Widget>('rightSection', nullable: true),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
  ],
)
abstract class MantleTabsTabContract {
  /// Builds a single tab control.
  @MantleComponent.slot()
  Widget root(TabsTabContext context);
}

/// Source-of-truth contract for TabsPanel (Mantine `Tabs.Panel`).
@MantleComponent(
  name: 'TabsPanel',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<String>('value'),
    MantleProperty<Widget>('child'),
    MantleProperty<bool>('keepMounted', nullable: true),
  ],
)
abstract class MantleTabsPanelContract {
  /// Builds panel content, hidden when inactive.
  @MantleComponent.slot()
  Widget root(TabsPanelContext context);
}
