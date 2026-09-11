// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Select].
enum SelectVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Select].
@immutable
class SelectStyle {
  /// Creates a [SelectStyle].
  const SelectStyle({
    this.background,
    this.borderColor,
    this.color,
    this.height,
    this.radius,
  });

  /// Background color.
  final Color? background;

  /// Border color token or value.
  final Color? borderColor;

  /// Foreground or accent color.
  final Color? color;

  /// Height in logical pixels.
  final double? height;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Returns a copy of this [SelectStyle] with selected fields replaced.
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

  /// Merges [other] over this [SelectStyle]; null fields keep this value.
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

/// Resolved interaction state for [Select].
@immutable
class SelectState {
  /// Creates a [SelectState].
  const SelectState({this.disabled = false, this.searchable = false});

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether the list can be filtered.
  final bool searchable;
}

/// Values passed to [SelectDelegate] slots during build.
@immutable
class SelectContext {
  /// Creates a [SelectContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final SelectStyle style;

  /// Resolved interaction state for this build.
  final SelectState state;

  /// The visual variant selected by the constructor.
  final SelectVariant variant;

  /// Tabular data to render.
  final List<ComboboxItem> data;

  /// The controlled value.
  final String? value;

  /// Called when the value changes.
  final SelectChanged? onChange;

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

  /// Whether the value can be cleared.
  final bool clearable;

  /// Whether allow deselect.
  final bool allowDeselect;

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
class SelectRoot {
  /// Creates a [SelectRoot] from a builder function.
  const SelectRoot(this._build);

  final Widget Function(SelectContext context) _build;

  /// Invokes this slot with [context].
  Widget call(SelectContext context) => _build(context);
}

/// Theme-owned composition slots for [Select].
abstract class SelectDelegate extends ComponentDelegate {
  /// Creates a [SelectDelegate].
  const SelectDelegate();

  /// Builds the composition root.
  Widget root(SelectContext context);
}

/// A [Select] widget resolved through [SelectDelegate].
class Select extends StatelessWidget {
  /// Creates a [Select].
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

  /// The visual variant selected by the constructor.
  final SelectVariant variant;

  /// Tabular data to render.
  final List<ComboboxItem> data;

  /// The controlled value.
  final String? value;

  /// Called when the value changes.
  final SelectChanged? onChange;

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

  /// Whether the value can be cleared.
  final bool? clearable;

  /// Whether allow deselect.
  final bool? allowDeselect;

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
  final SelectStyle? style;

  /// Resolves properties and builds via [SelectDelegate].
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
