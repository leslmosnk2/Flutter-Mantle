import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// Called when a combobox option is submitted (click or Enter).
typedef ComboboxOptionSubmit = void Function(String value);

/// Called when a searchable query changes.
typedef ComboboxSearchChanged = void Function(String value);

/// Called when a single-value select/autocomplete changes.
typedef SelectChanged = void Function(String? value);

/// Called when a multi-value selection changes.
typedef MultiSelectChanged = void Function(List<String> value);

/// Called when a cascader path changes. [path] is `null` when cleared.
typedef CascaderChanged = void Function(List<String>? path);

/// Called when tree-select values change (single mode is 0–1 items).
typedef TreeSelectChanged = void Function(List<String> value);

/// Called when expanded tree node ids change.
typedef TreeExpandedChanged = void Function(List<String> values);

/// Position of the check icon relative to an option label.
enum ComboboxCheckIconPosition {
  /// Before the label (start in LTR).
  left,

  /// After the label (end in LTR).
  right,
}

/// Visibility of `PillsInputField`.
enum PillsInputFieldType {
  /// Always shown.
  visible,

  /// Hidden until focused.
  auto,

  /// Never shown (pointer target only).
  hidden,
}

/// How the next Cascader column is opened.
enum CascaderExpandTrigger {
  /// Click the parent option.
  click,

  /// Hover the parent option.
  hover,
}

/// TreeSelect selection mode.
enum TreeSelectMode {
  /// One value; renders as a single input.
  single,

  /// Many values; renders as pills.
  multiple,

  /// Many values with parent–child cascade; renders as pills.
  checkbox,
}

/// Default input / dropdown radius from the theme.
BorderRadiusGeometry defaultComboboxRadius(BuildContext context) {
  return BorderRadius.all(MantleTheme.of(context).resolvedDefaultRadius);
}

/// Pill radius: fully rounded (Mantine `1000rem` fallback).
BorderRadiusGeometry defaultPillRadius(BuildContext context) {
  return const BorderRadius.all(Radius.circular(1000));
}

/// A selectable combobox row. Mantine also accepts raw strings; pass
/// [ComboboxItem.string] for that.
@immutable
class ComboboxItem {
  /// Creates an option.
  const ComboboxItem({
    required this.value,
    String? label,
    this.disabled = false,
    this.group,
  }) : label = label ?? value;

  /// Shortcut when label and value are the same.
  const ComboboxItem.string(
    String value, {
    bool disabled = false,
    String? group,
  }) : this(value: value, disabled: disabled, group: group);

  /// Unique option value.
  final String value;

  /// Display label. Defaults to [value].
  final String label;

  /// When true the option cannot be submitted.
  final bool disabled;

  /// Optional group heading. Consecutive items with the same [group] render
  /// under one `ComboboxGroup`.
  final String? group;

  @override
  bool operator ==(Object other) {
    return other is ComboboxItem &&
        other.value == value &&
        other.label == label &&
        other.disabled == disabled &&
        other.group == group;
  }

  @override
  int get hashCode => Object.hash(value, label, disabled, group);
}

/// Hierarchical node for `Cascader`.
@immutable
class CascaderOption {
  /// Creates a cascader node.
  const CascaderOption({
    required this.value,
    String? label,
    this.children,
    this.disabled = false,
  }) : label = label ?? value;

  /// Unique value across the whole tree.
  final String value;

  /// Display label. Defaults to [value].
  final String label;

  /// Nested options. Empty / null means a leaf.
  final List<CascaderOption>? children;

  /// When true the option cannot be selected or expanded.
  final bool disabled;

  /// Whether this node has children.
  bool get hasChildren => children != null && children!.isNotEmpty;
}

/// Hierarchical node for `TreeSelect`.
@immutable
class TreeNodeData {
  /// Creates a tree node.
  const TreeNodeData({
    required this.value,
    String? label,
    this.children,
    this.disabled = false,
  }) : label = label ?? value;

  /// Unique node value.
  final String value;

  /// Display label. Defaults to [value].
  final String label;

  /// Nested nodes.
  final List<TreeNodeData>? children;

  /// When true the node cannot be selected.
  final bool disabled;

  /// Whether this node has children.
  bool get hasChildren => children != null && children!.isNotEmpty;
}

/// Combobox store published to compound children (Target, Dropdown, Option).
class ComboboxScope extends InheritedWidget {
  /// Creates a combobox scope.
  const ComboboxScope({
    required this.opened,
    required this.size,
    required this.readOnly,
    required this.openDropdown,
    required this.closeDropdown,
    required this.toggleDropdown,
    required super.child,
    this.onOptionSubmit,
    this.search = '',
    this.onSearchChange,
    this.dropdownPadding = 4,
    this.maxDropdownHeight = 250,
    this.withScrollArea = true,
    this.background,
    this.borderColor,
    this.radius,
    super.key,
  });

  /// Whether the dropdown is visible.
  final bool opened;

  /// Size token (`xs`–`xl`), default `sm`.
  final String size;

  /// Dropdown padding in logical pixels.
  final double dropdownPadding;

  /// Max dropdown height when scrolling.
  final double maxDropdownHeight;

  /// Whether the dropdown is wrapped in a scroll view.
  final bool withScrollArea;

  /// Optional dropdown fill override.
  final Color? background;

  /// Optional dropdown border override.
  final Color? borderColor;

  /// Optional dropdown radius override.
  final BorderRadiusGeometry? radius;

  /// When true, options cannot be submitted and the dropdown stays closed.
  final bool readOnly;

  /// Opens the dropdown.
  final VoidCallback openDropdown;

  /// Closes the dropdown.
  final VoidCallback closeDropdown;

  /// Toggles the dropdown.
  final VoidCallback toggleDropdown;

  /// Option submit from `ComboboxOption`.
  final ComboboxOptionSubmit? onOptionSubmit;

  /// Current search query (searchable composed widgets).
  final String search;

  /// Search-query updates from `ComboboxSearch`.
  final ComboboxSearchChanged? onSearchChange;

  /// Nearest scope, or null.
  static ComboboxScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ComboboxScope>();
  }

  /// Nearest scope.
  static ComboboxScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'Combobox compound used outside Combobox');
    return scope!;
  }

  @override
  bool updateShouldNotify(ComboboxScope oldWidget) {
    return opened != oldWidget.opened ||
        size != oldWidget.size ||
        readOnly != oldWidget.readOnly ||
        search != oldWidget.search;
  }
}

/// Size published to pills inside `PillsInput` / `PillGroup`.
class PillGroupScope extends InheritedWidget {
  /// Creates a pill-group scope.
  const PillGroupScope({
    required super.child,
    this.size,
    this.disabled = false,
    super.key,
  });

  /// Size token inherited by child `Pill` widgets.
  final String? size;

  /// When true, child pills are disabled.
  final bool disabled;

  /// Nearest scope, or null.
  static PillGroupScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PillGroupScope>();
  }

  @override
  bool updateShouldNotify(PillGroupScope oldWidget) {
    return size != oldWidget.size || disabled != oldWidget.disabled;
  }
}

/// Default substring filter used by Select / Autocomplete / ComboboxPopover.
List<ComboboxItem> filterComboboxItems({
  required List<ComboboxItem> data,
  required String search,
  int? limit,
}) {
  final query = search.trim().toLowerCase();
  final matched = query.isEmpty
      ? data
      : [
          for (final item in data)
            if (item.label.toLowerCase().contains(query) ||
                item.value.toLowerCase().contains(query))
              item,
        ];
  if (limit == null || matched.length <= limit) {
    return matched;
  }
  return matched.take(limit).toList();
}

/// Walks [options] and returns the node whose value equals [value].
CascaderOption? findCascaderOption(List<CascaderOption> options, String value) {
  for (final option in options) {
    if (option.value == value) {
      return option;
    }
    final nested = option.children;
    if (nested != null) {
      final found = findCascaderOption(nested, value);
      if (found != null) {
        return found;
      }
    }
  }
  return null;
}

/// Resolves a path of values to option nodes. Stops at the first miss.
List<CascaderOption> resolveCascaderPath(
  List<CascaderOption> options,
  List<String> path,
) {
  final resolved = <CascaderOption>[];
  var level = options;
  for (final value in path) {
    CascaderOption? match;
    for (final option in level) {
      if (option.value == value) {
        match = option;
        break;
      }
    }
    if (match == null) {
      break;
    }
    resolved.add(match);
    level = match.children ?? const [];
  }
  return resolved;
}

/// Depth-first flatten of [nodes].
List<TreeNodeData> flattenTreeNodes(List<TreeNodeData> nodes) {
  final out = <TreeNodeData>[];
  void walk(List<TreeNodeData> items) {
    for (final node in items) {
      out.add(node);
      final children = node.children;
      if (children != null) {
        walk(children);
      }
    }
  }

  walk(nodes);
  return out;
}

/// Finds a tree node by [value].
TreeNodeData? findTreeNode(List<TreeNodeData> nodes, String value) {
  for (final node in nodes) {
    if (node.value == value) {
      return node;
    }
    final children = node.children;
    if (children != null) {
      final found = findTreeNode(children, value);
      if (found != null) {
        return found;
      }
    }
  }
  return null;
}

/// Collects [node] and every descendant value.
List<String> treeNodeValues(TreeNodeData node) {
  final out = <String>[node.value];
  final children = node.children;
  if (children != null) {
    for (final child in children) {
      out.addAll(treeNodeValues(child));
    }
  }
  return out;
}
