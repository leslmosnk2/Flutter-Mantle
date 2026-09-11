// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combobox_popover.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [ComboboxPopover].
enum ComboboxPopoverVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ComboboxPopover].
@immutable
class ComboboxPopoverStyle {
  /// Creates a [ComboboxPopoverStyle].
  const ComboboxPopoverStyle();

  /// Returns a copy of this [ComboboxPopoverStyle] with selected fields replaced.
  ComboboxPopoverStyle copyWith() => this;

  /// Merges [other] over this [ComboboxPopoverStyle]; null fields keep this value.
  ComboboxPopoverStyle mergeWith(ComboboxPopoverStyle? other) => this;
}

/// Resolved interaction state for [ComboboxPopover].
@immutable
class ComboboxPopoverState {
  /// Creates a [ComboboxPopoverState].
  const ComboboxPopoverState();
}

/// Values passed to [ComboboxPopoverDelegate] slots during build.
@immutable
class ComboboxPopoverContext {
  /// Creates a [ComboboxPopoverContext].
  const ComboboxPopoverContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.data,
    this.value,
    this.onChange,
    required this.multiple,
    required this.searchable,
    this.searchValue,
    this.onSearchChange,
    this.nothingFoundMessage,
    required this.allowDeselect,
    required this.withCheckIcon,
    required this.checkIconPosition,
    this.dropdownOpened,
    this.onDropdownOpen,
    this.onDropdownClose,
    this.limit,
    required this.maxDropdownHeight,
    required this.size,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ComboboxPopoverStyle style;

  /// Resolved interaction state for this build.
  final ComboboxPopoverState state;

  /// The visual variant selected by the constructor.
  final ComboboxPopoverVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Tabular data to render.
  final List<ComboboxItem> data;

  /// The controlled value.
  final List<String>? value;

  /// Called when the value changes.
  final MultiSelectChanged? onChange;

  /// Whether more than one item can be selected.
  final bool multiple;

  /// Whether the list can be filtered.
  final bool searchable;

  /// Controlled search text.
  final String? searchValue;

  /// Called when the search text changes.
  final ComboboxSearchChanged? onSearchChange;

  /// Message shown when no options match.
  final String? nothingFoundMessage;

  /// Whether allow deselect.
  final bool allowDeselect;

  /// Whether with check icon.
  final bool withCheckIcon;

  /// The check icon position.
  final ComboboxCheckIconPosition checkIconPosition;

  /// Whether the dropdown is open.
  final bool? dropdownOpened;

  /// Called when the dropdown opens.
  final VoidCallback? onDropdownOpen;

  /// Called when the dropdown closes.
  final VoidCallback? onDropdownClose;

  /// The limit.
  final int? limit;

  /// The max dropdown height.
  final double maxDropdownHeight;

  /// Size token.
  final String size;
}

/// Builder for the root slot.
class ComboboxPopoverRoot {
  /// Creates a [ComboboxPopoverRoot] from a builder function.
  const ComboboxPopoverRoot(this._build);

  final Widget Function(ComboboxPopoverContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ComboboxPopoverContext context) => _build(context);
}

/// Theme-owned composition slots for [ComboboxPopover].
abstract class ComboboxPopoverDelegate extends ComponentDelegate {
  /// Creates a [ComboboxPopoverDelegate].
  const ComboboxPopoverDelegate();

  /// Builds the composition root.
  Widget root(ComboboxPopoverContext context);
}

/// A [ComboboxPopover] widget resolved through [ComboboxPopoverDelegate].
class ComboboxPopover extends StatelessWidget {
  /// Creates a [ComboboxPopover].
  const ComboboxPopover({
    super.key,
    required this.child,
    required this.data,
    this.value,
    this.onChange,
    this.multiple,
    this.searchable,
    this.searchValue,
    this.onSearchChange,
    this.nothingFoundMessage,
    this.allowDeselect,
    this.withCheckIcon,
    this.checkIconPosition,
    this.dropdownOpened,
    this.onDropdownOpen,
    this.onDropdownClose,
    this.limit,
    this.maxDropdownHeight,
    this.size,
    this.style,
  }) : variant = ComboboxPopoverVariant.defaults;

  /// The visual variant selected by the constructor.
  final ComboboxPopoverVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Tabular data to render.
  final List<ComboboxItem> data;

  /// The controlled value.
  final List<String>? value;

  /// Called when the value changes.
  final MultiSelectChanged? onChange;

  /// Whether more than one item can be selected.
  final bool? multiple;

  /// Whether the list can be filtered.
  final bool? searchable;

  /// Controlled search text.
  final String? searchValue;

  /// Called when the search text changes.
  final ComboboxSearchChanged? onSearchChange;

  /// Message shown when no options match.
  final String? nothingFoundMessage;

  /// Whether allow deselect.
  final bool? allowDeselect;

  /// Whether with check icon.
  final bool? withCheckIcon;

  /// The check icon position.
  final ComboboxCheckIconPosition? checkIconPosition;

  /// Whether the dropdown is open.
  final bool? dropdownOpened;

  /// Called when the dropdown opens.
  final VoidCallback? onDropdownOpen;

  /// Called when the dropdown closes.
  final VoidCallback? onDropdownClose;

  /// The limit.
  final int? limit;

  /// The max dropdown height.
  final double? maxDropdownHeight;

  /// Size token.
  final String? size;

  /// Style overrides merged over theme defaults.
  final ComboboxPopoverStyle? style;

  /// Resolves properties and builds via [ComboboxPopoverDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedData = data;
    final resolvedValue = value;
    final resolvedOnChange = onChange;
    final resolvedMultiple = multiple ?? false;
    final resolvedSearchable = searchable ?? false;
    final resolvedSearchValue = searchValue;
    final resolvedOnSearchChange = onSearchChange;
    final resolvedNothingFoundMessage = nothingFoundMessage;
    final resolvedAllowDeselect = allowDeselect ?? true;
    final resolvedWithCheckIcon = withCheckIcon ?? true;
    final resolvedCheckIconPosition =
        checkIconPosition ?? ComboboxCheckIconPosition.left;
    final resolvedDropdownOpened = dropdownOpened;
    final resolvedOnDropdownOpen = onDropdownOpen;
    final resolvedOnDropdownClose = onDropdownClose;
    final resolvedLimit = limit;
    final resolvedMaxDropdownHeight = maxDropdownHeight ?? 250.0;
    final resolvedSize = size ?? 'sm';

    const fromProps = ComboboxPopoverStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ComboboxPopoverState();
    final comboboxPopoverContext = ComboboxPopoverContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      data: resolvedData,
      value: resolvedValue,
      onChange: resolvedOnChange,
      multiple: resolvedMultiple,
      searchable: resolvedSearchable,
      searchValue: resolvedSearchValue,
      onSearchChange: resolvedOnSearchChange,
      nothingFoundMessage: resolvedNothingFoundMessage,
      allowDeselect: resolvedAllowDeselect,
      withCheckIcon: resolvedWithCheckIcon,
      checkIconPosition: resolvedCheckIconPosition,
      dropdownOpened: resolvedDropdownOpened,
      onDropdownOpen: resolvedOnDropdownOpen,
      onDropdownClose: resolvedOnDropdownClose,
      limit: resolvedLimit,
      maxDropdownHeight: resolvedMaxDropdownHeight,
      size: resolvedSize,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<ComboboxPopoverDelegate>();
    return delegate.root(comboboxPopoverContext);
  }
}

/// Visual variants of [ComboboxPopoverTarget].
enum ComboboxPopoverTargetVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ComboboxPopoverTarget].
@immutable
class ComboboxPopoverTargetStyle {
  /// Creates a [ComboboxPopoverTargetStyle].
  const ComboboxPopoverTargetStyle();

  /// Returns a copy of this [ComboboxPopoverTargetStyle] with selected fields replaced.
  ComboboxPopoverTargetStyle copyWith() => this;

  /// Merges [other] over this [ComboboxPopoverTargetStyle]; null fields keep this value.
  ComboboxPopoverTargetStyle mergeWith(ComboboxPopoverTargetStyle? other) =>
      this;
}

/// Resolved interaction state for [ComboboxPopoverTarget].
@immutable
class ComboboxPopoverTargetState {
  /// Creates a [ComboboxPopoverTargetState].
  const ComboboxPopoverTargetState();
}

/// Values passed to [ComboboxPopoverTargetDelegate] slots during build.
@immutable
class ComboboxPopoverTargetContext {
  /// Creates a [ComboboxPopoverTargetContext].
  const ComboboxPopoverTargetContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ComboboxPopoverTargetStyle style;

  /// Resolved interaction state for this build.
  final ComboboxPopoverTargetState state;

  /// The visual variant selected by the constructor.
  final ComboboxPopoverTargetVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class ComboboxPopoverTargetRoot {
  /// Creates a [ComboboxPopoverTargetRoot] from a builder function.
  const ComboboxPopoverTargetRoot(this._build);

  final Widget Function(ComboboxPopoverTargetContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ComboboxPopoverTargetContext context) => _build(context);
}

/// Theme-owned composition slots for [ComboboxPopoverTarget].
abstract class ComboboxPopoverTargetDelegate extends ComponentDelegate {
  /// Creates a [ComboboxPopoverTargetDelegate].
  const ComboboxPopoverTargetDelegate();

  /// Builds the composition root.
  Widget root(ComboboxPopoverTargetContext context);
}

/// A [ComboboxPopoverTarget] widget resolved through [ComboboxPopoverTargetDelegate].
class ComboboxPopoverTarget extends StatelessWidget {
  /// Creates a [ComboboxPopoverTarget].
  const ComboboxPopoverTarget({super.key, required this.child, this.style})
    : variant = ComboboxPopoverTargetVariant.defaults;

  /// The visual variant selected by the constructor.
  final ComboboxPopoverTargetVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final ComboboxPopoverTargetStyle? style;

  /// Resolves properties and builds via [ComboboxPopoverTargetDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = ComboboxPopoverTargetStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ComboboxPopoverTargetState();
    final comboboxPopoverTargetContext = ComboboxPopoverTargetContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<ComboboxPopoverTargetDelegate>();
    return delegate.root(comboboxPopoverTargetContext);
  }
}
