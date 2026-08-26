// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_select.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MultiSelectVariant { defaults }

@immutable
class MultiSelectStyle {
  const MultiSelectStyle({
    this.background,
    this.borderColor,
    this.height,
    this.radius,
  });

  final Color? background;
  final Color? borderColor;
  final double? height;
  final BorderRadiusGeometry? radius;

  MultiSelectStyle copyWith({
    Color? background,
    Color? borderColor,
    double? height,
    BorderRadiusGeometry? radius,
  }) {
    return MultiSelectStyle(
      background: background ?? this.background,
      borderColor: borderColor ?? this.borderColor,
      height: height ?? this.height,
      radius: radius ?? this.radius,
    );
  }

  MultiSelectStyle mergeWith(MultiSelectStyle? other) {
    if (other == null) return this;
    return MultiSelectStyle(
      background: background ?? other.background,
      borderColor: borderColor ?? other.borderColor,
      height: height ?? other.height,
      radius: radius ?? other.radius,
    );
  }
}

@immutable
class MultiSelectState {
  const MultiSelectState({this.disabled = false, this.searchable = false});

  final bool disabled;
  final bool searchable;
}

@immutable
class MultiSelectContext {
  const MultiSelectContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.data,
    this.value,
    this.onChange,
    this.onRemove,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    required this.searchable,
    this.searchValue,
    this.onSearchChange,
    this.maxValues,
    required this.hidePickedOptions,
    required this.clearable,
    required this.disabled,
    required this.readOnly,
    this.dropdownOpened,
    this.onDropdownOpen,
    this.onDropdownClose,
    this.nothingFoundMessage,
    required this.withCheckIcon,
    required this.checkIconPosition,
    this.limit,
    required this.maxDropdownHeight,
    required this.size,
    required this.radius,
  });

  final BuildContext context;
  final MultiSelectStyle style;
  final MultiSelectState state;
  final MultiSelectVariant variant;
  final List<ComboboxItem> data;
  final List<String>? value;
  final MultiSelectChanged? onChange;
  final ComboboxOptionSubmit? onRemove;
  final String? placeholder;
  final String? label;
  final String? description;
  final String? error;
  final bool searchable;
  final String? searchValue;
  final ComboboxSearchChanged? onSearchChange;
  final int? maxValues;
  final bool hidePickedOptions;
  final bool clearable;
  final bool disabled;
  final bool readOnly;
  final bool? dropdownOpened;
  final VoidCallback? onDropdownOpen;
  final VoidCallback? onDropdownClose;
  final String? nothingFoundMessage;
  final bool withCheckIcon;
  final ComboboxCheckIconPosition checkIconPosition;
  final int? limit;
  final double maxDropdownHeight;
  final String size;
  final BorderRadiusGeometry radius;
}

class MultiSelectRoot {
  const MultiSelectRoot(this._build);

  final Widget Function(MultiSelectContext context) _build;

  Widget call(MultiSelectContext context) => _build(context);
}

abstract class MultiSelectDelegate extends ComponentDelegate {
  const MultiSelectDelegate();

  Widget root(MultiSelectContext context);
}

class MultiSelect extends StatelessWidget {
  const MultiSelect({
    super.key,
    required this.data,
    this.value,
    this.onChange,
    this.onRemove,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.searchable,
    this.searchValue,
    this.onSearchChange,
    this.maxValues,
    this.hidePickedOptions,
    this.clearable,
    this.disabled,
    this.readOnly,
    this.dropdownOpened,
    this.onDropdownOpen,
    this.onDropdownClose,
    this.nothingFoundMessage,
    this.withCheckIcon,
    this.checkIconPosition,
    this.limit,
    this.maxDropdownHeight,
    this.size,
    this.radius,
    this.style,
  }) : variant = MultiSelectVariant.defaults;

  final MultiSelectVariant variant;
  final List<ComboboxItem> data;
  final List<String>? value;
  final MultiSelectChanged? onChange;
  final ComboboxOptionSubmit? onRemove;
  final String? placeholder;
  final String? label;
  final String? description;
  final String? error;
  final bool? searchable;
  final String? searchValue;
  final ComboboxSearchChanged? onSearchChange;
  final int? maxValues;
  final bool? hidePickedOptions;
  final bool? clearable;
  final bool? disabled;
  final bool? readOnly;
  final bool? dropdownOpened;
  final VoidCallback? onDropdownOpen;
  final VoidCallback? onDropdownClose;
  final String? nothingFoundMessage;
  final bool? withCheckIcon;
  final ComboboxCheckIconPosition? checkIconPosition;
  final int? limit;
  final double? maxDropdownHeight;
  final String? size;
  final BorderRadiusGeometry? radius;
  final MultiSelectStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedData = data;
    final resolvedValue = value;
    final resolvedOnChange = onChange;
    final resolvedOnRemove = onRemove;
    final resolvedPlaceholder = placeholder;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedSearchable = searchable ?? false;
    final resolvedSearchValue = searchValue;
    final resolvedOnSearchChange = onSearchChange;
    final resolvedMaxValues = maxValues;
    final resolvedHidePickedOptions = hidePickedOptions ?? false;
    final resolvedClearable = clearable ?? false;
    final resolvedDisabled = disabled ?? false;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedDropdownOpened = dropdownOpened;
    final resolvedOnDropdownOpen = onDropdownOpen;
    final resolvedOnDropdownClose = onDropdownClose;
    final resolvedNothingFoundMessage = nothingFoundMessage;
    final resolvedWithCheckIcon = withCheckIcon ?? true;
    final resolvedCheckIconPosition =
        checkIconPosition ?? ComboboxCheckIconPosition.left;
    final resolvedLimit = limit;
    final resolvedMaxDropdownHeight = maxDropdownHeight ?? 250.0;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius =
        radius ?? style?.radius ?? defaultComboboxRadius(context);

    final fromProps = MultiSelectStyle(radius: radius);
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = MultiSelectStyle(
      background: merged.background,
      borderColor: merged.borderColor,
      height: merged.height,
      radius: merged.radius ?? defaultComboboxRadius(context),
    );
    final resolvedState = MultiSelectState(
      disabled: resolvedDisabled,
      searchable: resolvedSearchable,
    );
    final multiSelectContext = MultiSelectContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      data: resolvedData,
      value: resolvedValue,
      onChange: resolvedOnChange,
      onRemove: resolvedOnRemove,
      placeholder: resolvedPlaceholder,
      label: resolvedLabel,
      description: resolvedDescription,
      error: resolvedError,
      searchable: resolvedSearchable,
      searchValue: resolvedSearchValue,
      onSearchChange: resolvedOnSearchChange,
      maxValues: resolvedMaxValues,
      hidePickedOptions: resolvedHidePickedOptions,
      clearable: resolvedClearable,
      disabled: resolvedDisabled,
      readOnly: resolvedReadOnly,
      dropdownOpened: resolvedDropdownOpened,
      onDropdownOpen: resolvedOnDropdownOpen,
      onDropdownClose: resolvedOnDropdownClose,
      nothingFoundMessage: resolvedNothingFoundMessage,
      withCheckIcon: resolvedWithCheckIcon,
      checkIconPosition: resolvedCheckIconPosition,
      limit: resolvedLimit,
      maxDropdownHeight: resolvedMaxDropdownHeight,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<MultiSelectDelegate>();
    return delegate.root(multiSelectContext);
  }
}
