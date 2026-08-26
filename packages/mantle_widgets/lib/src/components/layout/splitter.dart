// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'splitter.g.dart';

/// Called when [Splitter] pane sizes change.
typedef SplitterOnSizeChange = void Function(List<double> sizes);

/// Source-of-truth contract for Splitter: resizable split panes.
@MantleComponent(
  name: 'Splitter',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<Axis>(
      'orientation',
      nullable: true,
      defaultValue: Axis.horizontal,
    ),
    MantleProperty<List<double>>('sizes', nullable: true),
    MantleProperty<SplitterOnSizeChange>('onSizeChange', nullable: true),
    MantleProperty<bool>('withHandle', nullable: true, defaultValue: true),
    MantleProperty<double>('lineSize', nullable: true, defaultValue: 2),
  ],
)
abstract class MantleSplitterContract {
  /// Builds the pane row/column and handles.
  @MantleComponent.slot()
  Widget root(SplitterContext context);
}

/// Source-of-truth contract for SplitterPane (Mantine `Splitter.Pane`).
@MantleComponent(
  name: 'SplitterPane',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<double>('defaultSize', nullable: true, defaultValue: 50),
    MantleProperty<double>('min', nullable: true),
    MantleProperty<double>('max', nullable: true),
    MantleProperty<bool>('collapsible', nullable: true, defaultValue: false),
  ],
)
abstract class MantleSplitterPaneContract {
  /// Builds the pane body.
  @MantleComponent.slot()
  Widget root(SplitterPaneContext context);
}
