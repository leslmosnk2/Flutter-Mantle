// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_select.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MultiSelect].
enum MultiSelectVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MultiSelect].
@immutable
class MultiSelectStyle {
  /// Creates a [MultiSelectStyle].
  const MultiSelectStyle({
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

  /// Returns a copy of this [MultiSelectStyle] with selected fields replaced.
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

  /// Merges [other] over this [MultiSelectStyle]; null fields keep this value.
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

/// Resolved interaction state for [MultiSelect].
@immutable
class MultiSelectState {
  /// Creates a [MultiSelectState].
  const MultiSelectState({this.disabled = false, this.searchable = false});

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether the list can be filtered.
  final bool searchable;
}

/// Values passed to [MultiSelectDelegate] slots during build.
@immutable
class MultiSelectContext {
  /// Creates a [MultiSelectContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MultiSelectStyle style;

  /// Resolved interaction state for this build.
  final MultiSelectState state;

  /// The visual variant selected by the constructor.
  final MultiSelectVariant variant;

  /// Tabular data to render.
  final List<ComboboxItem> data;

  /// The controlled value.
  final List<String>? value;

  /// Called when the value changes.
  final MultiSelectChanged? onChange;

  /// Called when an item is removed.
  final ComboboxOptionSubmit? onRemove;

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

  /// Maximum number of selected values.
  final int? maxValues;

  /// Whether hide picked options.
  final bool hidePickedOptions;

  /// Whether the value can be cleared.
  final bool clearable;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether the value cannot be edited.
  final bool readOnly;

  /// Whether the dropdown is open.
  final bool? dropdownOpened;

  /// Called when the dropdown opens.
  final VoidCallback? onDropdownOpen;

  /// Called when the dropdown closes.
  final VoidCallback? onDropdownClose;

  /// Message shown when no options match.
  final String? nothingFoundMessage;

  /// Whether with check icon.
  final bool withCheckIcon;

  /// The check icon position.
  final ComboboxCheckIconPosition checkIconPosition;

  /// The limit.
  final int? limit;

  /// The max dropdown height.
  final double maxDropdownHeight;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class MultiSelectRoot {
  /// Creates a [MultiSelectRoot] from a builder function.
  const MultiSelectRoot(this._build);

  final Widget Function(MultiSelectContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MultiSelectContext context) => _build(context);
}

/// Theme-owned composition slots for [MultiSelect].
abstract class MultiSelectDelegate extends ComponentDelegate {
  /// Creates a [MultiSelectDelegate].
  const MultiSelectDelegate();

  /// Builds the composition root.
  Widget root(MultiSelectContext context);
}

/// A [MultiSelect] widget resolved through [MultiSelectDelegate].
class MultiSelect extends StatelessWidget {
  /// Creates a [MultiSelect].
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

  /// The visual variant selected by the constructor.
  final MultiSelectVariant variant;

  /// Tabular data to render.
  final List<ComboboxItem> data;

  /// The controlled value.
  final List<String>? value;

  /// Called when the value changes.
  final MultiSelectChanged? onChange;

  /// Called when an item is removed.
  final ComboboxOptionSubmit? onRemove;

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

  /// Maximum number of selected values.
  final int? maxValues;

  /// Whether hide picked options.
  final bool? hidePickedOptions;

  /// Whether the value can be cleared.
  final bool? clearable;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether the value cannot be edited.
  final bool? readOnly;

  /// Whether the dropdown is open.
  final bool? dropdownOpened;

  /// Called when the dropdown opens.
  final VoidCallback? onDropdownOpen;

  /// Called when the dropdown closes.
  final VoidCallback? onDropdownClose;

  /// Message shown when no options match.
  final String? nothingFoundMessage;

  /// Whether with check icon.
  final bool? withCheckIcon;

  /// The check icon position.
  final ComboboxCheckIconPosition? checkIconPosition;

  /// The limit.
  final int? limit;

  /// The max dropdown height.
  final double? maxDropdownHeight;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final MultiSelectStyle? style;

  /// Resolves properties and builds via [MultiSelectDelegate].
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
