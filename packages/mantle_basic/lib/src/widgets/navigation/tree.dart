import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_basic/src/widgets/navigation/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/navigation.dart';

/// Baseline [TreeDelegate]: maps [TreeNodeData] to recursive [TreeNode]s.
class BasicTreeDelegate extends TreeDelegate {
  /// Creates a baseline tree delegate.
  const BasicTreeDelegate();

  @override
  Widget root(TreeContext context) {
    return TreeScope(
      expanded: context.expanded ?? const [],
      selected: context.selected ?? const [],
      onExpandedChange: context.onExpandedChange,
      onSelected: context.onSelected,
      expandOnClick: context.expandOnClick,
      selectOnClick: context.selectOnClick,
      levelOffset: context.levelOffset,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _nodes(context.data, 1),
      ),
    );
  }
}

List<Widget> _nodes(List<TreeNodeData> data, int level) {
  return [
    for (final node in data)
      TreeNode(
        value: node.value,
        label: Text(node.label),
        level: level,
        children: node.children.isEmpty
            ? null
            : _nodes(node.children, level + 1),
      ),
  ];
}

/// Baseline [TreeNodeDelegate]: a tappable label with nested children.
class BasicTreeNodeDelegate extends TreeNodeDelegate {
  /// Creates a baseline tree-node delegate.
  const BasicTreeNodeDelegate();

  @override
  Widget root(TreeNodeContext context) {
    final scope = TreeScope.maybeOf(context.context);
    final theme = MantleTheme.of(context.context);
    final nested = context.children ?? const <Widget>[];
    final hasChildren = nested.isNotEmpty;
    final expanded = scope != null
        ? scope.expanded.contains(context.value)
        : (context.expanded ?? false);
    final selected = scope != null
        ? scope.selected.contains(context.value)
        : (context.selected ?? false);
    final offset = resolveSpacing(theme, scope?.levelOffset ?? 'lg');
    final indent = (context.level - 1) * offset;
    final scheme = MantleProvider.colorSchemeOf(context.context);
    final selectedFill = scheme == MantleColorScheme.dark
        ? theme.colors['dark'][5]
        : theme.colors['gray'][1];

    void handleTap() {
      context.onTap?.call();
      if (scope == null) {
        return;
      }
      if (scope.expandOnClick && hasChildren) {
        final next = [...scope.expanded];
        if (expanded) {
          next.remove(context.value);
        } else {
          next.add(context.value);
        }
        scope.onExpandedChange?.call(next);
      }
      if (scope.selectOnClick) {
        scope.onSelected?.call(context.value);
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: handleTap,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: selected ? selectedFill : const Color(0x00000000),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(indent, 4, 8, 4),
              child: DefaultTextStyle.merge(
                style: TextStyle(
                  fontSize: resolveFontSize(theme, 'sm'),
                  color: schemeForeground(context.context),
                ),
                child: context.label,
              ),
            ),
          ),
        ),
        if (expanded && hasChildren) ...nested,
      ],
    );
  }
}
