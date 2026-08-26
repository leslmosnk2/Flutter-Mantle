// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum SelectVariant { defaults }

@immutable
class SelectStyle {
  const SelectStyle({
    this.background,
    this.borderColor,
    this.color,
    this.height,
    this.radius,
  });

  final Color? background;
  final Color? borderColor;
  final Color? color;
  final double? height;
  final BorderRadiusGeometry? radius;

  SelectStyle copyWith({
    Color? background,
    Color? borderColor,
    Color? color,
    double? height,
    BorderRadiusGeometry? radius,
  }) {
    return SelectStyle(
      background: background ?? this.background,
      borderColor: borderColor ?? this.borderColor,
      color: color ?? this.color,
      height: height ?? this.height,
      radius: radius ?? this.radius,
    );
  }

  SelectStyle mergeWith(SelectStyle? other) {
    if (other == null) return this;
    return SelectStyle(
      background: background ?? other.background,
      borderColor: borderColor ?? other.borderColor,
      color: color ?? other.color,
      height: height ?? other.height,
      radius: radius ?? other.radius,
    );
  }
}

@immutable
class SelectState {
  const SelectState({this.disabled = false, this.searchable = false});

  final bool disabled;
  final bool searchable;
}

@immutable
class SelectContext {
  const SelectContext({
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
    required this.clearable,
    required this.allowDeselect,
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
  final SelectStyle style;
  final SelectState state;
  final SelectVariant variant;
  final List<ComboboxItem> data;
  final String? value;
  final SelectChanged? onChange;
  final String? placeholder;
  final String? label;
  final String? description;
  final String? error;
  final bool searchable;
  final String? searchValue;
  final ComboboxSearchChanged? onSearchChange;
  final bool clearable;
  final bool allowDeselect;
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

class SelectRoot {
  const SelectRoot(this._build);

  final Widget Function(SelectContext context) _build;

  Widget call(SelectContext context) => _build(context);
}

abstract class SelectDelegate extends ComponentDelegate {
  const SelectDelegate();

  Widget root(SelectContext context);
}

class Select extends StatelessWidget {
  const Select({
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
    this.clearable,
    this.allowDeselect,
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
  }) : variant = SelectVariant.defaults;

  final SelectVariant variant;
  final List<ComboboxItem> data;
  final String? value;
  final SelectChanged? onChange;
  final String? placeholder;
  final String? label;
  final String? description;
  final String? error;
  final bool? searchable;
  final String? searchValue;
  final ComboboxSearchChanged? onSearchChange;
  final bool? clearable;
  final bool? allowDeselect;
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
  final SelectStyle? style;

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
    final resolvedClearable = clearable ?? false;
    final resolvedAllowDeselect = allowDeselect ?? true;
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

    final fromProps = SelectStyle(radius: radius);
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = SelectStyle(
      background: merged.background,
      borderColor: merged.borderColor,
      color: merged.color,
      height: merged.height,
      radius: merged.radius ?? defaultComboboxRadius(context),
    );
    final resolvedState = SelectState(
      disabled: resolvedDisabled,
      searchable: resolvedSearchable,
    );
    final selectContext = SelectContext(
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
      clearable: resolvedClearable,
      allowDeselect: resolvedAllowDeselect,
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
    final delegate = MantleTheme.of(context).delegate<SelectDelegate>();
    return delegate.root(selectContext);
  }
}
