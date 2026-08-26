// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combobox_popover.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum ComboboxPopoverVariant { defaults }

@immutable
class ComboboxPopoverStyle {
  const ComboboxPopoverStyle();

  ComboboxPopoverStyle copyWith() => this;

  ComboboxPopoverStyle mergeWith(ComboboxPopoverStyle? other) => this;
}

@immutable
class ComboboxPopoverState {
  const ComboboxPopoverState();
}

@immutable
class ComboboxPopoverContext {
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

  final BuildContext context;
  final ComboboxPopoverStyle style;
  final ComboboxPopoverState state;
  final ComboboxPopoverVariant variant;
  final Widget child;
  final List<ComboboxItem> data;
  final List<String>? value;
  final MultiSelectChanged? onChange;
  final bool multiple;
  final bool searchable;
  final String? searchValue;
  final ComboboxSearchChanged? onSearchChange;
  final String? nothingFoundMessage;
  final bool allowDeselect;
  final bool withCheckIcon;
  final ComboboxCheckIconPosition checkIconPosition;
  final bool? dropdownOpened;
  final VoidCallback? onDropdownOpen;
  final VoidCallback? onDropdownClose;
  final int? limit;
  final double maxDropdownHeight;
  final String size;
}

class ComboboxPopoverRoot {
  const ComboboxPopoverRoot(this._build);

  final Widget Function(ComboboxPopoverContext context) _build;

  Widget call(ComboboxPopoverContext context) => _build(context);
}

abstract class ComboboxPopoverDelegate extends ComponentDelegate {
  const ComboboxPopoverDelegate();

  Widget root(ComboboxPopoverContext context);
}

class ComboboxPopover extends StatelessWidget {
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

  final ComboboxPopoverVariant variant;
  final Widget child;
  final List<ComboboxItem> data;
  final List<String>? value;
  final MultiSelectChanged? onChange;
  final bool? multiple;
  final bool? searchable;
  final String? searchValue;
  final ComboboxSearchChanged? onSearchChange;
  final String? nothingFoundMessage;
  final bool? allowDeselect;
  final bool? withCheckIcon;
  final ComboboxCheckIconPosition? checkIconPosition;
  final bool? dropdownOpened;
  final VoidCallback? onDropdownOpen;
  final VoidCallback? onDropdownClose;
  final int? limit;
  final double? maxDropdownHeight;
  final String? size;
  final ComboboxPopoverStyle? style;

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

enum ComboboxPopoverTargetVariant { defaults }

@immutable
class ComboboxPopoverTargetStyle {
  const ComboboxPopoverTargetStyle();

  ComboboxPopoverTargetStyle copyWith() => this;

  ComboboxPopoverTargetStyle mergeWith(ComboboxPopoverTargetStyle? other) =>
      this;
}

@immutable
class ComboboxPopoverTargetState {
  const ComboboxPopoverTargetState();
}

@immutable
class ComboboxPopoverTargetContext {
  const ComboboxPopoverTargetContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final ComboboxPopoverTargetStyle style;
  final ComboboxPopoverTargetState state;
  final ComboboxPopoverTargetVariant variant;
  final Widget child;
}

class ComboboxPopoverTargetRoot {
  const ComboboxPopoverTargetRoot(this._build);

  final Widget Function(ComboboxPopoverTargetContext context) _build;

  Widget call(ComboboxPopoverTargetContext context) => _build(context);
}

abstract class ComboboxPopoverTargetDelegate extends ComponentDelegate {
  const ComboboxPopoverTargetDelegate();

  Widget root(ComboboxPopoverTargetContext context);
}

class ComboboxPopoverTarget extends StatelessWidget {
  const ComboboxPopoverTarget({super.key, required this.child, this.style})
    : variant = ComboboxPopoverTargetVariant.defaults;

  final ComboboxPopoverTargetVariant variant;
  final Widget child;
  final ComboboxPopoverTargetStyle? style;

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
