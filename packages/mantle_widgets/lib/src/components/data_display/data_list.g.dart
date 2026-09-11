// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_list.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [DataList].
enum DataListVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [DataList].
@immutable
class DataListStyle {
  /// Creates a [DataListStyle].
  const DataListStyle();

  /// Returns a copy of this [DataListStyle] with selected fields replaced.
  DataListStyle copyWith() => this;

  /// Merges [other] over this [DataListStyle]; null fields keep this value.
  DataListStyle mergeWith(DataListStyle? other) => this;
}

/// Resolved interaction state for [DataList].
@immutable
class DataListState {
  /// Creates a [DataListState].
  const DataListState();
}

/// Values passed to [DataListDelegate] slots during build.
@immutable
class DataListContext {
  /// Creates a [DataListContext].
  const DataListContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.size,
    required this.gap,
    required this.orientation,
    required this.withDivider,
    required this.labelWidth,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final DataListStyle style;

  /// Resolved interaction state for this build.
  final DataListState state;

  /// The visual variant selected by the constructor.
  final DataListVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Size token.
  final String size;

  /// Spacing token between items.
  final String gap;

  /// The orientation.
  final DataListOrientation orientation;

  /// Whether with divider.
  final bool withDivider;

  /// The label width.
  final double labelWidth;
}

/// Builder for the root slot.
class DataListRoot {
  /// Creates a [DataListRoot] from a builder function.
  const DataListRoot(this._build);

  final Widget Function(DataListContext context) _build;

  /// Invokes this slot with [context].
  Widget call(DataListContext context) => _build(context);
}

/// Theme-owned composition slots for [DataList].
abstract class DataListDelegate extends ComponentDelegate {
  /// Creates a [DataListDelegate].
  const DataListDelegate();

  /// Builds the composition root.
  Widget root(DataListContext context);
}

/// A [DataList] widget resolved through [DataListDelegate].
class DataList extends StatelessWidget {
  /// Creates a [DataList].
  const DataList({
    super.key,
    required this.children,
    this.size,
    this.gap,
    this.orientation,
    this.withDivider,
    this.labelWidth,
    this.style,
  }) : variant = DataListVariant.defaults;

  /// The visual variant selected by the constructor.
  final DataListVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Size token.
  final String? size;

  /// Spacing token between items.
  final String? gap;

  /// The orientation.
  final DataListOrientation? orientation;

  /// Whether with divider.
  final bool? withDivider;

  /// The label width.
  final double? labelWidth;

  /// Style overrides merged over theme defaults.
  final DataListStyle? style;

  /// Resolves properties and builds via [DataListDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedSize = size ?? 'sm';
    final resolvedGap = gap ?? 'sm';
    final resolvedOrientation = orientation ?? DataListOrientation.horizontal;
    final resolvedWithDivider = withDivider ?? false;
    final resolvedLabelWidth = labelWidth ?? 120;

    const fromProps = DataListStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = DataListState();
    final dataListContext = DataListContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      size: resolvedSize,
      gap: resolvedGap,
      orientation: resolvedOrientation,
      withDivider: resolvedWithDivider,
      labelWidth: resolvedLabelWidth,
    );
    final delegate = MantleTheme.of(context).delegate<DataListDelegate>();
    return delegate.root(dataListContext);
  }
}

/// Visual variants of [DataListItem].
enum DataListItemVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [DataListItem].
@immutable
class DataListItemStyle {
  /// Creates a [DataListItemStyle].
  const DataListItemStyle();

  /// Returns a copy of this [DataListItemStyle] with selected fields replaced.
  DataListItemStyle copyWith() => this;

  /// Merges [other] over this [DataListItemStyle]; null fields keep this value.
  DataListItemStyle mergeWith(DataListItemStyle? other) => this;
}

/// Resolved interaction state for [DataListItem].
@immutable
class DataListItemState {
  /// Creates a [DataListItemState].
  const DataListItemState();
}

/// Values passed to [DataListItemDelegate] slots during build.
@immutable
class DataListItemContext {
  /// Creates a [DataListItemContext].
  const DataListItemContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final DataListItemStyle style;

  /// Resolved interaction state for this build.
  final DataListItemState state;

  /// The visual variant selected by the constructor.
  final DataListItemVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;
}

/// Builder for the root slot.
class DataListItemRoot {
  /// Creates a [DataListItemRoot] from a builder function.
  const DataListItemRoot(this._build);

  final Widget Function(DataListItemContext context) _build;

  /// Invokes this slot with [context].
  Widget call(DataListItemContext context) => _build(context);
}

/// Theme-owned composition slots for [DataListItem].
abstract class DataListItemDelegate extends ComponentDelegate {
  /// Creates a [DataListItemDelegate].
  const DataListItemDelegate();

  /// Builds the composition root.
  Widget root(DataListItemContext context);
}

/// A [DataListItem] widget resolved through [DataListItemDelegate].
class DataListItem extends StatelessWidget {
  /// Creates a [DataListItem].
  const DataListItem({super.key, required this.children, this.style})
    : variant = DataListItemVariant.defaults;

  /// The visual variant selected by the constructor.
  final DataListItemVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Style overrides merged over theme defaults.
  final DataListItemStyle? style;

  /// Resolves properties and builds via [DataListItemDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;

    const fromProps = DataListItemStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = DataListItemState();
    final dataListItemContext = DataListItemContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
    );
    final delegate = MantleTheme.of(context).delegate<DataListItemDelegate>();
    return delegate.root(dataListItemContext);
  }
}

/// Visual variants of [DataListItemLabel].
enum DataListItemLabelVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [DataListItemLabel].
@immutable
class DataListItemLabelStyle {
  /// Creates a [DataListItemLabelStyle].
  const DataListItemLabelStyle();

  /// Returns a copy of this [DataListItemLabelStyle] with selected fields replaced.
  DataListItemLabelStyle copyWith() => this;

  /// Merges [other] over this [DataListItemLabelStyle]; null fields keep this value.
  DataListItemLabelStyle mergeWith(DataListItemLabelStyle? other) => this;
}

/// Resolved interaction state for [DataListItemLabel].
@immutable
class DataListItemLabelState {
  /// Creates a [DataListItemLabelState].
  const DataListItemLabelState();
}

/// Values passed to [DataListItemLabelDelegate] slots during build.
@immutable
class DataListItemLabelContext {
  /// Creates a [DataListItemLabelContext].
  const DataListItemLabelContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final DataListItemLabelStyle style;

  /// Resolved interaction state for this build.
  final DataListItemLabelState state;

  /// The visual variant selected by the constructor.
  final DataListItemLabelVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class DataListItemLabelRoot {
  /// Creates a [DataListItemLabelRoot] from a builder function.
  const DataListItemLabelRoot(this._build);

  final Widget Function(DataListItemLabelContext context) _build;

  /// Invokes this slot with [context].
  Widget call(DataListItemLabelContext context) => _build(context);
}

/// Theme-owned composition slots for [DataListItemLabel].
abstract class DataListItemLabelDelegate extends ComponentDelegate {
  /// Creates a [DataListItemLabelDelegate].
  const DataListItemLabelDelegate();

  /// Builds the composition root.
  Widget root(DataListItemLabelContext context);
}

/// A [DataListItemLabel] widget resolved through [DataListItemLabelDelegate].
class DataListItemLabel extends StatelessWidget {
  /// Creates a [DataListItemLabel].
  const DataListItemLabel({super.key, required this.child, this.style})
    : variant = DataListItemLabelVariant.defaults;

  /// The visual variant selected by the constructor.
  final DataListItemLabelVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final DataListItemLabelStyle? style;

  /// Resolves properties and builds via [DataListItemLabelDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = DataListItemLabelStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = DataListItemLabelState();
    final dataListItemLabelContext = DataListItemLabelContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<DataListItemLabelDelegate>();
    return delegate.root(dataListItemLabelContext);
  }
}

/// Visual variants of [DataListItemValue].
enum DataListItemValueVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [DataListItemValue].
@immutable
class DataListItemValueStyle {
  /// Creates a [DataListItemValueStyle].
  const DataListItemValueStyle();

  /// Returns a copy of this [DataListItemValueStyle] with selected fields replaced.
  DataListItemValueStyle copyWith() => this;

  /// Merges [other] over this [DataListItemValueStyle]; null fields keep this value.
  DataListItemValueStyle mergeWith(DataListItemValueStyle? other) => this;
}

/// Resolved interaction state for [DataListItemValue].
@immutable
class DataListItemValueState {
  /// Creates a [DataListItemValueState].
  const DataListItemValueState();
}

/// Values passed to [DataListItemValueDelegate] slots during build.
@immutable
class DataListItemValueContext {
  /// Creates a [DataListItemValueContext].
  const DataListItemValueContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final DataListItemValueStyle style;

  /// Resolved interaction state for this build.
  final DataListItemValueState state;

  /// The visual variant selected by the constructor.
  final DataListItemValueVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class DataListItemValueRoot {
  /// Creates a [DataListItemValueRoot] from a builder function.
  const DataListItemValueRoot(this._build);

  final Widget Function(DataListItemValueContext context) _build;

  /// Invokes this slot with [context].
  Widget call(DataListItemValueContext context) => _build(context);
}

/// Theme-owned composition slots for [DataListItemValue].
abstract class DataListItemValueDelegate extends ComponentDelegate {
  /// Creates a [DataListItemValueDelegate].
  const DataListItemValueDelegate();

  /// Builds the composition root.
  Widget root(DataListItemValueContext context);
}

/// A [DataListItemValue] widget resolved through [DataListItemValueDelegate].
class DataListItemValue extends StatelessWidget {
  /// Creates a [DataListItemValue].
  const DataListItemValue({super.key, required this.child, this.style})
    : variant = DataListItemValueVariant.defaults;

  /// The visual variant selected by the constructor.
  final DataListItemValueVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final DataListItemValueStyle? style;

  /// Resolves properties and builds via [DataListItemValueDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = DataListItemValueStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = DataListItemValueState();
    final dataListItemValueContext = DataListItemValueContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<DataListItemValueDelegate>();
    return delegate.root(dataListItemValueContext);
  }
}
