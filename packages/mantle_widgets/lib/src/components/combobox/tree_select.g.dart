// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_select.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum TreeSelectVariant { defaults }

@immutable
class TreeSelectStyle {
  const TreeSelectStyle({
    this.background,
    this.borderColor,
    this.height,
    this.radius,
  });

  final Color? background;
  final Color? borderColor;
  final double? height;
  final BorderRadiusGeometry? radius;

  TreeSelectStyle copyWith({
    Color? background,
    Color? borderColor,
    double? height,
    BorderRadiusGeometry? radius,
  }) {
    return TreeSelectStyle(
      background: background ?? this.background,
      borderColor: borderColor ?? this.borderColor,
      height: height ?? this.height,
      radius: radius ?? this.radius,
    );
  }

  TreeSelectStyle mergeWith(TreeSelectStyle? other) {
    if (other == null) return this;
    return TreeSelectStyle(
      background: background ?? other.background,
      borderColor: borderColor ?? other.borderColor,
      height: height ?? other.height,
      radius: radius ?? other.radius,
    );
  }
}

@immutable
class TreeSelectState {
  const TreeSelectState({
    this.disabled = false,
    this.mode = TreeSelectMode.single,
  });

  final bool disabled;
  final TreeSelectMode mode;
}

@immutable
class TreeSelectContext {
  const TreeSelectContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.data,
    this.value,
    this.onChange,
    required this.mode,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    required this.searchable,
    this.searchValue,
    this.onSearchChange,
    required this.defaultExpandAll,
    this.expandedValues,
    this.onExpandedChange,
    required this.withLines,
    required this.allowDeselect,
    required this.clearable,
    this.maxValues,
    this.onRemove,
    required this.disabled,
    this.dropdownOpened,
    this.onDropdownOpen,
    this.onDropdownClose,
    this.nothingFoundMessage,
    required this.maxDropdownHeight,
    required this.size,
    required this.radius,
  });

  final BuildContext context;
  final TreeSelectStyle style;
  final TreeSelectState state;
  final TreeSelectVariant variant;
  final List<TreeNodeData> data;
  final List<String>? value;
  final TreeSelectChanged? onChange;
  final TreeSelectMode mode;
  final String? placeholder;
  final String? label;
  final String? description;
  final String? error;
  final bool searchable;
  final String? searchValue;
  final ComboboxSearchChanged? onSearchChange;
  final bool defaultExpandAll;
  final List<String>? expandedValues;
  final TreeExpandedChanged? onExpandedChange;
  final bool withLines;
  final bool allowDeselect;
  final bool clearable;
  final int? maxValues;
  final ComboboxOptionSubmit? onRemove;
  final bool disabled;
  final bool? dropdownOpened;
  final VoidCallback? onDropdownOpen;
  final VoidCallback? onDropdownClose;
  final String? nothingFoundMessage;
  final double maxDropdownHeight;
  final String size;
  final BorderRadiusGeometry radius;
}

class TreeSelectRoot {
  const TreeSelectRoot(this._build);

  final Widget Function(TreeSelectContext context) _build;

  Widget call(TreeSelectContext context) => _build(context);
}

abstract class TreeSelectDelegate extends ComponentDelegate {
  const TreeSelectDelegate();

  Widget root(TreeSelectContext context);
}

class TreeSelect extends StatelessWidget {
  const TreeSelect({
    super.key,
    required this.data,
    this.value,
    this.onChange,
    this.mode,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.searchable,
    this.searchValue,
    this.onSearchChange,
    this.defaultExpandAll,
    this.expandedValues,
    this.onExpandedChange,
    this.withLines,
    this.allowDeselect,
    this.clearable,
    this.maxValues,
    this.onRemove,
    this.disabled,
    this.dropdownOpened,
    this.onDropdownOpen,
    this.onDropdownClose,
    this.nothingFoundMessage,
    this.maxDropdownHeight,
    this.size,
    this.radius,
    this.style,
  }) : variant = TreeSelectVariant.defaults;

  final TreeSelectVariant variant;
  final List<TreeNodeData> data;
  final List<String>? value;
  final TreeSelectChanged? onChange;
  final TreeSelectMode? mode;
  final String? placeholder;
  final String? label;
  final String? description;
  final String? error;
  final bool? searchable;
  final String? searchValue;
  final ComboboxSearchChanged? onSearchChange;
  final bool? defaultExpandAll;
  final List<String>? expandedValues;
  final TreeExpandedChanged? onExpandedChange;
  final bool? withLines;
  final bool? allowDeselect;
  final bool? clearable;
  final int? maxValues;
  final ComboboxOptionSubmit? onRemove;
  final bool? disabled;
  final bool? dropdownOpened;
  final VoidCallback? onDropdownOpen;
  final VoidCallback? onDropdownClose;
  final String? nothingFoundMessage;
  final double? maxDropdownHeight;
  final String? size;
  final BorderRadiusGeometry? radius;
  final TreeSelectStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedData = data;
    final resolvedValue = value;
    final resolvedOnChange = onChange;
    final resolvedMode = mode ?? TreeSelectMode.single;
    final resolvedPlaceholder = placeholder;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedSearchable = searchable ?? false;
    final resolvedSearchValue = searchValue;
    final resolvedOnSearchChange = onSearchChange;
    final resolvedDefaultExpandAll = defaultExpandAll ?? false;
    final resolvedExpandedValues = expandedValues;
    final resolvedOnExpandedChange = onExpandedChange;
    final resolvedWithLines = withLines ?? false;
    final resolvedAllowDeselect = allowDeselect ?? true;
    final resolvedClearable = clearable ?? false;
    final resolvedMaxValues = maxValues;
    final resolvedOnRemove = onRemove;
    final resolvedDisabled = disabled ?? false;
    final resolvedDropdownOpened = dropdownOpened;
    final resolvedOnDropdownOpen = onDropdownOpen;
    final resolvedOnDropdownClose = onDropdownClose;
    final resolvedNothingFoundMessage = nothingFoundMessage;
    final resolvedMaxDropdownHeight = maxDropdownHeight ?? 250.0;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius =
        radius ?? style?.radius ?? defaultComboboxRadius(context);

    final fromProps = TreeSelectStyle(radius: radius);
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = TreeSelectStyle(
      background: merged.background,
      borderColor: merged.borderColor,
      height: merged.height,
      radius: merged.radius ?? defaultComboboxRadius(context),
    );
    final resolvedState = TreeSelectState(
      disabled: resolvedDisabled,
      mode: resolvedMode,
    );
    final treeSelectContext = TreeSelectContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      data: resolvedData,
      value: resolvedValue,
      onChange: resolvedOnChange,
      mode: resolvedMode,
      placeholder: resolvedPlaceholder,
      label: resolvedLabel,
      description: resolvedDescription,
      error: resolvedError,
      searchable: resolvedSearchable,
      searchValue: resolvedSearchValue,
      onSearchChange: resolvedOnSearchChange,
      defaultExpandAll: resolvedDefaultExpandAll,
      expandedValues: resolvedExpandedValues,
      onExpandedChange: resolvedOnExpandedChange,
      withLines: resolvedWithLines,
      allowDeselect: resolvedAllowDeselect,
      clearable: resolvedClearable,
      maxValues: resolvedMaxValues,
      onRemove: resolvedOnRemove,
      disabled: resolvedDisabled,
      dropdownOpened: resolvedDropdownOpened,
      onDropdownOpen: resolvedOnDropdownOpen,
      onDropdownClose: resolvedOnDropdownClose,
      nothingFoundMessage: resolvedNothingFoundMessage,
      maxDropdownHeight: resolvedMaxDropdownHeight,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<TreeSelectDelegate>();
    return delegate.root(treeSelectContext);
  }
}
