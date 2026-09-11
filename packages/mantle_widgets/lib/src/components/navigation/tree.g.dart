// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Tree].
enum TreeVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Tree].
@immutable
class TreeStyle {
  /// Creates a [TreeStyle].
  const TreeStyle();

  /// Returns a copy of this [TreeStyle] with selected fields replaced.
  TreeStyle copyWith() => this;

  /// Merges [other] over this [TreeStyle]; null fields keep this value.
  TreeStyle mergeWith(TreeStyle? other) => this;
}

/// Resolved interaction state for [Tree].
@immutable
class TreeState {
  /// Creates a [TreeState].
  const TreeState();
}

/// Values passed to [TreeDelegate] slots during build.
@immutable
class TreeContext {
  /// Creates a [TreeContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TreeStyle style;

  /// Resolved interaction state for this build.
  final TreeState state;

  /// The visual variant selected by the constructor.
  final TreeVariant variant;

  /// Tabular data to render.
  final List<TreeNodeData> data;

  /// The expanded.
  final List<String>? expanded;

  /// Whether this item is selected.
  final List<String>? selected;

  /// Called when expanded change.
  final TreeOnExpandedChange? onExpandedChange;

  /// Called when selected.
  final TreeOnSelected? onSelected;

  /// Whether expand on click.
  final bool expandOnClick;

  /// Whether select on click.
  final bool selectOnClick;

  /// The level offset.
  final String levelOffset;
}

/// Builder for the root slot.
class TreeRoot {
  /// Creates a [TreeRoot] from a builder function.
  const TreeRoot(this._build);

  final Widget Function(TreeContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TreeContext context) => _build(context);
}

/// Theme-owned composition slots for [Tree].
abstract class TreeDelegate extends ComponentDelegate {
  /// Creates a [TreeDelegate].
  const TreeDelegate();

  /// Builds the composition root.
  Widget root(TreeContext context);
}

/// A [Tree] widget resolved through [TreeDelegate].
class Tree extends StatelessWidget {
  /// Creates a [Tree].
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

  /// The visual variant selected by the constructor.
  final TreeVariant variant;

  /// Tabular data to render.
  final List<TreeNodeData> data;

  /// The expanded.
  final List<String>? expanded;

  /// Whether this item is selected.
  final List<String>? selected;

  /// Called when expanded change.
  final TreeOnExpandedChange? onExpandedChange;

  /// Called when selected.
  final TreeOnSelected? onSelected;

  /// Whether expand on click.
  final bool? expandOnClick;

  /// Whether select on click.
  final bool? selectOnClick;

  /// The level offset.
  final String? levelOffset;

  /// Style overrides merged over theme defaults.
  final TreeStyle? style;

  /// Resolves properties and builds via [TreeDelegate].
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

/// Visual variants of [TreeNode].
enum TreeNodeVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [TreeNode].
@immutable
class TreeNodeStyle {
  /// Creates a [TreeNodeStyle].
  const TreeNodeStyle();

  /// Returns a copy of this [TreeNodeStyle] with selected fields replaced.
  TreeNodeStyle copyWith() => this;

  /// Merges [other] over this [TreeNodeStyle]; null fields keep this value.
  TreeNodeStyle mergeWith(TreeNodeStyle? other) => this;
}

/// Resolved interaction state for [TreeNode].
@immutable
class TreeNodeState {
  /// Creates a [TreeNodeState].
  const TreeNodeState();
}

/// Values passed to [TreeNodeDelegate] slots during build.
@immutable
class TreeNodeContext {
  /// Creates a [TreeNodeContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TreeNodeStyle style;

  /// Resolved interaction state for this build.
  final TreeNodeState state;

  /// The visual variant selected by the constructor.
  final TreeNodeVariant variant;

  /// The controlled value.
  final String value;

  /// The label.
  final Widget label;

  /// Child widgets composed by this component.
  final List<Widget>? children;

  /// Whether expanded.
  final bool? expanded;

  /// Whether this item is selected.
  final bool? selected;

  /// The level.
  final int level;

  /// Called when tap.
  final VoidCallback? onTap;
}

/// Builder for the root slot.
class TreeNodeRoot {
  /// Creates a [TreeNodeRoot] from a builder function.
  const TreeNodeRoot(this._build);

  final Widget Function(TreeNodeContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TreeNodeContext context) => _build(context);
}

/// Theme-owned composition slots for [TreeNode].
abstract class TreeNodeDelegate extends ComponentDelegate {
  /// Creates a [TreeNodeDelegate].
  const TreeNodeDelegate();

  /// Builds the composition root.
  Widget root(TreeNodeContext context);
}

/// A [TreeNode] widget resolved through [TreeNodeDelegate].
class TreeNode extends StatelessWidget {
  /// Creates a [TreeNode].
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

  /// The visual variant selected by the constructor.
  final TreeNodeVariant variant;

  /// The controlled value.
  final String value;

  /// The label.
  final Widget label;

  /// Child widgets composed by this component.
  final List<Widget>? children;

  /// Whether expanded.
  final bool? expanded;

  /// Whether this item is selected.
  final bool? selected;

  /// The level.
  final int? level;

  /// Called when tap.
  final VoidCallback? onTap;

  /// Style overrides merged over theme defaults.
  final TreeNodeStyle? style;

  /// Resolves properties and builds via [TreeNodeDelegate].
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
