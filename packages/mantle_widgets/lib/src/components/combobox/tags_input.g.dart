// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum TagsInputVariant { defaults }

@immutable
class TagsInputStyle {
  const TagsInputStyle({
    this.background,
    this.borderColor,
    this.height,
    this.radius,
  });

  final Color? background;
  final Color? borderColor;
  final double? height;
  final BorderRadiusGeometry? radius;

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

@immutable
class TagsInputState {
  const TagsInputState({this.disabled = false});

  final bool disabled;
}

@immutable
class TagsInputContext {
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

  final BuildContext context;
  final TagsInputStyle style;
  final TagsInputState state;
  final TagsInputVariant variant;
  final List<ComboboxItem>? data;
  final List<String>? value;
  final MultiSelectChanged? onChange;
  final ComboboxOptionSubmit? onRemove;
  final String? placeholder;
  final String? label;
  final String? description;
  final String? error;
  final String? searchValue;
  final ComboboxSearchChanged? onSearchChange;
  final int? maxTags;
  final bool allowDuplicates;
  final String splitChars;
  final bool acceptValueOnBlur;
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

class TagsInputRoot {
  const TagsInputRoot(this._build);

  final Widget Function(TagsInputContext context) _build;

  Widget call(TagsInputContext context) => _build(context);
}

abstract class TagsInputDelegate extends ComponentDelegate {
  const TagsInputDelegate();

  Widget root(TagsInputContext context);
}

class TagsInput extends StatelessWidget {
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

  final TagsInputVariant variant;
  final List<ComboboxItem>? data;
  final List<String>? value;
  final MultiSelectChanged? onChange;
  final ComboboxOptionSubmit? onRemove;
  final String? placeholder;
  final String? label;
  final String? description;
  final String? error;
  final String? searchValue;
  final ComboboxSearchChanged? onSearchChange;
  final int? maxTags;
  final bool? allowDuplicates;
  final String? splitChars;
  final bool? acceptValueOnBlur;
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
  final TagsInputStyle? style;

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
