// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [TagsInput].
enum TagsInputVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [TagsInput].
@immutable
class TagsInputStyle {
  /// Creates a [TagsInputStyle].
  const TagsInputStyle({
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

  /// Returns a copy of this [TagsInputStyle] with selected fields replaced.
  TagsInputStyle copyWith({
    Color? background,
    Color? borderColor,
    double? height,
    BorderRadiusGeometry? radius,
  }) {
    return TagsInputStyle(
      background: background ?? this.background,
      borderColor: borderColor ?? this.borderColor,
      height: height ?? this.height,
      radius: radius ?? this.radius,
    );
  }

  /// Merges [other] over this [TagsInputStyle]; null fields keep this value.
  TagsInputStyle mergeWith(TagsInputStyle? other) {
    if (other == null) return this;
    return TagsInputStyle(
      background: background ?? other.background,
      borderColor: borderColor ?? other.borderColor,
      height: height ?? other.height,
      radius: radius ?? other.radius,
    );
  }
}

/// Resolved interaction state for [TagsInput].
@immutable
class TagsInputState {
  /// Creates a [TagsInputState].
  const TagsInputState({this.disabled = false});

  /// Whether interaction is disabled.
  final bool disabled;
}

/// Values passed to [TagsInputDelegate] slots during build.
@immutable
class TagsInputContext {
  /// Creates a [TagsInputContext].
  const TagsInputContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.data,
    this.value,
    this.onChange,
    this.onRemove,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.searchValue,
    this.onSearchChange,
    this.maxTags,
    required this.allowDuplicates,
    required this.splitChars,
    required this.acceptValueOnBlur,
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
  final TagsInputStyle style;

  /// Resolved interaction state for this build.
  final TagsInputState state;

  /// The visual variant selected by the constructor.
  final TagsInputVariant variant;

  /// Tabular data to render.
  final List<ComboboxItem>? data;

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

  /// Controlled search text.
  final String? searchValue;

  /// Called when the search text changes.
  final ComboboxSearchChanged? onSearchChange;

  /// Maximum number of tags.
  final int? maxTags;

  /// Whether allow duplicates.
  final bool allowDuplicates;

  /// Characters that split tags.
  final String splitChars;

  /// Whether accept value on blur.
  final bool acceptValueOnBlur;

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
class TagsInputRoot {
  /// Creates a [TagsInputRoot] from a builder function.
  const TagsInputRoot(this._build);

  final Widget Function(TagsInputContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TagsInputContext context) => _build(context);
}

/// Theme-owned composition slots for [TagsInput].
abstract class TagsInputDelegate extends ComponentDelegate {
  /// Creates a [TagsInputDelegate].
  const TagsInputDelegate();

  /// Builds the composition root.
  Widget root(TagsInputContext context);
}

/// A [TagsInput] widget resolved through [TagsInputDelegate].
class TagsInput extends StatelessWidget {
  /// Creates a [TagsInput].
  const TagsInput({
    super.key,
    this.data,
    this.value,
    this.onChange,
    this.onRemove,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.searchValue,
    this.onSearchChange,
    this.maxTags,
    this.allowDuplicates,
    this.splitChars,
    this.acceptValueOnBlur,
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
  }) : variant = TagsInputVariant.defaults;

  /// The visual variant selected by the constructor.
  final TagsInputVariant variant;

  /// Tabular data to render.
  final List<ComboboxItem>? data;

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

  /// Controlled search text.
  final String? searchValue;

  /// Called when the search text changes.
  final ComboboxSearchChanged? onSearchChange;

  /// Maximum number of tags.
  final int? maxTags;

  /// Whether allow duplicates.
  final bool? allowDuplicates;

  /// Characters that split tags.
  final String? splitChars;

  /// Whether accept value on blur.
  final bool? acceptValueOnBlur;

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
  final TagsInputStyle? style;

  /// Resolves properties and builds via [TagsInputDelegate].
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
    final resolvedSearchValue = searchValue;
    final resolvedOnSearchChange = onSearchChange;
    final resolvedMaxTags = maxTags;
    final resolvedAllowDuplicates = allowDuplicates ?? false;
    final resolvedSplitChars = splitChars ?? ',';
    final resolvedAcceptValueOnBlur = acceptValueOnBlur ?? true;
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

    final fromProps = TagsInputStyle(radius: radius);
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = TagsInputStyle(
      background: merged.background,
      borderColor: merged.borderColor,
      height: merged.height,
      radius: merged.radius ?? defaultComboboxRadius(context),
    );
    final resolvedState = TagsInputState(disabled: resolvedDisabled);
    final tagsInputContext = TagsInputContext(
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
      searchValue: resolvedSearchValue,
      onSearchChange: resolvedOnSearchChange,
      maxTags: resolvedMaxTags,
      allowDuplicates: resolvedAllowDuplicates,
      splitChars: resolvedSplitChars,
      acceptValueOnBlur: resolvedAcceptValueOnBlur,
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
    final delegate = MantleTheme.of(context).delegate<TagsInputDelegate>();
    return delegate.root(tagsInputContext);
  }
}
