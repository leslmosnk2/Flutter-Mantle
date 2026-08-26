// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cascader.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum CascaderVariant { defaults }

@immutable
class CascaderStyle {
  const CascaderStyle({
    this.background,
    this.borderColor,
    this.height,
    this.radius,
  });

  final Color? background;
  final Color? borderColor;
  final double? height;
  final BorderRadiusGeometry? radius;

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

@immutable
class CascaderState {
  const CascaderState({this.disabled = false});

  final bool disabled;
}

@immutable
class CascaderContext {
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

  final BuildContext context;
  final CascaderStyle style;
  final CascaderState state;
  final CascaderVariant variant;
  final List<CascaderOption> data;
  final List<String>? value;
  final CascaderChanged? onChange;
  final String? placeholder;
  final String? label;
  final String? description;
  final String? error;
  final bool searchable;
  final String? searchValue;
  final ComboboxSearchChanged? onSearchChange;
  final bool changeOnSelect;
  final bool withColumns;
  final CascaderExpandTrigger expandTrigger;
  final bool allowDeselect;
  final bool clearable;
  final bool disabled;
  final bool? dropdownOpened;
  final VoidCallback? onDropdownOpen;
  final VoidCallback? onDropdownClose;
  final String? nothingFoundMessage;
  final String separator;
  final double columnWidth;
  final double maxDropdownHeight;
  final String size;
  final BorderRadiusGeometry radius;
}

class CascaderRoot {
  const CascaderRoot(this._build);

  final Widget Function(CascaderContext context) _build;

  Widget call(CascaderContext context) => _build(context);
}

abstract class CascaderDelegate extends ComponentDelegate {
  const CascaderDelegate();

  Widget root(CascaderContext context);
}

class Cascader extends StatelessWidget {
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

  final CascaderVariant variant;
  final List<CascaderOption> data;
  final List<String>? value;
  final CascaderChanged? onChange;
  final String? placeholder;
  final String? label;
  final String? description;
  final String? error;
  final bool? searchable;
  final String? searchValue;
  final ComboboxSearchChanged? onSearchChange;
  final bool? changeOnSelect;
  final bool? withColumns;
  final CascaderExpandTrigger? expandTrigger;
  final bool? allowDeselect;
  final bool? clearable;
  final bool? disabled;
  final bool? dropdownOpened;
  final VoidCallback? onDropdownOpen;
  final VoidCallback? onDropdownClose;
  final String? nothingFoundMessage;
  final String? separator;
  final double? columnWidth;
  final double? maxDropdownHeight;
  final String? size;
  final BorderRadiusGeometry? radius;
  final CascaderStyle? style;

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
