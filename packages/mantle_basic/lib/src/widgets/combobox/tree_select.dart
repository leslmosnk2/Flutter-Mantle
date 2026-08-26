import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/combobox/combobox_chrome.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [TreeSelectDelegate]: tree of selectable nodes in a dropdown.
class BasicTreeSelectDelegate extends TreeSelectDelegate {
  /// Creates a baseline tree-select delegate.
  const BasicTreeSelectDelegate();

  @override
  Widget root(TreeSelectContext context) =>
      _BasicTreeSelect(treeSelectContext: context);
}

class _BasicTreeSelect extends StatefulWidget {
  const _BasicTreeSelect({required this.treeSelectContext});

  final TreeSelectContext treeSelectContext;

  @override
  State<_BasicTreeSelect> createState() => _BasicTreeSelectState();
}

class _BasicTreeSelectState extends State<_BasicTreeSelect> {
  List<String> _value = const [];
  Set<String> _expanded = {};
  String _search = '';
  var _opened = false;
  var _expandInitialized = false;

  TreeSelectContext get _ctx => widget.treeSelectContext;

  List<String> get value => _ctx.value ?? _value;
  String get search => _ctx.searchValue ?? _search;
  bool get opened => _ctx.dropdownOpened ?? _opened;
  Set<String> get expanded {
    if (_ctx.expandedValues != null) {
      return _ctx.expandedValues!.toSet();
    }
    return _expanded;
  }

  @override
  void initState() {
    super.initState();
    if (_ctx.defaultExpandAll) {
      _expanded = {
        for (final node in flattenTreeNodes(_ctx.data))
          if (node.hasChildren) node.value,
      };
      _expandInitialized = true;
    }
  }

  @override
  void didUpdateWidget(covariant _BasicTreeSelect oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_ctx.value != oldWidget.treeSelectContext.value && _ctx.value != null) {
      _value = _ctx.value!;
    }
    if (!_expandInitialized && _ctx.defaultExpandAll) {
      _expanded = {
        for (final node in flattenTreeNodes(_ctx.data))
          if (node.hasChildren) node.value,
      };
      _expandInitialized = true;
    }
  }

  void _setOpened(bool next) {
    if (_ctx.disabled) {
      return;
    }
    if (_ctx.dropdownOpened == null) {
      setState(() => _opened = next);
    }
    if (next) {
      _ctx.onDropdownOpen?.call();
    } else {
      _ctx.onDropdownClose?.call();
    }
  }

  void _setValue(List<String> next) {
    setState(() => _value = next);
    _ctx.onChange?.call(next);
  }

  void _toggleExpanded(String value) {
    final next = Set<String>.of(expanded);
    if (next.contains(value)) {
      next.remove(value);
    } else {
      next.add(value);
    }
    if (_ctx.expandedValues == null) {
      setState(() => _expanded = next);
    }
    _ctx.onExpandedChange?.call(next.toList());
  }

  void _select(TreeNodeData node) {
    if (node.disabled) {
      return;
    }
    final selected = value.toSet();
    if (_ctx.mode == TreeSelectMode.single) {
      if (_ctx.allowDeselect && selected.contains(node.value)) {
        _setValue(const []);
      } else {
        _setValue([node.value]);
      }
      _setOpened(false);
      return;
    }
    if (_ctx.mode == TreeSelectMode.multiple) {
      if (selected.contains(node.value)) {
        _ctx.onRemove?.call(node.value);
        _setValue([
          for (final item in value)
            if (item != node.value) item,
        ]);
      } else if (_ctx.maxValues == null || value.length < _ctx.maxValues!) {
        _setValue([...value, node.value]);
      }
      return;
    }
    // checkbox cascade
    final cascade = treeNodeValues(node);
    if (cascade.every(selected.contains)) {
      _setValue([
        for (final item in value)
          if (!cascade.contains(item)) item,
      ]);
    } else {
      final next = [...value];
      for (final item in cascade) {
        if (!next.contains(item)) {
          next.add(item);
        }
      }
      _setValue(next);
    }
  }

  String get _display {
    if (value.isEmpty) {
      return '';
    }
    if (_ctx.mode == TreeSelectMode.single) {
      return findTreeNode(_ctx.data, value.first)?.label ?? value.first;
    }
    return [
      for (final item in value) findTreeNode(_ctx.data, item)?.label ?? item,
    ].join(', ');
  }

  @override
  Widget build(BuildContext context) {
    final query = search.trim().toLowerCase();
    final rows = <Widget>[];
    void walk(List<TreeNodeData> nodes, int depth) {
      for (final node in nodes) {
        final matches =
            query.isEmpty ||
            node.label.toLowerCase().contains(query) ||
            node.value.toLowerCase().contains(query);
        final showChildren = query.isNotEmpty || expanded.contains(node.value);
        if (matches || (node.hasChildren && _hasMatch(node, query))) {
          rows.add(
            _TreeRow(
              node: node,
              depth: depth,
              expanded: expanded.contains(node.value),
              selected: value.contains(node.value),
              withLines: _ctx.withLines,
              mode: _ctx.mode,
              onToggleExpand: node.hasChildren
                  ? () => _toggleExpanded(node.value)
                  : null,
            ),
          );
        }
        if (node.hasChildren && showChildren) {
          walk(node.children!, depth + 1);
        }
      }
    }

    walk(_ctx.data, 0);
    final body = rows.isEmpty
        ? ComboboxEmpty(
            child: Text(_ctx.nothingFoundMessage ?? 'Nothing found'),
          )
        : Column(mainAxisSize: MainAxisSize.min, children: rows);

    final multiple = _ctx.mode != TreeSelectMode.single;
    final trigger = multiple
        ? PillsInput(
            size: _ctx.size,
            radius: _ctx.radius,
            disabled: _ctx.disabled,
            label: _ctx.label,
            description: _ctx.description,
            error: _ctx.error,
            children: [
              for (final item in value)
                Pill(
                  withRemoveButton: !_ctx.disabled,
                  onRemove: () {
                    _ctx.onRemove?.call(item);
                    _setValue([
                      for (final current in value)
                        if (current != item) current,
                    ]);
                  },
                  child: Text(findTreeNode(_ctx.data, item)?.label ?? item),
                ),
              if (value.isEmpty && _ctx.placeholder != null)
                Text(_ctx.placeholder!),
            ],
          )
        : wrapComboboxField(
            size: _ctx.size,
            label: _ctx.label,
            description: _ctx.description,
            error: _ctx.error,
            child: Input(
              size: _ctx.size,
              radius: _ctx.radius,
              disabled: _ctx.disabled,
              readOnly: !_ctx.searchable,
              pointer: !_ctx.searchable,
              value: _ctx.searchable
                  ? (search.isEmpty ? _display : search)
                  : (_display.isEmpty ? null : _display),
              placeholder: _ctx.placeholder,
              onChanged: _ctx.searchable
                  ? (next) {
                      if (_ctx.searchValue == null) {
                        setState(() => _search = next);
                      }
                      _ctx.onSearchChange?.call(next);
                      _setOpened(true);
                    }
                  : null,
              error: _ctx.error != null ? const SizedBox.shrink() : null,
              rightSection: _ctx.clearable && value.isNotEmpty
                  ? GestureDetector(
                      onTap: () => _setValue(const []),
                      child: const Text('×'),
                    )
                  : ComboboxChevron(
                      size: _ctx.size,
                      error: _ctx.error != null,
                    ),
            ),
          );

    return Combobox(
      dropdownOpened: opened,
      onDropdownOpen: () => _setOpened(true),
      onDropdownClose: () => _setOpened(false),
      size: _ctx.size,
      maxDropdownHeight: _ctx.maxDropdownHeight,
      withScrollArea: false,
      readOnly: _ctx.disabled,
      onOptionSubmit: (submitted) {
        final node = findTreeNode(_ctx.data, submitted);
        if (node != null) {
          _select(node);
        }
      },
      children: [
        ComboboxTarget(child: trigger),
        ComboboxDropdown(
          child: ComboboxOptions(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: _ctx.maxDropdownHeight,
                ),
                child: SingleChildScrollView(child: body),
              ),
            ],
          ),
        ),
      ],
    );
  }

  bool _hasMatch(TreeNodeData node, String query) {
    if (query.isEmpty) {
      return true;
    }
    if (node.label.toLowerCase().contains(query) ||
        node.value.toLowerCase().contains(query)) {
      return true;
    }
    final children = node.children;
    if (children == null) {
      return false;
    }
    return children.any((child) => _hasMatch(child, query));
  }
}

class _TreeRow extends StatelessWidget {
  const _TreeRow({
    required this.node,
    required this.depth,
    required this.expanded,
    required this.selected,
    required this.withLines,
    required this.mode,
    this.onToggleExpand,
  });

  final TreeNodeData node;
  final int depth;
  final bool expanded;
  final bool selected;
  final bool withLines;
  final TreeSelectMode mode;
  final VoidCallback? onToggleExpand;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: withLines && depth > 0
          ? const BoxDecoration(
              border: Border(left: BorderSide(color: Color(0x33000000))),
            )
          : const BoxDecoration(),
      child: Row(
        children: [
          SizedBox(width: depth * 16),
          if (onToggleExpand != null)
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onToggleExpand,
              child: RotatedBox(
                quarterTurns: expanded ? 0 : 3,
                child: const ComboboxChevron(),
              ),
            )
          else
            const SizedBox(width: 18),
          Expanded(
            child: ComboboxOption(
              key: comboboxOptionKey(node.value),
              value: node.value,
              selected: selected,
              disabled: node.disabled,
              child: Row(
                children: [
                  if (mode == TreeSelectMode.checkbox) ...[
                    Text(selected ? '☑' : '☐'),
                    const SizedBox(width: 6),
                  ],
                  Expanded(child: Text(node.label)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
