// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/navigation/types.dart';

part 'tree.g.dart';

/// Source-of-truth contract for Tree: a nested, expandable node list.
@MantleComponent(
  name: 'Tree',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<TreeNodeData>>('data'),
    MantleProperty<List<String>>('expanded', nullable: true),
    MantleProperty<List<String>>('selected', nullable: true),
    MantleProperty<TreeOnExpandedChange>('onExpandedChange', nullable: true),
    MantleProperty<TreeOnSelected>('onSelected', nullable: true),
    MantleProperty<bool>('expandOnClick', nullable: true, defaultValue: true),
    MantleProperty<bool>('selectOnClick', nullable: true, defaultValue: false),
    MantleProperty<String>('levelOffset', nullable: true, defaultValue: 'lg'),
  ],
)
abstract class MantleTreeContract {
  /// Builds the tree and provides [TreeScope].
  @MantleComponent.slot()
  Widget root(TreeContext context);
}

/// Source-of-truth contract for TreeNode (Mantine internal `Tree.Node`).
@MantleComponent(
  name: 'TreeNode',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<String>('value'),
    MantleProperty<Widget>('label'),
    MantleProperty<List<Widget>>('children', nullable: true),
    MantleProperty<bool>('expanded', nullable: true),
    MantleProperty<bool>('selected', nullable: true),
    MantleProperty<int>('level', nullable: true, defaultValue: 1),
    MantleProperty<VoidCallback>('onTap', nullable: true),
  ],
)
abstract class MantleTreeNodeContract {
  /// Builds one node label and its nested children.
  @MantleComponent.slot()
  Widget root(TreeNodeContext context);
}
