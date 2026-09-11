// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Autocomplete].
enum AutocompleteVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Autocomplete].
@immutable
class AutocompleteStyle {
  /// Creates an [AutocompleteStyle].
  const AutocompleteStyle({
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

  /// Returns a copy of this [AutocompleteStyle] with selected fields replaced.
  AutocompleteStyle copyWith({
    Color? background,
    Color? borderColor,
    double? height,
    BorderRadiusGeometry? radius,
  }) {
    return AutocompleteStyle(
      background: background ?? this.background,
      borderColor: borderColor ?? this.borderColor,
      height: height ?? this.height,
      radius: radius ?? this.radius,
    );
  }

  /// Merges [other] over this [AutocompleteStyle]; null fields keep this value.
  AutocompleteStyle mergeWith(AutocompleteStyle? other) {
    if (other == null) return this;
    return AutocompleteStyle(
      background: background ?? other.background,
      borderColor: borderColor ?? other.borderColor,
      height: height ?? other.height,
      radius: radius ?? other.radius,
    );
  }
}

/// Resolved interaction state for [Autocomplete].
@immutable
class AutocompleteState {
  /// Creates an [AutocompleteState].
  const AutocompleteState({this.disabled = false});

  /// Whether interaction is disabled.
  final bool disabled;
}

/// Values passed to [AutocompleteDelegate] slots during build.
@immutable
class AutocompleteContext {
  /// Creates an [AutocompleteContext].
  const AutocompleteContext({
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
    required this.clearable,
    required this.disabled,
    required this.readOnly,
    this.dropdownOpened,
    this.onDropdownOpen,
    this.onDropdownClose,
    this.nothingFoundMessage,
    this.limit,
    required this.maxDropdownHeight,
    required this.size,
    required this.radius,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AutocompleteStyle style;

  /// Resolved interaction state for this build.
  final AutocompleteState state;

  /// The visual variant selected by the constructor.
  final AutocompleteVariant variant;

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
class AutocompleteRoot {
  /// Creates an [AutocompleteRoot] from a builder function.
  const AutocompleteRoot(this._build);

  final Widget Function(AutocompleteContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AutocompleteContext context) => _build(context);
}

/// Theme-owned composition slots for [Autocomplete].
abstract class AutocompleteDelegate extends ComponentDelegate {
  /// Creates an [AutocompleteDelegate].
  const AutocompleteDelegate();

  /// Builds the composition root.
  Widget root(AutocompleteContext context);
}

/// An [Autocomplete] widget resolved through [AutocompleteDelegate].
class Autocomplete extends StatelessWidget {
  /// Creates an [Autocomplete].
  const Autocomplete({
    super.key,
    required this.data,
    this.value,
    this.onChange,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.clearable,
    this.disabled,
    this.readOnly,
    this.dropdownOpened,
    this.onDropdownOpen,
    this.onDropdownClose,
    this.nothingFoundMessage,
    this.limit,
    this.maxDropdownHeight,
    this.size,
    this.radius,
    this.style,
  }) : variant = AutocompleteVariant.defaults;

  /// The visual variant selected by the constructor.
  final AutocompleteVariant variant;

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

  /// The limit.
  final int? limit;

  /// The max dropdown height.
  final double? maxDropdownHeight;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final AutocompleteStyle? style;

  /// Resolves properties and builds via [AutocompleteDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedData = data;
    final resolvedValue = value;
    final resolvedOnChange = onChange;
    final resolvedPlaceholder = placeholder;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedClearable = clearable ?? false;
    final resolvedDisabled = disabled ?? false;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedDropdownOpened = dropdownOpened;
    final resolvedOnDropdownOpen = onDropdownOpen;
    final resolvedOnDropdownClose = onDropdownClose;
    final resolvedNothingFoundMessage = nothingFoundMessage;
    final resolvedLimit = limit;
    final resolvedMaxDropdownHeight = maxDropdownHeight ?? 250.0;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius =
        radius ?? style?.radius ?? defaultComboboxRadius(context);

    final fromProps = AutocompleteStyle(radius: radius);
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = AutocompleteStyle(
      background: merged.background,
      borderColor: merged.borderColor,
      height: merged.height,
      radius: merged.radius ?? defaultComboboxRadius(context),
    );
    final resolvedState = AutocompleteState(disabled: resolvedDisabled);
    final autocompleteContext = AutocompleteContext(
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
      clearable: resolvedClearable,
      disabled: resolvedDisabled,
      readOnly: resolvedReadOnly,
      dropdownOpened: resolvedDropdownOpened,
      onDropdownOpen: resolvedOnDropdownOpen,
      onDropdownClose: resolvedOnDropdownClose,
      nothingFoundMessage: resolvedNothingFoundMessage,
      limit: resolvedLimit,
      maxDropdownHeight: resolvedMaxDropdownHeight,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<AutocompleteDelegate>();
    return delegate.root(autocompleteContext);
  }
}
