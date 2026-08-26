// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combobox.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum ComboboxVariant { defaults }

@immutable
class ComboboxStyle {
  const ComboboxStyle({
    this.background,
    this.borderColor,
    this.radius,
    this.dropdownPadding,
  });

  final Color? background;
  final Color? borderColor;
  final BorderRadiusGeometry? radius;
  final double? dropdownPadding;

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

@immutable
class ComboboxState {
  const ComboboxState({this.readOnly = false});

  final bool readOnly;
}

@immutable
class ComboboxContext {
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

  final BuildContext context;
  final ComboboxStyle style;
  final ComboboxState state;
  final ComboboxVariant variant;
  final List<Widget> children;
  final bool? dropdownOpened;
  final VoidCallback? onDropdownOpen;
  final VoidCallback? onDropdownClose;
  final ComboboxOptionSubmit? onOptionSubmit;
  final String size;
  final double dropdownPadding;
  final bool readOnly;
  final bool resetSelectionOnOptionHover;
  final double maxDropdownHeight;
  final bool withScrollArea;
}

class ComboboxRoot {
  const ComboboxRoot(this._build);

  final Widget Function(ComboboxContext context) _build;

  Widget call(ComboboxContext context) => _build(context);
}

abstract class ComboboxDelegate extends ComponentDelegate {
  const ComboboxDelegate();

  Widget root(ComboboxContext context);
}

class Combobox extends StatelessWidget {
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

  final ComboboxVariant variant;
  final List<Widget> children;
  final bool? dropdownOpened;
  final VoidCallback? onDropdownOpen;
  final VoidCallback? onDropdownClose;
  final ComboboxOptionSubmit? onOptionSubmit;
  final String? size;
  final double? dropdownPadding;
  final bool? readOnly;
  final bool? resetSelectionOnOptionHover;
  final double? maxDropdownHeight;
  final bool? withScrollArea;
  final ComboboxStyle? style;

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

enum ComboboxTargetVariant { defaults }

@immutable
class ComboboxTargetStyle {
  const ComboboxTargetStyle();

  ComboboxTargetStyle copyWith() => this;

  ComboboxTargetStyle mergeWith(ComboboxTargetStyle? other) => this;
}

@immutable
class ComboboxTargetState {
  const ComboboxTargetState();
}

@immutable
class ComboboxTargetContext {
  const ComboboxTargetContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final ComboboxTargetStyle style;
  final ComboboxTargetState state;
  final ComboboxTargetVariant variant;
  final Widget child;
}

class ComboboxTargetRoot {
  const ComboboxTargetRoot(this._build);

  final Widget Function(ComboboxTargetContext context) _build;

  Widget call(ComboboxTargetContext context) => _build(context);
}

abstract class ComboboxTargetDelegate extends ComponentDelegate {
  const ComboboxTargetDelegate();

  Widget root(ComboboxTargetContext context);
}

class ComboboxTarget extends StatelessWidget {
  const ComboboxTarget({super.key, required this.child, this.style})
    : variant = ComboboxTargetVariant.defaults;

  final ComboboxTargetVariant variant;
  final Widget child;
  final ComboboxTargetStyle? style;

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

enum ComboboxDropdownVariant { defaults }

@immutable
class ComboboxDropdownStyle {
  const ComboboxDropdownStyle();

  ComboboxDropdownStyle copyWith() => this;

  ComboboxDropdownStyle mergeWith(ComboboxDropdownStyle? other) => this;
}

@immutable
class ComboboxDropdownState {
  const ComboboxDropdownState();
}

@immutable
class ComboboxDropdownContext {
  const ComboboxDropdownContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.hidden,
  });

  final BuildContext context;
  final ComboboxDropdownStyle style;
  final ComboboxDropdownState state;
  final ComboboxDropdownVariant variant;
  final Widget child;
  final bool hidden;
}

class ComboboxDropdownRoot {
  const ComboboxDropdownRoot(this._build);

  final Widget Function(ComboboxDropdownContext context) _build;

  Widget call(ComboboxDropdownContext context) => _build(context);
}

abstract class ComboboxDropdownDelegate extends ComponentDelegate {
  const ComboboxDropdownDelegate();

  Widget root(ComboboxDropdownContext context);
}

class ComboboxDropdown extends StatelessWidget {
  const ComboboxDropdown({
    super.key,
    required this.child,
    this.hidden,
    this.style,
  }) : variant = ComboboxDropdownVariant.defaults;

  final ComboboxDropdownVariant variant;
  final Widget child;
  final bool? hidden;
  final ComboboxDropdownStyle? style;

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

enum ComboboxOptionsVariant { defaults }

@immutable
class ComboboxOptionsStyle {
  const ComboboxOptionsStyle();

  ComboboxOptionsStyle copyWith() => this;

  ComboboxOptionsStyle mergeWith(ComboboxOptionsStyle? other) => this;
}

@immutable
class ComboboxOptionsState {
  const ComboboxOptionsState();
}

@immutable
class ComboboxOptionsContext {
  const ComboboxOptionsContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  final BuildContext context;
  final ComboboxOptionsStyle style;
  final ComboboxOptionsState state;
  final ComboboxOptionsVariant variant;
  final List<Widget> children;
}

class ComboboxOptionsRoot {
  const ComboboxOptionsRoot(this._build);

  final Widget Function(ComboboxOptionsContext context) _build;

  Widget call(ComboboxOptionsContext context) => _build(context);
}

abstract class ComboboxOptionsDelegate extends ComponentDelegate {
  const ComboboxOptionsDelegate();

  Widget root(ComboboxOptionsContext context);
}

class ComboboxOptions extends StatelessWidget {
  const ComboboxOptions({super.key, required this.children, this.style})
    : variant = ComboboxOptionsVariant.defaults;

  final ComboboxOptionsVariant variant;
  final List<Widget> children;
  final ComboboxOptionsStyle? style;

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

enum ComboboxOptionVariant { defaults }

@immutable
class ComboboxOptionStyle {
  const ComboboxOptionStyle();

  ComboboxOptionStyle copyWith() => this;

  ComboboxOptionStyle mergeWith(ComboboxOptionStyle? other) => this;
}

@immutable
class ComboboxOptionState {
  const ComboboxOptionState();
}

@immutable
class ComboboxOptionContext {
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

  final BuildContext context;
  final ComboboxOptionStyle style;
  final ComboboxOptionState state;
  final ComboboxOptionVariant variant;
  final String value;
  final Widget child;
  final bool selected;
  final bool disabled;
  final bool active;
}

class ComboboxOptionRoot {
  const ComboboxOptionRoot(this._build);

  final Widget Function(ComboboxOptionContext context) _build;

  Widget call(ComboboxOptionContext context) => _build(context);
}

abstract class ComboboxOptionDelegate extends ComponentDelegate {
  const ComboboxOptionDelegate();

  Widget root(ComboboxOptionContext context);
}

class ComboboxOption extends StatelessWidget {
  const ComboboxOption({
    super.key,
    required this.value,
    required this.child,
    this.selected,
    this.disabled,
    this.active,
    this.style,
  }) : variant = ComboboxOptionVariant.defaults;

  final ComboboxOptionVariant variant;
  final String value;
  final Widget child;
  final bool? selected;
  final bool? disabled;
  final bool? active;
  final ComboboxOptionStyle? style;

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

enum ComboboxGroupVariant { defaults }

@immutable
class ComboboxGroupStyle {
  const ComboboxGroupStyle();

  ComboboxGroupStyle copyWith() => this;

  ComboboxGroupStyle mergeWith(ComboboxGroupStyle? other) => this;
}

@immutable
class ComboboxGroupState {
  const ComboboxGroupState();
}

@immutable
class ComboboxGroupContext {
  const ComboboxGroupContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.label,
  });

  final BuildContext context;
  final ComboboxGroupStyle style;
  final ComboboxGroupState state;
  final ComboboxGroupVariant variant;
  final List<Widget> children;
  final String? label;
}

class ComboboxGroupRoot {
  const ComboboxGroupRoot(this._build);

  final Widget Function(ComboboxGroupContext context) _build;

  Widget call(ComboboxGroupContext context) => _build(context);
}

abstract class ComboboxGroupDelegate extends ComponentDelegate {
  const ComboboxGroupDelegate();

  Widget root(ComboboxGroupContext context);
}

class ComboboxGroup extends StatelessWidget {
  const ComboboxGroup({
    super.key,
    required this.children,
    this.label,
    this.style,
  }) : variant = ComboboxGroupVariant.defaults;

  final ComboboxGroupVariant variant;
  final List<Widget> children;
  final String? label;
  final ComboboxGroupStyle? style;

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

enum ComboboxEmptyVariant { defaults }

@immutable
class ComboboxEmptyStyle {
  const ComboboxEmptyStyle();

  ComboboxEmptyStyle copyWith() => this;

  ComboboxEmptyStyle mergeWith(ComboboxEmptyStyle? other) => this;
}

@immutable
class ComboboxEmptyState {
  const ComboboxEmptyState();
}

@immutable
class ComboboxEmptyContext {
  const ComboboxEmptyContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final ComboboxEmptyStyle style;
  final ComboboxEmptyState state;
  final ComboboxEmptyVariant variant;
  final Widget child;
}

class ComboboxEmptyRoot {
  const ComboboxEmptyRoot(this._build);

  final Widget Function(ComboboxEmptyContext context) _build;

  Widget call(ComboboxEmptyContext context) => _build(context);
}

abstract class ComboboxEmptyDelegate extends ComponentDelegate {
  const ComboboxEmptyDelegate();

  Widget root(ComboboxEmptyContext context);
}

class ComboboxEmpty extends StatelessWidget {
  const ComboboxEmpty({super.key, required this.child, this.style})
    : variant = ComboboxEmptyVariant.defaults;

  final ComboboxEmptyVariant variant;
  final Widget child;
  final ComboboxEmptyStyle? style;

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

enum ComboboxSearchVariant { defaults }

@immutable
class ComboboxSearchStyle {
  const ComboboxSearchStyle();

  ComboboxSearchStyle copyWith() => this;

  ComboboxSearchStyle mergeWith(ComboboxSearchStyle? other) => this;
}

@immutable
class ComboboxSearchState {
  const ComboboxSearchState();
}

@immutable
class ComboboxSearchContext {
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

  final BuildContext context;
  final ComboboxSearchStyle style;
  final ComboboxSearchState state;
  final ComboboxSearchVariant variant;
  final String value;
  final ComboboxSearchChanged? onChanged;
  final String? placeholder;
  final bool disabled;
}

class ComboboxSearchRoot {
  const ComboboxSearchRoot(this._build);

  final Widget Function(ComboboxSearchContext context) _build;

  Widget call(ComboboxSearchContext context) => _build(context);
}

abstract class ComboboxSearchDelegate extends ComponentDelegate {
  const ComboboxSearchDelegate();

  Widget root(ComboboxSearchContext context);
}

class ComboboxSearch extends StatelessWidget {
  const ComboboxSearch({
    super.key,
    this.value,
    this.onChanged,
    this.placeholder,
    this.disabled,
    this.style,
  }) : variant = ComboboxSearchVariant.defaults;

  final ComboboxSearchVariant variant;
  final String? value;
  final ComboboxSearchChanged? onChanged;
  final String? placeholder;
  final bool? disabled;
  final ComboboxSearchStyle? style;

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

enum ComboboxChevronVariant { defaults }

@immutable
class ComboboxChevronStyle {
  const ComboboxChevronStyle();

  ComboboxChevronStyle copyWith() => this;

  ComboboxChevronStyle mergeWith(ComboboxChevronStyle? other) => this;
}

@immutable
class ComboboxChevronState {
  const ComboboxChevronState();
}

@immutable
class ComboboxChevronContext {
  const ComboboxChevronContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.size,
    required this.error,
  });

  final BuildContext context;
  final ComboboxChevronStyle style;
  final ComboboxChevronState state;
  final ComboboxChevronVariant variant;
  final String? size;
  final bool error;
}

class ComboboxChevronRoot {
  const ComboboxChevronRoot(this._build);

  final Widget Function(ComboboxChevronContext context) _build;

  Widget call(ComboboxChevronContext context) => _build(context);
}

abstract class ComboboxChevronDelegate extends ComponentDelegate {
  const ComboboxChevronDelegate();

  Widget root(ComboboxChevronContext context);
}

class ComboboxChevron extends StatelessWidget {
  const ComboboxChevron({super.key, this.size, this.error, this.style})
    : variant = ComboboxChevronVariant.defaults;

  final ComboboxChevronVariant variant;
  final String? size;
  final bool? error;
  final ComboboxChevronStyle? style;

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

enum ComboboxHeaderVariant { defaults }

@immutable
class ComboboxHeaderStyle {
  const ComboboxHeaderStyle();

  ComboboxHeaderStyle copyWith() => this;

  ComboboxHeaderStyle mergeWith(ComboboxHeaderStyle? other) => this;
}

@immutable
class ComboboxHeaderState {
  const ComboboxHeaderState();
}

@immutable
class ComboboxHeaderContext {
  const ComboboxHeaderContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final ComboboxHeaderStyle style;
  final ComboboxHeaderState state;
  final ComboboxHeaderVariant variant;
  final Widget child;
}

class ComboboxHeaderRoot {
  const ComboboxHeaderRoot(this._build);

  final Widget Function(ComboboxHeaderContext context) _build;

  Widget call(ComboboxHeaderContext context) => _build(context);
}

abstract class ComboboxHeaderDelegate extends ComponentDelegate {
  const ComboboxHeaderDelegate();

  Widget root(ComboboxHeaderContext context);
}

class ComboboxHeader extends StatelessWidget {
  const ComboboxHeader({super.key, required this.child, this.style})
    : variant = ComboboxHeaderVariant.defaults;

  final ComboboxHeaderVariant variant;
  final Widget child;
  final ComboboxHeaderStyle? style;

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

enum ComboboxFooterVariant { defaults }

@immutable
class ComboboxFooterStyle {
  const ComboboxFooterStyle();

  ComboboxFooterStyle copyWith() => this;

  ComboboxFooterStyle mergeWith(ComboboxFooterStyle? other) => this;
}

@immutable
class ComboboxFooterState {
  const ComboboxFooterState();
}

@immutable
class ComboboxFooterContext {
  const ComboboxFooterContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final ComboboxFooterStyle style;
  final ComboboxFooterState state;
  final ComboboxFooterVariant variant;
  final Widget child;
}

class ComboboxFooterRoot {
  const ComboboxFooterRoot(this._build);

  final Widget Function(ComboboxFooterContext context) _build;

  Widget call(ComboboxFooterContext context) => _build(context);
}

abstract class ComboboxFooterDelegate extends ComponentDelegate {
  const ComboboxFooterDelegate();

  Widget root(ComboboxFooterContext context);
}

class ComboboxFooter extends StatelessWidget {
  const ComboboxFooter({super.key, required this.child, this.style})
    : variant = ComboboxFooterVariant.defaults;

  final ComboboxFooterVariant variant;
  final Widget child;
  final ComboboxFooterStyle? style;

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
