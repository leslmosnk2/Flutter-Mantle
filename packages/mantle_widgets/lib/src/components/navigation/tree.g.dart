// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum TreeVariant { defaults }

@immutable
class TreeStyle {
  const TreeStyle();

  TreeStyle copyWith() => this;

  TreeStyle mergeWith(TreeStyle? other) => this;
}

@immutable
class TreeState {
  const TreeState();
}

@immutable
class TreeContext {
  const TreeContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.data,
    this.expanded,
    this.selected,
    this.onExpandedChange,
    this.onSelected,
    required this.expandOnClick,
    required this.selectOnClick,
    required this.levelOffset,
  });

  final BuildContext context;
  final TreeStyle style;
  final TreeState state;
  final TreeVariant variant;
  final List<TreeNodeData> data;
  final List<String>? expanded;
  final List<String>? selected;
  final TreeOnExpandedChange? onExpandedChange;
  final TreeOnSelected? onSelected;
  final bool expandOnClick;
  final bool selectOnClick;
  final String levelOffset;
}

class TreeRoot {
  const TreeRoot(this._build);

  final Widget Function(TreeContext context) _build;

  Widget call(TreeContext context) => _build(context);
}

abstract class TreeDelegate extends ComponentDelegate {
  const TreeDelegate();

  Widget root(TreeContext context);
}

class Tree extends StatelessWidget {
  const Tree({
    super.key,
    required this.data,
    this.expanded,
    this.selected,
    this.onExpandedChange,
    this.onSelected,
    this.expandOnClick,
    this.selectOnClick,
    this.levelOffset,
    this.style,
  }) : variant = TreeVariant.defaults;

  final TreeVariant variant;
  final List<TreeNodeData> data;
  final List<String>? expanded;
  final List<String>? selected;
  final TreeOnExpandedChange? onExpandedChange;
  final TreeOnSelected? onSelected;
  final bool? expandOnClick;
  final bool? selectOnClick;
  final String? levelOffset;
  final TreeStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedData = data;
    final resolvedExpanded = expanded;
    final resolvedSelected = selected;
    final resolvedOnExpandedChange = onExpandedChange;
    final resolvedOnSelected = onSelected;
    final resolvedExpandOnClick = expandOnClick ?? true;
    final resolvedSelectOnClick = selectOnClick ?? false;
    final resolvedLevelOffset = levelOffset ?? 'lg';

    const fromProps = TreeStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TreeState();
    final treeContext = TreeContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      data: resolvedData,
      expanded: resolvedExpanded,
      selected: resolvedSelected,
      onExpandedChange: resolvedOnExpandedChange,
      onSelected: resolvedOnSelected,
      expandOnClick: resolvedExpandOnClick,
      selectOnClick: resolvedSelectOnClick,
      levelOffset: resolvedLevelOffset,
    );
    final delegate = MantleTheme.of(context).delegate<TreeDelegate>();
    return delegate.root(treeContext);
  }
}

enum TreeNodeVariant { defaults }

@immutable
class TreeNodeStyle {
  const TreeNodeStyle();

  TreeNodeStyle copyWith() => this;

  TreeNodeStyle mergeWith(TreeNodeStyle? other) => this;
}

@immutable
class TreeNodeState {
  const TreeNodeState();
}

@immutable
class TreeNodeContext {
  const TreeNodeContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    required this.label,
    this.children,
    this.expanded,
    this.selected,
    required this.level,
    this.onTap,
  });

  final BuildContext context;
  final TreeNodeStyle style;
  final TreeNodeState state;
  final TreeNodeVariant variant;
  final String value;
  final Widget label;
  final List<Widget>? children;
  final bool? expanded;
  final bool? selected;
  final int level;
  final VoidCallback? onTap;
}

class TreeNodeRoot {
  const TreeNodeRoot(this._build);

  final Widget Function(TreeNodeContext context) _build;

  Widget call(TreeNodeContext context) => _build(context);
}

abstract class TreeNodeDelegate extends ComponentDelegate {
  const TreeNodeDelegate();

  Widget root(TreeNodeContext context);
}

class TreeNode extends StatelessWidget {
  const TreeNode({
    super.key,
    required this.value,
    required this.label,
    this.children,
    this.expanded,
    this.selected,
    this.level,
    this.onTap,
    this.style,
  }) : variant = TreeNodeVariant.defaults;

  final TreeNodeVariant variant;
  final String value;
  final Widget label;
  final List<Widget>? children;
  final bool? expanded;
  final bool? selected;
  final int? level;
  final VoidCallback? onTap;
  final TreeNodeStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedLabel = label;
    final resolvedChildren = children;
    final resolvedExpanded = expanded;
    final resolvedSelected = selected;
    final resolvedLevel = level ?? 1;
    final resolvedOnTap = onTap;

    const fromProps = TreeNodeStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TreeNodeState();
    final treeNodeContext = TreeNodeContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      label: resolvedLabel,
      children: resolvedChildren,
      expanded: resolvedExpanded,
      selected: resolvedSelected,
      level: resolvedLevel,
      onTap: resolvedOnTap,
    );
    final delegate = MantleTheme.of(context).delegate<TreeNodeDelegate>();
    return delegate.root(treeNodeContext);
  }
}
