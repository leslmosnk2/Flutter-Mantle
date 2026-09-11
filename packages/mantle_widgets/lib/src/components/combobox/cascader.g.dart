// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cascader.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Cascader].
enum CascaderVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Cascader].
@immutable
class CascaderStyle {
  /// Creates a [CascaderStyle].
  const CascaderStyle({
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

  /// Returns a copy of this [CascaderStyle] with selected fields replaced.
  CascaderStyle copyWith({
    Color? background,
    Color? borderColor,
    double? height,
    BorderRadiusGeometry? radius,
  }) {
    return CascaderStyle(
      background: background ?? this.background,
      borderColor: borderColor ?? this.borderColor,
      height: height ?? this.height,
      radius: radius ?? this.radius,
    );
  }

  /// Merges [other] over this [CascaderStyle]; null fields keep this value.
  CascaderStyle mergeWith(CascaderStyle? other) {
    if (other == null) return this;
    return CascaderStyle(
      background: background ?? other.background,
      borderColor: borderColor ?? other.borderColor,
      height: height ?? other.height,
      radius: radius ?? other.radius,
    );
  }
}

/// Resolved interaction state for [Cascader].
@immutable
class CascaderState {
  /// Creates a [CascaderState].
  const CascaderState({this.disabled = false});

  /// Whether interaction is disabled.
  final bool disabled;
}

/// Values passed to [CascaderDelegate] slots during build.
@immutable
class CascaderContext {
  /// Creates a [CascaderContext].
  const CascaderContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.data,
    this.value,
    this.onChange,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    required this.searchable,
    this.searchValue,
    this.onSearchChange,
    required this.changeOnSelect,
    required this.withColumns,
    required this.expandTrigger,
    required this.allowDeselect,
    required this.clearable,
    required this.disabled,
    this.dropdownOpened,
    this.onDropdownOpen,
    this.onDropdownClose,
    this.nothingFoundMessage,
    required this.separator,
    required this.columnWidth,
    required this.maxDropdownHeight,
    required this.size,
    required this.radius,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final CascaderStyle style;

  /// Resolved interaction state for this build.
  final CascaderState state;

  /// The visual variant selected by the constructor.
  final CascaderVariant variant;

  /// Tabular data to render.
  final List<CascaderOption> data;

  /// The controlled value.
  final List<String>? value;

  /// Called when the value changes.
  final CascaderChanged? onChange;

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

  /// Whether change on select.
  final bool changeOnSelect;

  /// Whether with columns.
  final bool withColumns;

  /// The expand trigger.
  final CascaderExpandTrigger expandTrigger;

  /// Whether allow deselect.
  final bool allowDeselect;

  /// Whether the value can be cleared.
  final bool clearable;

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

  /// The separator.
  final String separator;

  /// The column width.
  final double columnWidth;

  /// The max dropdown height.
  final double maxDropdownHeight;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class CascaderRoot {
  /// Creates a [CascaderRoot] from a builder function.
  const CascaderRoot(this._build);

  final Widget Function(CascaderContext context) _build;

  /// Invokes this slot with [context].
  Widget call(CascaderContext context) => _build(context);
}

/// Theme-owned composition slots for [Cascader].
abstract class CascaderDelegate extends ComponentDelegate {
  /// Creates a [CascaderDelegate].
  const CascaderDelegate();

  /// Builds the composition root.
  Widget root(CascaderContext context);
}

/// A [Cascader] widget resolved through [CascaderDelegate].
class Cascader extends StatelessWidget {
  /// Creates a [Cascader].
  const Cascader({
    super.key,
    required this.data,
    this.value,
    this.onChange,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.searchable,
    this.searchValue,
    this.onSearchChange,
    this.changeOnSelect,
    this.withColumns,
    this.expandTrigger,
    this.allowDeselect,
    this.clearable,
    this.disabled,
    this.dropdownOpened,
    this.onDropdownOpen,
    this.onDropdownClose,
    this.nothingFoundMessage,
    this.separator,
    this.columnWidth,
    this.maxDropdownHeight,
    this.size,
    this.radius,
    this.style,
  }) : variant = CascaderVariant.defaults;

  /// The visual variant selected by the constructor.
  final CascaderVariant variant;

  /// Tabular data to render.
  final List<CascaderOption> data;

  /// The controlled value.
  final List<String>? value;

  /// Called when the value changes.
  final CascaderChanged? onChange;

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

  /// Whether change on select.
  final bool? changeOnSelect;

  /// Whether with columns.
  final bool? withColumns;

  /// The expand trigger.
  final CascaderExpandTrigger? expandTrigger;

  /// Whether allow deselect.
  final bool? allowDeselect;

  /// Whether the value can be cleared.
  final bool? clearable;

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

  /// The separator.
  final String? separator;

  /// The column width.
  final double? columnWidth;

  /// The max dropdown height.
  final double? maxDropdownHeight;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final CascaderStyle? style;

  /// Resolves properties and builds via [CascaderDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedData = data;
    final resolvedValue = value;
    final resolvedOnChange = onChange;
    final resolvedPlaceholder = placeholder;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedSearchable = searchable ?? false;
    final resolvedSearchValue = searchValue;
    final resolvedOnSearchChange = onSearchChange;
    final resolvedChangeOnSelect = changeOnSelect ?? false;
    final resolvedWithColumns = withColumns ?? true;
    final resolvedExpandTrigger = expandTrigger ?? CascaderExpandTrigger.click;
    final resolvedAllowDeselect = allowDeselect ?? true;
    final resolvedClearable = clearable ?? false;
    final resolvedDisabled = disabled ?? false;
    final resolvedDropdownOpened = dropdownOpened;
    final resolvedOnDropdownOpen = onDropdownOpen;
    final resolvedOnDropdownClose = onDropdownClose;
    final resolvedNothingFoundMessage = nothingFoundMessage;
    final resolvedSeparator = separator ?? ' / ';
    final resolvedColumnWidth = columnWidth ?? 200.0;
    final resolvedMaxDropdownHeight = maxDropdownHeight ?? 250.0;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius =
        radius ?? style?.radius ?? defaultComboboxRadius(context);

    final fromProps = CascaderStyle(radius: radius);
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = CascaderStyle(
      background: merged.background,
      borderColor: merged.borderColor,
      height: merged.height,
      radius: merged.radius ?? defaultComboboxRadius(context),
    );
    final resolvedState = CascaderState(disabled: resolvedDisabled);
    final cascaderContext = CascaderContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      data: resolvedData,
      value: resolvedValue,
      onChange: resolvedOnChange,
      placeholder: resolvedPlaceholder,
      label: resolvedLabel,
      description: resolvedDescription,
      error: resolvedError,
      searchable: resolvedSearchable,
      searchValue: resolvedSearchValue,
      onSearchChange: resolvedOnSearchChange,
      changeOnSelect: resolvedChangeOnSelect,
      withColumns: resolvedWithColumns,
      expandTrigger: resolvedExpandTrigger,
      allowDeselect: resolvedAllowDeselect,
      clearable: resolvedClearable,
      disabled: resolvedDisabled,
      dropdownOpened: resolvedDropdownOpened,
      onDropdownOpen: resolvedOnDropdownOpen,
      onDropdownClose: resolvedOnDropdownClose,
      nothingFoundMessage: resolvedNothingFoundMessage,
      separator: resolvedSeparator,
      columnWidth: resolvedColumnWidth,
      maxDropdownHeight: resolvedMaxDropdownHeight,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<CascaderDelegate>();
    return delegate.root(cascaderContext);
  }
}
