// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_select.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [TreeSelect].
enum TreeSelectVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [TreeSelect].
@immutable
class TreeSelectStyle {
  /// Creates a [TreeSelectStyle].
  const TreeSelectStyle({
    this.background,
    this.borderColor,
    this.height,
    this.radius,
  });

  /// Background color.
  final Color? background;

  /// Border color token or value.
  final Color? borderColor;

  /// Height in logical pixels.
  final double? height;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Returns a copy of this [TreeSelectStyle] with selected fields replaced.
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

  /// Merges [other] over this [TreeSelectStyle]; null fields keep this value.
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

/// Resolved interaction state for [TreeSelect].
@immutable
class TreeSelectState {
  /// Creates a [TreeSelectState].
  const TreeSelectState({
    this.disabled = false,
    this.mode = TreeSelectMode.single,
  });

  /// Whether interaction is disabled.
  final bool disabled;

  /// The mode.
  final TreeSelectMode mode;
}

/// Values passed to [TreeSelectDelegate] slots during build.
@immutable
class TreeSelectContext {
  /// Creates a [TreeSelectContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TreeSelectStyle style;

  /// Resolved interaction state for this build.
  final TreeSelectState state;

  /// The visual variant selected by the constructor.
  final TreeSelectVariant variant;

  /// Tabular data to render.
  final List<TreeNodeData> data;

  /// The controlled value.
  final List<String>? value;

  /// Called when the value changes.
  final TreeSelectChanged? onChange;

  /// The mode.
  final TreeSelectMode mode;

  /// Placeholder text when empty.
  final String? placeholder;

  /// The label.
  final String? label;

  /// Supporting description text.
  final String? description;

  /// Error text or error state.
  final String? error;

  /// Whether the list can be filtered.
  final bool searchable;

  /// Controlled search text.
  final String? searchValue;

  /// Called when the search text changes.
  final ComboboxSearchChanged? onSearchChange;

  /// Whether default expand all.
  final bool defaultExpandAll;

  /// The expanded values.
  final List<String>? expandedValues;

  /// Called when expanded change.
  final TreeExpandedChanged? onExpandedChange;

  /// Whether with lines.
  final bool withLines;

  /// Whether allow deselect.
  final bool allowDeselect;

  /// Whether the value can be cleared.
  final bool clearable;

  /// Maximum number of selected values.
  final int? maxValues;

  /// Called when an item is removed.
  final ComboboxOptionSubmit? onRemove;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether the dropdown is open.
  final bool? dropdownOpened;

  /// Called when the dropdown opens.
  final VoidCallback? onDropdownOpen;

  /// Called when the dropdown closes.
  final VoidCallback? onDropdownClose;

  /// Message shown when no options match.
  final String? nothingFoundMessage;

  /// The max dropdown height.
  final double maxDropdownHeight;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class TreeSelectRoot {
  /// Creates a [TreeSelectRoot] from a builder function.
  const TreeSelectRoot(this._build);

  final Widget Function(TreeSelectContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TreeSelectContext context) => _build(context);
}

/// Theme-owned composition slots for [TreeSelect].
abstract class TreeSelectDelegate extends ComponentDelegate {
  /// Creates a [TreeSelectDelegate].
  const TreeSelectDelegate();

  /// Builds the composition root.
  Widget root(TreeSelectContext context);
}

/// A [TreeSelect] widget resolved through [TreeSelectDelegate].
class TreeSelect extends StatelessWidget {
  /// Creates a [TreeSelect].
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

  /// The visual variant selected by the constructor.
  final TreeSelectVariant variant;

  /// Tabular data to render.
  final List<TreeNodeData> data;

  /// The controlled value.
  final List<String>? value;

  /// Called when the value changes.
  final TreeSelectChanged? onChange;

  /// The mode.
  final TreeSelectMode? mode;

  /// Placeholder text when empty.
  final String? placeholder;

  /// The label.
  final String? label;

  /// Supporting description text.
  final String? description;

  /// Error text or error state.
  final String? error;

  /// Whether the list can be filtered.
  final bool? searchable;

  /// Controlled search text.
  final String? searchValue;

  /// Called when the search text changes.
  final ComboboxSearchChanged? onSearchChange;

  /// Whether default expand all.
  final bool? defaultExpandAll;

  /// The expanded values.
  final List<String>? expandedValues;

  /// Called when expanded change.
  final TreeExpandedChanged? onExpandedChange;

  /// Whether with lines.
  final bool? withLines;

  /// Whether allow deselect.
  final bool? allowDeselect;

  /// Whether the value can be cleared.
  final bool? clearable;

  /// Maximum number of selected values.
  final int? maxValues;

  /// Called when an item is removed.
  final ComboboxOptionSubmit? onRemove;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether the dropdown is open.
  final bool? dropdownOpened;

  /// Called when the dropdown opens.
  final VoidCallback? onDropdownOpen;

  /// Called when the dropdown closes.
  final VoidCallback? onDropdownClose;

  /// Message shown when no options match.
  final String? nothingFoundMessage;

  /// The max dropdown height.
  final double? maxDropdownHeight;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final TreeSelectStyle? style;

  /// Resolves properties and builds via [TreeSelectDelegate].
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
