// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MTable].
enum MTableVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MTable].
@immutable
class MTableStyle {
  /// Creates a [MTableStyle].
  const MTableStyle();

  /// Returns a copy of this [MTableStyle] with selected fields replaced.
  MTableStyle copyWith() => this;

  /// Merges [other] over this [MTableStyle]; null fields keep this value.
  MTableStyle mergeWith(MTableStyle? other) => this;
}

/// Resolved interaction state for [MTable].
@immutable
class MTableState {
  /// Creates a [MTableState].
  const MTableState();
}

/// Values passed to [MTableDelegate] slots during build.
@immutable
class MTableContext {
  /// Creates a [MTableContext].
  const MTableContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.children,
    this.data,
    required this.withTableBorder,
    required this.withColumnBorders,
    required this.withRowBorders,
    required this.striped,
    this.stripedFrom,
    required this.highlightOnHover,
    required this.horizontalSpacing,
    required this.verticalSpacing,
    required this.stickyHeader,
    required this.captionSide,
    required this.tabularNums,
    this.borderColor,
    this.stripedColor,
    this.highlightOnHoverColor,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MTableStyle style;

  /// Resolved interaction state for this build.
  final MTableState state;

  /// The visual variant selected by the constructor.
  final MTableVariant variant;

  /// Child widgets composed by this component.
  final List<Widget>? children;

  /// Tabular data to render.
  final TableData? data;

  /// Whether with table border.
  final bool withTableBorder;

  /// Whether with column borders.
  final bool withColumnBorders;

  /// Whether with row borders.
  final bool withRowBorders;

  /// Whether rows use alternating backgrounds.
  final bool striped;

  /// The striped from.
  final TableStriped? stripedFrom;

  /// Whether highlight on hover.
  final bool highlightOnHover;

  /// The horizontal spacing.
  final String horizontalSpacing;

  /// The vertical spacing.
  final String verticalSpacing;

  /// Whether the header stays pinned while scrolling.
  final bool stickyHeader;

  /// The caption side.
  final TableCaptionSide captionSide;

  /// Whether tabular nums.
  final bool tabularNums;

  /// Border color token or value.
  final String? borderColor;

  /// The striped color.
  final String? stripedColor;

  /// The highlight on hover color.
  final String? highlightOnHoverColor;
}

/// Builder for the root slot.
class MTableRoot {
  /// Creates a [MTableRoot] from a builder function.
  const MTableRoot(this._build);

  final Widget Function(MTableContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MTableContext context) => _build(context);
}

/// Theme-owned composition slots for [MTable].
abstract class MTableDelegate extends ComponentDelegate {
  /// Creates a [MTableDelegate].
  const MTableDelegate();

  /// Builds the composition root.
  Widget root(MTableContext context);
}

/// A [MTable] widget resolved through [MTableDelegate].
class MTable extends StatelessWidget {
  /// Creates a [MTable].
  const MTable({
    super.key,
    this.children,
    this.data,
    this.withTableBorder,
    this.withColumnBorders,
    this.withRowBorders,
    this.striped,
    this.stripedFrom,
    this.highlightOnHover,
    this.horizontalSpacing,
    this.verticalSpacing,
    this.stickyHeader,
    this.captionSide,
    this.tabularNums,
    this.borderColor,
    this.stripedColor,
    this.highlightOnHoverColor,
    this.style,
  }) : variant = MTableVariant.defaults;

  /// The visual variant selected by the constructor.
  final MTableVariant variant;

  /// Child widgets composed by this component.
  final List<Widget>? children;

  /// Tabular data to render.
  final TableData? data;

  /// Whether with table border.
  final bool? withTableBorder;

  /// Whether with column borders.
  final bool? withColumnBorders;

  /// Whether with row borders.
  final bool? withRowBorders;

  /// Whether rows use alternating backgrounds.
  final bool? striped;

  /// The striped from.
  final TableStriped? stripedFrom;

  /// Whether highlight on hover.
  final bool? highlightOnHover;

  /// The horizontal spacing.
  final String? horizontalSpacing;

  /// The vertical spacing.
  final String? verticalSpacing;

  /// Whether the header stays pinned while scrolling.
  final bool? stickyHeader;

  /// The caption side.
  final TableCaptionSide? captionSide;

  /// Whether tabular nums.
  final bool? tabularNums;

  /// Border color token or value.
  final String? borderColor;

  /// The striped color.
  final String? stripedColor;

  /// The highlight on hover color.
  final String? highlightOnHoverColor;

  /// Style overrides merged over theme defaults.
  final MTableStyle? style;

  /// Resolves properties and builds via [MTableDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedData = data;
    final resolvedWithTableBorder = withTableBorder ?? false;
    final resolvedWithColumnBorders = withColumnBorders ?? false;
    final resolvedWithRowBorders = withRowBorders ?? true;
    final resolvedStriped = striped ?? false;
    final resolvedStripedFrom = stripedFrom;
    final resolvedHighlightOnHover = highlightOnHover ?? false;
    final resolvedHorizontalSpacing = horizontalSpacing ?? 'xs';
    final resolvedVerticalSpacing = verticalSpacing ?? 'xs';
    final resolvedStickyHeader = stickyHeader ?? false;
    final resolvedCaptionSide = captionSide ?? TableCaptionSide.bottom;
    final resolvedTabularNums = tabularNums ?? false;
    final resolvedBorderColor = borderColor;
    final resolvedStripedColor = stripedColor;
    final resolvedHighlightOnHoverColor = highlightOnHoverColor;

    const fromProps = MTableStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MTableState();
    final mTableContext = MTableContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      data: resolvedData,
      withTableBorder: resolvedWithTableBorder,
      withColumnBorders: resolvedWithColumnBorders,
      withRowBorders: resolvedWithRowBorders,
      striped: resolvedStriped,
      stripedFrom: resolvedStripedFrom,
      highlightOnHover: resolvedHighlightOnHover,
      horizontalSpacing: resolvedHorizontalSpacing,
      verticalSpacing: resolvedVerticalSpacing,
      stickyHeader: resolvedStickyHeader,
      captionSide: resolvedCaptionSide,
      tabularNums: resolvedTabularNums,
      borderColor: resolvedBorderColor,
      stripedColor: resolvedStripedColor,
      highlightOnHoverColor: resolvedHighlightOnHoverColor,
    );
    final delegate = MantleTheme.of(context).delegate<MTableDelegate>();
    return delegate.root(mTableContext);
  }
}

/// Visual variants of [TableThead].
enum TableTheadVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [TableThead].
@immutable
class TableTheadStyle {
  /// Creates a [TableTheadStyle].
  const TableTheadStyle();

  /// Returns a copy of this [TableTheadStyle] with selected fields replaced.
  TableTheadStyle copyWith() => this;

  /// Merges [other] over this [TableTheadStyle]; null fields keep this value.
  TableTheadStyle mergeWith(TableTheadStyle? other) => this;
}

/// Resolved interaction state for [TableThead].
@immutable
class TableTheadState {
  /// Creates a [TableTheadState].
  const TableTheadState();
}

/// Values passed to [TableTheadDelegate] slots during build.
@immutable
class TableTheadContext {
  /// Creates a [TableTheadContext].
  const TableTheadContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TableTheadStyle style;

  /// Resolved interaction state for this build.
  final TableTheadState state;

  /// The visual variant selected by the constructor.
  final TableTheadVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;
}

/// Builder for the root slot.
class TableTheadRoot {
  /// Creates a [TableTheadRoot] from a builder function.
  const TableTheadRoot(this._build);

  final Widget Function(TableTheadContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TableTheadContext context) => _build(context);
}

/// Theme-owned composition slots for [TableThead].
abstract class TableTheadDelegate extends ComponentDelegate {
  /// Creates a [TableTheadDelegate].
  const TableTheadDelegate();

  /// Builds the composition root.
  Widget root(TableTheadContext context);
}

/// A [TableThead] widget resolved through [TableTheadDelegate].
class TableThead extends StatelessWidget {
  /// Creates a [TableThead].
  const TableThead({super.key, required this.children, this.style})
    : variant = TableTheadVariant.defaults;

  /// The visual variant selected by the constructor.
  final TableTheadVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Style overrides merged over theme defaults.
  final TableTheadStyle? style;

  /// Resolves properties and builds via [TableTheadDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;

    const fromProps = TableTheadStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TableTheadState();
    final tableTheadContext = TableTheadContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
    );
    final delegate = MantleTheme.of(context).delegate<TableTheadDelegate>();
    return delegate.root(tableTheadContext);
  }
}

/// Visual variants of [TableTbody].
enum TableTbodyVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [TableTbody].
@immutable
class TableTbodyStyle {
  /// Creates a [TableTbodyStyle].
  const TableTbodyStyle();

  /// Returns a copy of this [TableTbodyStyle] with selected fields replaced.
  TableTbodyStyle copyWith() => this;

  /// Merges [other] over this [TableTbodyStyle]; null fields keep this value.
  TableTbodyStyle mergeWith(TableTbodyStyle? other) => this;
}

/// Resolved interaction state for [TableTbody].
@immutable
class TableTbodyState {
  /// Creates a [TableTbodyState].
  const TableTbodyState();
}

/// Values passed to [TableTbodyDelegate] slots during build.
@immutable
class TableTbodyContext {
  /// Creates a [TableTbodyContext].
  const TableTbodyContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TableTbodyStyle style;

  /// Resolved interaction state for this build.
  final TableTbodyState state;

  /// The visual variant selected by the constructor.
  final TableTbodyVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;
}

/// Builder for the root slot.
class TableTbodyRoot {
  /// Creates a [TableTbodyRoot] from a builder function.
  const TableTbodyRoot(this._build);

  final Widget Function(TableTbodyContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TableTbodyContext context) => _build(context);
}

/// Theme-owned composition slots for [TableTbody].
abstract class TableTbodyDelegate extends ComponentDelegate {
  /// Creates a [TableTbodyDelegate].
  const TableTbodyDelegate();

  /// Builds the composition root.
  Widget root(TableTbodyContext context);
}

/// A [TableTbody] widget resolved through [TableTbodyDelegate].
class TableTbody extends StatelessWidget {
  /// Creates a [TableTbody].
  const TableTbody({super.key, required this.children, this.style})
    : variant = TableTbodyVariant.defaults;

  /// The visual variant selected by the constructor.
  final TableTbodyVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Style overrides merged over theme defaults.
  final TableTbodyStyle? style;

  /// Resolves properties and builds via [TableTbodyDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;

    const fromProps = TableTbodyStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TableTbodyState();
    final tableTbodyContext = TableTbodyContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
    );
    final delegate = MantleTheme.of(context).delegate<TableTbodyDelegate>();
    return delegate.root(tableTbodyContext);
  }
}

/// Visual variants of [TableTfoot].
enum TableTfootVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [TableTfoot].
@immutable
class TableTfootStyle {
  /// Creates a [TableTfootStyle].
  const TableTfootStyle();

  /// Returns a copy of this [TableTfootStyle] with selected fields replaced.
  TableTfootStyle copyWith() => this;

  /// Merges [other] over this [TableTfootStyle]; null fields keep this value.
  TableTfootStyle mergeWith(TableTfootStyle? other) => this;
}

/// Resolved interaction state for [TableTfoot].
@immutable
class TableTfootState {
  /// Creates a [TableTfootState].
  const TableTfootState();
}

/// Values passed to [TableTfootDelegate] slots during build.
@immutable
class TableTfootContext {
  /// Creates a [TableTfootContext].
  const TableTfootContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TableTfootStyle style;

  /// Resolved interaction state for this build.
  final TableTfootState state;

  /// The visual variant selected by the constructor.
  final TableTfootVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;
}

/// Builder for the root slot.
class TableTfootRoot {
  /// Creates a [TableTfootRoot] from a builder function.
  const TableTfootRoot(this._build);

  final Widget Function(TableTfootContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TableTfootContext context) => _build(context);
}

/// Theme-owned composition slots for [TableTfoot].
abstract class TableTfootDelegate extends ComponentDelegate {
  /// Creates a [TableTfootDelegate].
  const TableTfootDelegate();

  /// Builds the composition root.
  Widget root(TableTfootContext context);
}

/// A [TableTfoot] widget resolved through [TableTfootDelegate].
class TableTfoot extends StatelessWidget {
  /// Creates a [TableTfoot].
  const TableTfoot({super.key, required this.children, this.style})
    : variant = TableTfootVariant.defaults;

  /// The visual variant selected by the constructor.
  final TableTfootVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Style overrides merged over theme defaults.
  final TableTfootStyle? style;

  /// Resolves properties and builds via [TableTfootDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;

    const fromProps = TableTfootStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TableTfootState();
    final tableTfootContext = TableTfootContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
    );
    final delegate = MantleTheme.of(context).delegate<TableTfootDelegate>();
    return delegate.root(tableTfootContext);
  }
}

/// Visual variants of [TableTr].
enum TableTrVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [TableTr].
@immutable
class TableTrStyle {
  /// Creates a [TableTrStyle].
  const TableTrStyle();

  /// Returns a copy of this [TableTrStyle] with selected fields replaced.
  TableTrStyle copyWith() => this;

  /// Merges [other] over this [TableTrStyle]; null fields keep this value.
  TableTrStyle mergeWith(TableTrStyle? other) => this;
}

/// Resolved interaction state for [TableTr].
@immutable
class TableTrState {
  /// Creates a [TableTrState].
  const TableTrState();
}

/// Values passed to [TableTrDelegate] slots during build.
@immutable
class TableTrContext {
  /// Creates a [TableTrContext].
  const TableTrContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TableTrStyle style;

  /// Resolved interaction state for this build.
  final TableTrState state;

  /// The visual variant selected by the constructor.
  final TableTrVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;
}

/// Builder for the root slot.
class TableTrRoot {
  /// Creates a [TableTrRoot] from a builder function.
  const TableTrRoot(this._build);

  final Widget Function(TableTrContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TableTrContext context) => _build(context);
}

/// Theme-owned composition slots for [TableTr].
abstract class TableTrDelegate extends ComponentDelegate {
  /// Creates a [TableTrDelegate].
  const TableTrDelegate();

  /// Builds the composition root.
  Widget root(TableTrContext context);
}

/// A [TableTr] widget resolved through [TableTrDelegate].
class TableTr extends StatelessWidget {
  /// Creates a [TableTr].
  const TableTr({super.key, required this.children, this.style})
    : variant = TableTrVariant.defaults;

  /// The visual variant selected by the constructor.
  final TableTrVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Style overrides merged over theme defaults.
  final TableTrStyle? style;

  /// Resolves properties and builds via [TableTrDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;

    const fromProps = TableTrStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TableTrState();
    final tableTrContext = TableTrContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
    );
    final delegate = MantleTheme.of(context).delegate<TableTrDelegate>();
    return delegate.root(tableTrContext);
  }
}

/// Visual variants of [TableTh].
enum TableThVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [TableTh].
@immutable
class TableThStyle {
  /// Creates a [TableThStyle].
  const TableThStyle();

  /// Returns a copy of this [TableThStyle] with selected fields replaced.
  TableThStyle copyWith() => this;

  /// Merges [other] over this [TableThStyle]; null fields keep this value.
  TableThStyle mergeWith(TableThStyle? other) => this;
}

/// Resolved interaction state for [TableTh].
@immutable
class TableThState {
  /// Creates a [TableThState].
  const TableThState();
}

/// Values passed to [TableThDelegate] slots during build.
@immutable
class TableThContext {
  /// Creates a [TableThContext].
  const TableThContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TableThStyle style;

  /// Resolved interaction state for this build.
  final TableThState state;

  /// The visual variant selected by the constructor.
  final TableThVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class TableThRoot {
  /// Creates a [TableThRoot] from a builder function.
  const TableThRoot(this._build);

  final Widget Function(TableThContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TableThContext context) => _build(context);
}

/// Theme-owned composition slots for [TableTh].
abstract class TableThDelegate extends ComponentDelegate {
  /// Creates a [TableThDelegate].
  const TableThDelegate();

  /// Builds the composition root.
  Widget root(TableThContext context);
}

/// A [TableTh] widget resolved through [TableThDelegate].
class TableTh extends StatelessWidget {
  /// Creates a [TableTh].
  const TableTh({super.key, required this.child, this.style})
    : variant = TableThVariant.defaults;

  /// The visual variant selected by the constructor.
  final TableThVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final TableThStyle? style;

  /// Resolves properties and builds via [TableThDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = TableThStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TableThState();
    final tableThContext = TableThContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<TableThDelegate>();
    return delegate.root(tableThContext);
  }
}

/// Visual variants of [TableTd].
enum TableTdVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [TableTd].
@immutable
class TableTdStyle {
  /// Creates a [TableTdStyle].
  const TableTdStyle();

  /// Returns a copy of this [TableTdStyle] with selected fields replaced.
  TableTdStyle copyWith() => this;

  /// Merges [other] over this [TableTdStyle]; null fields keep this value.
  TableTdStyle mergeWith(TableTdStyle? other) => this;
}

/// Resolved interaction state for [TableTd].
@immutable
class TableTdState {
  /// Creates a [TableTdState].
  const TableTdState();
}

/// Values passed to [TableTdDelegate] slots during build.
@immutable
class TableTdContext {
  /// Creates a [TableTdContext].
  const TableTdContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TableTdStyle style;

  /// Resolved interaction state for this build.
  final TableTdState state;

  /// The visual variant selected by the constructor.
  final TableTdVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class TableTdRoot {
  /// Creates a [TableTdRoot] from a builder function.
  const TableTdRoot(this._build);

  final Widget Function(TableTdContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TableTdContext context) => _build(context);
}

/// Theme-owned composition slots for [TableTd].
abstract class TableTdDelegate extends ComponentDelegate {
  /// Creates a [TableTdDelegate].
  const TableTdDelegate();

  /// Builds the composition root.
  Widget root(TableTdContext context);
}

/// A [TableTd] widget resolved through [TableTdDelegate].
class TableTd extends StatelessWidget {
  /// Creates a [TableTd].
  const TableTd({super.key, required this.child, this.style})
    : variant = TableTdVariant.defaults;

  /// The visual variant selected by the constructor.
  final TableTdVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final TableTdStyle? style;

  /// Resolves properties and builds via [TableTdDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = TableTdStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TableTdState();
    final tableTdContext = TableTdContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<TableTdDelegate>();
    return delegate.root(tableTdContext);
  }
}

/// Visual variants of [TableCaption].
enum TableCaptionVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [TableCaption].
@immutable
class TableCaptionStyle {
  /// Creates a [TableCaptionStyle].
  const TableCaptionStyle();

  /// Returns a copy of this [TableCaptionStyle] with selected fields replaced.
  TableCaptionStyle copyWith() => this;

  /// Merges [other] over this [TableCaptionStyle]; null fields keep this value.
  TableCaptionStyle mergeWith(TableCaptionStyle? other) => this;
}

/// Resolved interaction state for [TableCaption].
@immutable
class TableCaptionState {
  /// Creates a [TableCaptionState].
  const TableCaptionState();
}

/// Values passed to [TableCaptionDelegate] slots during build.
@immutable
class TableCaptionContext {
  /// Creates a [TableCaptionContext].
  const TableCaptionContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TableCaptionStyle style;

  /// Resolved interaction state for this build.
  final TableCaptionState state;

  /// The visual variant selected by the constructor.
  final TableCaptionVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class TableCaptionRoot {
  /// Creates a [TableCaptionRoot] from a builder function.
  const TableCaptionRoot(this._build);

  final Widget Function(TableCaptionContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TableCaptionContext context) => _build(context);
}

/// Theme-owned composition slots for [TableCaption].
abstract class TableCaptionDelegate extends ComponentDelegate {
  /// Creates a [TableCaptionDelegate].
  const TableCaptionDelegate();

  /// Builds the composition root.
  Widget root(TableCaptionContext context);
}

/// A [TableCaption] widget resolved through [TableCaptionDelegate].
class TableCaption extends StatelessWidget {
  /// Creates a [TableCaption].
  const TableCaption({super.key, required this.child, this.style})
    : variant = TableCaptionVariant.defaults;

  /// The visual variant selected by the constructor.
  final TableCaptionVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final TableCaptionStyle? style;

  /// Resolves properties and builds via [TableCaptionDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = TableCaptionStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TableCaptionState();
    final tableCaptionContext = TableCaptionContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<TableCaptionDelegate>();
    return delegate.root(tableCaptionContext);
  }
}

/// Visual variants of [TableScrollContainer].
enum TableScrollContainerVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [TableScrollContainer].
@immutable
class TableScrollContainerStyle {
  /// Creates a [TableScrollContainerStyle].
  const TableScrollContainerStyle();

  /// Returns a copy of this [TableScrollContainerStyle] with selected fields replaced.
  TableScrollContainerStyle copyWith() => this;

  /// Merges [other] over this [TableScrollContainerStyle]; null fields keep this value.
  TableScrollContainerStyle mergeWith(TableScrollContainerStyle? other) => this;
}

/// Resolved interaction state for [TableScrollContainer].
@immutable
class TableScrollContainerState {
  /// Creates a [TableScrollContainerState].
  const TableScrollContainerState();
}

/// Values passed to [TableScrollContainerDelegate] slots during build.
@immutable
class TableScrollContainerContext {
  /// Creates a [TableScrollContainerContext].
  const TableScrollContainerContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.minWidth,
    this.maxHeight,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TableScrollContainerStyle style;

  /// Resolved interaction state for this build.
  final TableScrollContainerState state;

  /// The visual variant selected by the constructor.
  final TableScrollContainerVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Minimum width in logical pixels.
  final double minWidth;

  /// Maximum height in logical pixels.
  final double? maxHeight;
}

/// Builder for the root slot.
class TableScrollContainerRoot {
  /// Creates a [TableScrollContainerRoot] from a builder function.
  const TableScrollContainerRoot(this._build);

  final Widget Function(TableScrollContainerContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TableScrollContainerContext context) => _build(context);
}

/// Theme-owned composition slots for [TableScrollContainer].
abstract class TableScrollContainerDelegate extends ComponentDelegate {
  /// Creates a [TableScrollContainerDelegate].
  const TableScrollContainerDelegate();

  /// Builds the composition root.
  Widget root(TableScrollContainerContext context);
}

/// A [TableScrollContainer] widget resolved through [TableScrollContainerDelegate].
class TableScrollContainer extends StatelessWidget {
  /// Creates a [TableScrollContainer].
  const TableScrollContainer({
    super.key,
    required this.child,
    required this.minWidth,
    this.maxHeight,
    this.style,
  }) : variant = TableScrollContainerVariant.defaults;

  /// The visual variant selected by the constructor.
  final TableScrollContainerVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Minimum width in logical pixels.
  final double minWidth;

  /// Maximum height in logical pixels.
  final double? maxHeight;

  /// Style overrides merged over theme defaults.
  final TableScrollContainerStyle? style;

  /// Resolves properties and builds via [TableScrollContainerDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedMinWidth = minWidth;
    final resolvedMaxHeight = maxHeight;

    const fromProps = TableScrollContainerStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TableScrollContainerState();
    final tableScrollContainerContext = TableScrollContainerContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      minWidth: resolvedMinWidth,
      maxHeight: resolvedMaxHeight,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<TableScrollContainerDelegate>();
    return delegate.root(tableScrollContainerContext);
  }
}
