// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combobox.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Combobox].
enum ComboboxVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Combobox].
@immutable
class ComboboxStyle {
  /// Creates a [ComboboxStyle].
  const ComboboxStyle({
    this.background,
    this.borderColor,
    this.radius,
    this.dropdownPadding,
  });

  /// Background color.
  final Color? background;

  /// Border color token or value.
  final Color? borderColor;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// The dropdown padding.
  final double? dropdownPadding;

  /// Returns a copy of this [ComboboxStyle] with selected fields replaced.
  ComboboxStyle copyWith({
    Color? background,
    Color? borderColor,
    BorderRadiusGeometry? radius,
    double? dropdownPadding,
  }) {
    return ComboboxStyle(
      background: background ?? this.background,
      borderColor: borderColor ?? this.borderColor,
      radius: radius ?? this.radius,
      dropdownPadding: dropdownPadding ?? this.dropdownPadding,
    );
  }

  /// Merges [other] over this [ComboboxStyle]; null fields keep this value.
  ComboboxStyle mergeWith(ComboboxStyle? other) {
    if (other == null) return this;
    return ComboboxStyle(
      background: background ?? other.background,
      borderColor: borderColor ?? other.borderColor,
      radius: radius ?? other.radius,
      dropdownPadding: dropdownPadding ?? other.dropdownPadding,
    );
  }
}

/// Resolved interaction state for [Combobox].
@immutable
class ComboboxState {
  /// Creates a [ComboboxState].
  const ComboboxState({this.readOnly = false});

  /// Whether the value cannot be edited.
  final bool readOnly;
}

/// Values passed to [ComboboxDelegate] slots during build.
@immutable
class ComboboxContext {
  /// Creates a [ComboboxContext].
  const ComboboxContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.dropdownOpened,
    this.onDropdownOpen,
    this.onDropdownClose,
    this.onOptionSubmit,
    required this.size,
    required this.dropdownPadding,
    required this.readOnly,
    required this.resetSelectionOnOptionHover,
    required this.maxDropdownHeight,
    required this.withScrollArea,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ComboboxStyle style;

  /// Resolved interaction state for this build.
  final ComboboxState state;

  /// The visual variant selected by the constructor.
  final ComboboxVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Whether the dropdown is open.
  final bool? dropdownOpened;

  /// Called when the dropdown opens.
  final VoidCallback? onDropdownOpen;

  /// Called when the dropdown closes.
  final VoidCallback? onDropdownClose;

  /// Called when an option is submitted.
  final ComboboxOptionSubmit? onOptionSubmit;

  /// Size token.
  final String size;

  /// The dropdown padding.
  final double dropdownPadding;

  /// Whether the value cannot be edited.
  final bool readOnly;

  /// Whether reset selection on option hover.
  final bool resetSelectionOnOptionHover;

  /// The max dropdown height.
  final double maxDropdownHeight;

  /// Whether options are wrapped in a scroll area.
  final bool withScrollArea;
}

/// Builder for the root slot.
class ComboboxRoot {
  /// Creates a [ComboboxRoot] from a builder function.
  const ComboboxRoot(this._build);

  final Widget Function(ComboboxContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ComboboxContext context) => _build(context);
}

/// Theme-owned composition slots for [Combobox].
abstract class ComboboxDelegate extends ComponentDelegate {
  /// Creates a [ComboboxDelegate].
  const ComboboxDelegate();

  /// Builds the composition root.
  Widget root(ComboboxContext context);
}

/// A [Combobox] widget resolved through [ComboboxDelegate].
class Combobox extends StatelessWidget {
  /// Creates a [Combobox].
  const Combobox({
    super.key,
    required this.children,
    this.dropdownOpened,
    this.onDropdownOpen,
    this.onDropdownClose,
    this.onOptionSubmit,
    this.size,
    this.dropdownPadding,
    this.readOnly,
    this.resetSelectionOnOptionHover,
    this.maxDropdownHeight,
    this.withScrollArea,
    this.style,
  }) : variant = ComboboxVariant.defaults;

  /// The visual variant selected by the constructor.
  final ComboboxVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Whether the dropdown is open.
  final bool? dropdownOpened;

  /// Called when the dropdown opens.
  final VoidCallback? onDropdownOpen;

  /// Called when the dropdown closes.
  final VoidCallback? onDropdownClose;

  /// Called when an option is submitted.
  final ComboboxOptionSubmit? onOptionSubmit;

  /// Size token.
  final String? size;

  /// The dropdown padding.
  final double? dropdownPadding;

  /// Whether the value cannot be edited.
  final bool? readOnly;

  /// Whether reset selection on option hover.
  final bool? resetSelectionOnOptionHover;

  /// The max dropdown height.
  final double? maxDropdownHeight;

  /// Whether options are wrapped in a scroll area.
  final bool? withScrollArea;

  /// Style overrides merged over theme defaults.
  final ComboboxStyle? style;

  /// Resolves properties and builds via [ComboboxDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedDropdownOpened = dropdownOpened;
    final resolvedOnDropdownOpen = onDropdownOpen;
    final resolvedOnDropdownClose = onDropdownClose;
    final resolvedOnOptionSubmit = onOptionSubmit;
    final resolvedSize = size ?? 'sm';
    final resolvedDropdownPadding =
        dropdownPadding ?? style?.dropdownPadding ?? 4.0;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedResetSelectionOnOptionHover =
        resetSelectionOnOptionHover ?? false;
    final resolvedMaxDropdownHeight = maxDropdownHeight ?? 250.0;
    final resolvedWithScrollArea = withScrollArea ?? true;

    final fromProps = ComboboxStyle(dropdownPadding: dropdownPadding);
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = ComboboxStyle(
      background: merged.background,
      borderColor: merged.borderColor,
      radius: merged.radius ?? defaultComboboxRadius(context),
      dropdownPadding: merged.dropdownPadding,
    );
    final resolvedState = ComboboxState(readOnly: resolvedReadOnly);
    final comboboxContext = ComboboxContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      dropdownOpened: resolvedDropdownOpened,
      onDropdownOpen: resolvedOnDropdownOpen,
      onDropdownClose: resolvedOnDropdownClose,
      onOptionSubmit: resolvedOnOptionSubmit,
      size: resolvedSize,
      dropdownPadding: resolvedDropdownPadding,
      readOnly: resolvedReadOnly,
      resetSelectionOnOptionHover: resolvedResetSelectionOnOptionHover,
      maxDropdownHeight: resolvedMaxDropdownHeight,
      withScrollArea: resolvedWithScrollArea,
    );
    final delegate = MantleTheme.of(context).delegate<ComboboxDelegate>();
    return delegate.root(comboboxContext);
  }
}

/// Visual variants of [ComboboxTarget].
enum ComboboxTargetVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ComboboxTarget].
@immutable
class ComboboxTargetStyle {
  /// Creates a [ComboboxTargetStyle].
  const ComboboxTargetStyle();

  /// Returns a copy of this [ComboboxTargetStyle] with selected fields replaced.
  ComboboxTargetStyle copyWith() => this;

  /// Merges [other] over this [ComboboxTargetStyle]; null fields keep this value.
  ComboboxTargetStyle mergeWith(ComboboxTargetStyle? other) => this;
}

/// Resolved interaction state for [ComboboxTarget].
@immutable
class ComboboxTargetState {
  /// Creates a [ComboboxTargetState].
  const ComboboxTargetState();
}

/// Values passed to [ComboboxTargetDelegate] slots during build.
@immutable
class ComboboxTargetContext {
  /// Creates a [ComboboxTargetContext].
  const ComboboxTargetContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ComboboxTargetStyle style;

  /// Resolved interaction state for this build.
  final ComboboxTargetState state;

  /// The visual variant selected by the constructor.
  final ComboboxTargetVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class ComboboxTargetRoot {
  /// Creates a [ComboboxTargetRoot] from a builder function.
  const ComboboxTargetRoot(this._build);

  final Widget Function(ComboboxTargetContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ComboboxTargetContext context) => _build(context);
}

/// Theme-owned composition slots for [ComboboxTarget].
abstract class ComboboxTargetDelegate extends ComponentDelegate {
  /// Creates a [ComboboxTargetDelegate].
  const ComboboxTargetDelegate();

  /// Builds the composition root.
  Widget root(ComboboxTargetContext context);
}

/// A [ComboboxTarget] widget resolved through [ComboboxTargetDelegate].
class ComboboxTarget extends StatelessWidget {
  /// Creates a [ComboboxTarget].
  const ComboboxTarget({super.key, required this.child, this.style})
    : variant = ComboboxTargetVariant.defaults;

  /// The visual variant selected by the constructor.
  final ComboboxTargetVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final ComboboxTargetStyle? style;

  /// Resolves properties and builds via [ComboboxTargetDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = ComboboxTargetStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ComboboxTargetState();
    final comboboxTargetContext = ComboboxTargetContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<ComboboxTargetDelegate>();
    return delegate.root(comboboxTargetContext);
  }
}

/// Visual variants of [ComboboxDropdown].
enum ComboboxDropdownVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ComboboxDropdown].
@immutable
class ComboboxDropdownStyle {
  /// Creates a [ComboboxDropdownStyle].
  const ComboboxDropdownStyle();

  /// Returns a copy of this [ComboboxDropdownStyle] with selected fields replaced.
  ComboboxDropdownStyle copyWith() => this;

  /// Merges [other] over this [ComboboxDropdownStyle]; null fields keep this value.
  ComboboxDropdownStyle mergeWith(ComboboxDropdownStyle? other) => this;
}

/// Resolved interaction state for [ComboboxDropdown].
@immutable
class ComboboxDropdownState {
  /// Creates a [ComboboxDropdownState].
  const ComboboxDropdownState();
}

/// Values passed to [ComboboxDropdownDelegate] slots during build.
@immutable
class ComboboxDropdownContext {
  /// Creates a [ComboboxDropdownContext].
  const ComboboxDropdownContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.hidden,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ComboboxDropdownStyle style;

  /// Resolved interaction state for this build.
  final ComboboxDropdownState state;

  /// The visual variant selected by the constructor.
  final ComboboxDropdownVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether this content is hidden.
  final bool hidden;
}

/// Builder for the root slot.
class ComboboxDropdownRoot {
  /// Creates a [ComboboxDropdownRoot] from a builder function.
  const ComboboxDropdownRoot(this._build);

  final Widget Function(ComboboxDropdownContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ComboboxDropdownContext context) => _build(context);
}

/// Theme-owned composition slots for [ComboboxDropdown].
abstract class ComboboxDropdownDelegate extends ComponentDelegate {
  /// Creates a [ComboboxDropdownDelegate].
  const ComboboxDropdownDelegate();

  /// Builds the composition root.
  Widget root(ComboboxDropdownContext context);
}

/// A [ComboboxDropdown] widget resolved through [ComboboxDropdownDelegate].
class ComboboxDropdown extends StatelessWidget {
  /// Creates a [ComboboxDropdown].
  const ComboboxDropdown({
    super.key,
    required this.child,
    this.hidden,
    this.style,
  }) : variant = ComboboxDropdownVariant.defaults;

  /// The visual variant selected by the constructor.
  final ComboboxDropdownVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether this content is hidden.
  final bool? hidden;

  /// Style overrides merged over theme defaults.
  final ComboboxDropdownStyle? style;

  /// Resolves properties and builds via [ComboboxDropdownDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedHidden = hidden ?? false;

    const fromProps = ComboboxDropdownStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ComboboxDropdownState();
    final comboboxDropdownContext = ComboboxDropdownContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      hidden: resolvedHidden,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<ComboboxDropdownDelegate>();
    return delegate.root(comboboxDropdownContext);
  }
}

/// Visual variants of [ComboboxOptions].
enum ComboboxOptionsVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ComboboxOptions].
@immutable
class ComboboxOptionsStyle {
  /// Creates a [ComboboxOptionsStyle].
  const ComboboxOptionsStyle();

  /// Returns a copy of this [ComboboxOptionsStyle] with selected fields replaced.
  ComboboxOptionsStyle copyWith() => this;

  /// Merges [other] over this [ComboboxOptionsStyle]; null fields keep this value.
  ComboboxOptionsStyle mergeWith(ComboboxOptionsStyle? other) => this;
}

/// Resolved interaction state for [ComboboxOptions].
@immutable
class ComboboxOptionsState {
  /// Creates a [ComboboxOptionsState].
  const ComboboxOptionsState();
}

/// Values passed to [ComboboxOptionsDelegate] slots during build.
@immutable
class ComboboxOptionsContext {
  /// Creates a [ComboboxOptionsContext].
  const ComboboxOptionsContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ComboboxOptionsStyle style;

  /// Resolved interaction state for this build.
  final ComboboxOptionsState state;

  /// The visual variant selected by the constructor.
  final ComboboxOptionsVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;
}

/// Builder for the root slot.
class ComboboxOptionsRoot {
  /// Creates a [ComboboxOptionsRoot] from a builder function.
  const ComboboxOptionsRoot(this._build);

  final Widget Function(ComboboxOptionsContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ComboboxOptionsContext context) => _build(context);
}

/// Theme-owned composition slots for [ComboboxOptions].
abstract class ComboboxOptionsDelegate extends ComponentDelegate {
  /// Creates a [ComboboxOptionsDelegate].
  const ComboboxOptionsDelegate();

  /// Builds the composition root.
  Widget root(ComboboxOptionsContext context);
}

/// A [ComboboxOptions] widget resolved through [ComboboxOptionsDelegate].
class ComboboxOptions extends StatelessWidget {
  /// Creates a [ComboboxOptions].
  const ComboboxOptions({super.key, required this.children, this.style})
    : variant = ComboboxOptionsVariant.defaults;

  /// The visual variant selected by the constructor.
  final ComboboxOptionsVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Style overrides merged over theme defaults.
  final ComboboxOptionsStyle? style;

  /// Resolves properties and builds via [ComboboxOptionsDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;

    const fromProps = ComboboxOptionsStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ComboboxOptionsState();
    final comboboxOptionsContext = ComboboxOptionsContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<ComboboxOptionsDelegate>();
    return delegate.root(comboboxOptionsContext);
  }
}

/// Visual variants of [ComboboxOption].
enum ComboboxOptionVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ComboboxOption].
@immutable
class ComboboxOptionStyle {
  /// Creates a [ComboboxOptionStyle].
  const ComboboxOptionStyle();

  /// Returns a copy of this [ComboboxOptionStyle] with selected fields replaced.
  ComboboxOptionStyle copyWith() => this;

  /// Merges [other] over this [ComboboxOptionStyle]; null fields keep this value.
  ComboboxOptionStyle mergeWith(ComboboxOptionStyle? other) => this;
}

/// Resolved interaction state for [ComboboxOption].
@immutable
class ComboboxOptionState {
  /// Creates a [ComboboxOptionState].
  const ComboboxOptionState();
}

/// Values passed to [ComboboxOptionDelegate] slots during build.
@immutable
class ComboboxOptionContext {
  /// Creates a [ComboboxOptionContext].
  const ComboboxOptionContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    required this.child,
    required this.selected,
    required this.disabled,
    required this.active,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ComboboxOptionStyle style;

  /// Resolved interaction state for this build.
  final ComboboxOptionState state;

  /// The visual variant selected by the constructor.
  final ComboboxOptionVariant variant;

  /// The controlled value.
  final String value;

  /// The primary child widget.
  final Widget child;

  /// Whether this item is selected.
  final bool selected;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether this item is the active option.
  final bool active;
}

/// Builder for the root slot.
class ComboboxOptionRoot {
  /// Creates a [ComboboxOptionRoot] from a builder function.
  const ComboboxOptionRoot(this._build);

  final Widget Function(ComboboxOptionContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ComboboxOptionContext context) => _build(context);
}

/// Theme-owned composition slots for [ComboboxOption].
abstract class ComboboxOptionDelegate extends ComponentDelegate {
  /// Creates a [ComboboxOptionDelegate].
  const ComboboxOptionDelegate();

  /// Builds the composition root.
  Widget root(ComboboxOptionContext context);
}

/// A [ComboboxOption] widget resolved through [ComboboxOptionDelegate].
class ComboboxOption extends StatelessWidget {
  /// Creates a [ComboboxOption].
  const ComboboxOption({
    super.key,
    required this.value,
    required this.child,
    this.selected,
    this.disabled,
    this.active,
    this.style,
  }) : variant = ComboboxOptionVariant.defaults;

  /// The visual variant selected by the constructor.
  final ComboboxOptionVariant variant;

  /// The controlled value.
  final String value;

  /// The primary child widget.
  final Widget child;

  /// Whether this item is selected.
  final bool? selected;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether this item is the active option.
  final bool? active;

  /// Style overrides merged over theme defaults.
  final ComboboxOptionStyle? style;

  /// Resolves properties and builds via [ComboboxOptionDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedChild = child;
    final resolvedSelected = selected ?? false;
    final resolvedDisabled = disabled ?? false;
    final resolvedActive = active ?? false;

    const fromProps = ComboboxOptionStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ComboboxOptionState();
    final comboboxOptionContext = ComboboxOptionContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      child: resolvedChild,
      selected: resolvedSelected,
      disabled: resolvedDisabled,
      active: resolvedActive,
    );
    final delegate = MantleTheme.of(context).delegate<ComboboxOptionDelegate>();
    return delegate.root(comboboxOptionContext);
  }
}

/// Visual variants of [ComboboxGroup].
enum ComboboxGroupVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ComboboxGroup].
@immutable
class ComboboxGroupStyle {
  /// Creates a [ComboboxGroupStyle].
  const ComboboxGroupStyle();

  /// Returns a copy of this [ComboboxGroupStyle] with selected fields replaced.
  ComboboxGroupStyle copyWith() => this;

  /// Merges [other] over this [ComboboxGroupStyle]; null fields keep this value.
  ComboboxGroupStyle mergeWith(ComboboxGroupStyle? other) => this;
}

/// Resolved interaction state for [ComboboxGroup].
@immutable
class ComboboxGroupState {
  /// Creates a [ComboboxGroupState].
  const ComboboxGroupState();
}

/// Values passed to [ComboboxGroupDelegate] slots during build.
@immutable
class ComboboxGroupContext {
  /// Creates a [ComboboxGroupContext].
  const ComboboxGroupContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.label,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ComboboxGroupStyle style;

  /// Resolved interaction state for this build.
  final ComboboxGroupState state;

  /// The visual variant selected by the constructor.
  final ComboboxGroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The label.
  final String? label;
}

/// Builder for the root slot.
class ComboboxGroupRoot {
  /// Creates a [ComboboxGroupRoot] from a builder function.
  const ComboboxGroupRoot(this._build);

  final Widget Function(ComboboxGroupContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ComboboxGroupContext context) => _build(context);
}

/// Theme-owned composition slots for [ComboboxGroup].
abstract class ComboboxGroupDelegate extends ComponentDelegate {
  /// Creates a [ComboboxGroupDelegate].
  const ComboboxGroupDelegate();

  /// Builds the composition root.
  Widget root(ComboboxGroupContext context);
}

/// A [ComboboxGroup] widget resolved through [ComboboxGroupDelegate].
class ComboboxGroup extends StatelessWidget {
  /// Creates a [ComboboxGroup].
  const ComboboxGroup({
    super.key,
    required this.children,
    this.label,
    this.style,
  }) : variant = ComboboxGroupVariant.defaults;

  /// The visual variant selected by the constructor.
  final ComboboxGroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The label.
  final String? label;

  /// Style overrides merged over theme defaults.
  final ComboboxGroupStyle? style;

  /// Resolves properties and builds via [ComboboxGroupDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedLabel = label;

    const fromProps = ComboboxGroupStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ComboboxGroupState();
    final comboboxGroupContext = ComboboxGroupContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      label: resolvedLabel,
    );
    final delegate = MantleTheme.of(context).delegate<ComboboxGroupDelegate>();
    return delegate.root(comboboxGroupContext);
  }
}

/// Visual variants of [ComboboxEmpty].
enum ComboboxEmptyVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ComboboxEmpty].
@immutable
class ComboboxEmptyStyle {
  /// Creates a [ComboboxEmptyStyle].
  const ComboboxEmptyStyle();

  /// Returns a copy of this [ComboboxEmptyStyle] with selected fields replaced.
  ComboboxEmptyStyle copyWith() => this;

  /// Merges [other] over this [ComboboxEmptyStyle]; null fields keep this value.
  ComboboxEmptyStyle mergeWith(ComboboxEmptyStyle? other) => this;
}

/// Resolved interaction state for [ComboboxEmpty].
@immutable
class ComboboxEmptyState {
  /// Creates a [ComboboxEmptyState].
  const ComboboxEmptyState();
}

/// Values passed to [ComboboxEmptyDelegate] slots during build.
@immutable
class ComboboxEmptyContext {
  /// Creates a [ComboboxEmptyContext].
  const ComboboxEmptyContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ComboboxEmptyStyle style;

  /// Resolved interaction state for this build.
  final ComboboxEmptyState state;

  /// The visual variant selected by the constructor.
  final ComboboxEmptyVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class ComboboxEmptyRoot {
  /// Creates a [ComboboxEmptyRoot] from a builder function.
  const ComboboxEmptyRoot(this._build);

  final Widget Function(ComboboxEmptyContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ComboboxEmptyContext context) => _build(context);
}

/// Theme-owned composition slots for [ComboboxEmpty].
abstract class ComboboxEmptyDelegate extends ComponentDelegate {
  /// Creates a [ComboboxEmptyDelegate].
  const ComboboxEmptyDelegate();

  /// Builds the composition root.
  Widget root(ComboboxEmptyContext context);
}

/// A [ComboboxEmpty] widget resolved through [ComboboxEmptyDelegate].
class ComboboxEmpty extends StatelessWidget {
  /// Creates a [ComboboxEmpty].
  const ComboboxEmpty({super.key, required this.child, this.style})
    : variant = ComboboxEmptyVariant.defaults;

  /// The visual variant selected by the constructor.
  final ComboboxEmptyVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final ComboboxEmptyStyle? style;

  /// Resolves properties and builds via [ComboboxEmptyDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = ComboboxEmptyStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ComboboxEmptyState();
    final comboboxEmptyContext = ComboboxEmptyContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<ComboboxEmptyDelegate>();
    return delegate.root(comboboxEmptyContext);
  }
}

/// Visual variants of [ComboboxSearch].
enum ComboboxSearchVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ComboboxSearch].
@immutable
class ComboboxSearchStyle {
  /// Creates a [ComboboxSearchStyle].
  const ComboboxSearchStyle();

  /// Returns a copy of this [ComboboxSearchStyle] with selected fields replaced.
  ComboboxSearchStyle copyWith() => this;

  /// Merges [other] over this [ComboboxSearchStyle]; null fields keep this value.
  ComboboxSearchStyle mergeWith(ComboboxSearchStyle? other) => this;
}

/// Resolved interaction state for [ComboboxSearch].
@immutable
class ComboboxSearchState {
  /// Creates a [ComboboxSearchState].
  const ComboboxSearchState();
}

/// Values passed to [ComboboxSearchDelegate] slots during build.
@immutable
class ComboboxSearchContext {
  /// Creates a [ComboboxSearchContext].
  const ComboboxSearchContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    this.onChanged,
    this.placeholder,
    required this.disabled,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ComboboxSearchStyle style;

  /// Resolved interaction state for this build.
  final ComboboxSearchState state;

  /// The visual variant selected by the constructor.
  final ComboboxSearchVariant variant;

  /// The controlled value.
  final String value;

  /// Called when the value changes.
  final ComboboxSearchChanged? onChanged;

  /// Placeholder text when empty.
  final String? placeholder;

  /// Whether interaction is disabled.
  final bool disabled;
}

/// Builder for the root slot.
class ComboboxSearchRoot {
  /// Creates a [ComboboxSearchRoot] from a builder function.
  const ComboboxSearchRoot(this._build);

  final Widget Function(ComboboxSearchContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ComboboxSearchContext context) => _build(context);
}

/// Theme-owned composition slots for [ComboboxSearch].
abstract class ComboboxSearchDelegate extends ComponentDelegate {
  /// Creates a [ComboboxSearchDelegate].
  const ComboboxSearchDelegate();

  /// Builds the composition root.
  Widget root(ComboboxSearchContext context);
}

/// A [ComboboxSearch] widget resolved through [ComboboxSearchDelegate].
class ComboboxSearch extends StatelessWidget {
  /// Creates a [ComboboxSearch].
  const ComboboxSearch({
    super.key,
    this.value,
    this.onChanged,
    this.placeholder,
    this.disabled,
    this.style,
  }) : variant = ComboboxSearchVariant.defaults;

  /// The visual variant selected by the constructor.
  final ComboboxSearchVariant variant;

  /// The controlled value.
  final String? value;

  /// Called when the value changes.
  final ComboboxSearchChanged? onChanged;

  /// Placeholder text when empty.
  final String? placeholder;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Style overrides merged over theme defaults.
  final ComboboxSearchStyle? style;

  /// Resolves properties and builds via [ComboboxSearchDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value ?? '';
    final resolvedOnChanged = onChanged;
    final resolvedPlaceholder = placeholder;
    final resolvedDisabled = disabled ?? false;

    const fromProps = ComboboxSearchStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ComboboxSearchState();
    final comboboxSearchContext = ComboboxSearchContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      onChanged: resolvedOnChanged,
      placeholder: resolvedPlaceholder,
      disabled: resolvedDisabled,
    );
    final delegate = MantleTheme.of(context).delegate<ComboboxSearchDelegate>();
    return delegate.root(comboboxSearchContext);
  }
}

/// Visual variants of [ComboboxChevron].
enum ComboboxChevronVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ComboboxChevron].
@immutable
class ComboboxChevronStyle {
  /// Creates a [ComboboxChevronStyle].
  const ComboboxChevronStyle();

  /// Returns a copy of this [ComboboxChevronStyle] with selected fields replaced.
  ComboboxChevronStyle copyWith() => this;

  /// Merges [other] over this [ComboboxChevronStyle]; null fields keep this value.
  ComboboxChevronStyle mergeWith(ComboboxChevronStyle? other) => this;
}

/// Resolved interaction state for [ComboboxChevron].
@immutable
class ComboboxChevronState {
  /// Creates a [ComboboxChevronState].
  const ComboboxChevronState();
}

/// Values passed to [ComboboxChevronDelegate] slots during build.
@immutable
class ComboboxChevronContext {
  /// Creates a [ComboboxChevronContext].
  const ComboboxChevronContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.size,
    required this.error,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ComboboxChevronStyle style;

  /// Resolved interaction state for this build.
  final ComboboxChevronState state;

  /// The visual variant selected by the constructor.
  final ComboboxChevronVariant variant;

  /// Size token.
  final String? size;

  /// Error text or error state.
  final bool error;
}

/// Builder for the root slot.
class ComboboxChevronRoot {
  /// Creates a [ComboboxChevronRoot] from a builder function.
  const ComboboxChevronRoot(this._build);

  final Widget Function(ComboboxChevronContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ComboboxChevronContext context) => _build(context);
}

/// Theme-owned composition slots for [ComboboxChevron].
abstract class ComboboxChevronDelegate extends ComponentDelegate {
  /// Creates a [ComboboxChevronDelegate].
  const ComboboxChevronDelegate();

  /// Builds the composition root.
  Widget root(ComboboxChevronContext context);
}

/// A [ComboboxChevron] widget resolved through [ComboboxChevronDelegate].
class ComboboxChevron extends StatelessWidget {
  /// Creates a [ComboboxChevron].
  const ComboboxChevron({super.key, this.size, this.error, this.style})
    : variant = ComboboxChevronVariant.defaults;

  /// The visual variant selected by the constructor.
  final ComboboxChevronVariant variant;

  /// Size token.
  final String? size;

  /// Error text or error state.
  final bool? error;

  /// Style overrides merged over theme defaults.
  final ComboboxChevronStyle? style;

  /// Resolves properties and builds via [ComboboxChevronDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedSize = size;
    final resolvedError = error ?? false;

    const fromProps = ComboboxChevronStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ComboboxChevronState();
    final comboboxChevronContext = ComboboxChevronContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      size: resolvedSize,
      error: resolvedError,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<ComboboxChevronDelegate>();
    return delegate.root(comboboxChevronContext);
  }
}

/// Visual variants of [ComboboxHeader].
enum ComboboxHeaderVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ComboboxHeader].
@immutable
class ComboboxHeaderStyle {
  /// Creates a [ComboboxHeaderStyle].
  const ComboboxHeaderStyle();

  /// Returns a copy of this [ComboboxHeaderStyle] with selected fields replaced.
  ComboboxHeaderStyle copyWith() => this;

  /// Merges [other] over this [ComboboxHeaderStyle]; null fields keep this value.
  ComboboxHeaderStyle mergeWith(ComboboxHeaderStyle? other) => this;
}

/// Resolved interaction state for [ComboboxHeader].
@immutable
class ComboboxHeaderState {
  /// Creates a [ComboboxHeaderState].
  const ComboboxHeaderState();
}

/// Values passed to [ComboboxHeaderDelegate] slots during build.
@immutable
class ComboboxHeaderContext {
  /// Creates a [ComboboxHeaderContext].
  const ComboboxHeaderContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ComboboxHeaderStyle style;

  /// Resolved interaction state for this build.
  final ComboboxHeaderState state;

  /// The visual variant selected by the constructor.
  final ComboboxHeaderVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class ComboboxHeaderRoot {
  /// Creates a [ComboboxHeaderRoot] from a builder function.
  const ComboboxHeaderRoot(this._build);

  final Widget Function(ComboboxHeaderContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ComboboxHeaderContext context) => _build(context);
}

/// Theme-owned composition slots for [ComboboxHeader].
abstract class ComboboxHeaderDelegate extends ComponentDelegate {
  /// Creates a [ComboboxHeaderDelegate].
  const ComboboxHeaderDelegate();

  /// Builds the composition root.
  Widget root(ComboboxHeaderContext context);
}

/// A [ComboboxHeader] widget resolved through [ComboboxHeaderDelegate].
class ComboboxHeader extends StatelessWidget {
  /// Creates a [ComboboxHeader].
  const ComboboxHeader({super.key, required this.child, this.style})
    : variant = ComboboxHeaderVariant.defaults;

  /// The visual variant selected by the constructor.
  final ComboboxHeaderVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final ComboboxHeaderStyle? style;

  /// Resolves properties and builds via [ComboboxHeaderDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = ComboboxHeaderStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ComboboxHeaderState();
    final comboboxHeaderContext = ComboboxHeaderContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<ComboboxHeaderDelegate>();
    return delegate.root(comboboxHeaderContext);
  }
}

/// Visual variants of [ComboboxFooter].
enum ComboboxFooterVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ComboboxFooter].
@immutable
class ComboboxFooterStyle {
  /// Creates a [ComboboxFooterStyle].
  const ComboboxFooterStyle();

  /// Returns a copy of this [ComboboxFooterStyle] with selected fields replaced.
  ComboboxFooterStyle copyWith() => this;

  /// Merges [other] over this [ComboboxFooterStyle]; null fields keep this value.
  ComboboxFooterStyle mergeWith(ComboboxFooterStyle? other) => this;
}

/// Resolved interaction state for [ComboboxFooter].
@immutable
class ComboboxFooterState {
  /// Creates a [ComboboxFooterState].
  const ComboboxFooterState();
}

/// Values passed to [ComboboxFooterDelegate] slots during build.
@immutable
class ComboboxFooterContext {
  /// Creates a [ComboboxFooterContext].
  const ComboboxFooterContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ComboboxFooterStyle style;

  /// Resolved interaction state for this build.
  final ComboboxFooterState state;

  /// The visual variant selected by the constructor.
  final ComboboxFooterVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class ComboboxFooterRoot {
  /// Creates a [ComboboxFooterRoot] from a builder function.
  const ComboboxFooterRoot(this._build);

  final Widget Function(ComboboxFooterContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ComboboxFooterContext context) => _build(context);
}

/// Theme-owned composition slots for [ComboboxFooter].
abstract class ComboboxFooterDelegate extends ComponentDelegate {
  /// Creates a [ComboboxFooterDelegate].
  const ComboboxFooterDelegate();

  /// Builds the composition root.
  Widget root(ComboboxFooterContext context);
}

/// A [ComboboxFooter] widget resolved through [ComboboxFooterDelegate].
class ComboboxFooter extends StatelessWidget {
  /// Creates a [ComboboxFooter].
  const ComboboxFooter({super.key, required this.child, this.style})
    : variant = ComboboxFooterVariant.defaults;

  /// The visual variant selected by the constructor.
  final ComboboxFooterVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final ComboboxFooterStyle? style;

  /// Resolves properties and builds via [ComboboxFooterDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = ComboboxFooterStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ComboboxFooterState();
    final comboboxFooterContext = ComboboxFooterContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<ComboboxFooterDelegate>();
    return delegate.root(comboboxFooterContext);
  }
}
