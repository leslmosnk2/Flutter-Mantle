// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum AutocompleteVariant { defaults }

@immutable
class AutocompleteStyle {
  const AutocompleteStyle({
    this.background,
    this.borderColor,
    this.height,
    this.radius,
  });

  final Color? background;
  final Color? borderColor;
  final double? height;
  final BorderRadiusGeometry? radius;

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

@immutable
class AutocompleteState {
  const AutocompleteState({this.disabled = false});

  final bool disabled;
}

@immutable
class AutocompleteContext {
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

  final BuildContext context;
  final AutocompleteStyle style;
  final AutocompleteState state;
  final AutocompleteVariant variant;
  final List<ComboboxItem> data;
  final String? value;
  final SelectChanged? onChange;
  final String? placeholder;
  final String? label;
  final String? description;
  final String? error;
  final bool clearable;
  final bool disabled;
  final bool readOnly;
  final bool? dropdownOpened;
  final VoidCallback? onDropdownOpen;
  final VoidCallback? onDropdownClose;
  final String? nothingFoundMessage;
  final int? limit;
  final double maxDropdownHeight;
  final String size;
  final BorderRadiusGeometry radius;
}

class AutocompleteRoot {
  const AutocompleteRoot(this._build);

  final Widget Function(AutocompleteContext context) _build;

  Widget call(AutocompleteContext context) => _build(context);
}

abstract class AutocompleteDelegate extends ComponentDelegate {
  const AutocompleteDelegate();

  Widget root(AutocompleteContext context);
}

class Autocomplete extends StatelessWidget {
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

  final AutocompleteVariant variant;
  final List<ComboboxItem> data;
  final String? value;
  final SelectChanged? onChange;
  final String? placeholder;
  final String? label;
  final String? description;
  final String? error;
  final bool? clearable;
  final bool? disabled;
  final bool? readOnly;
  final bool? dropdownOpened;
  final VoidCallback? onDropdownOpen;
  final VoidCallback? onDropdownClose;
  final String? nothingFoundMessage;
  final int? limit;
  final double? maxDropdownHeight;
  final String? size;
  final BorderRadiusGeometry? radius;
  final AutocompleteStyle? style;

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
