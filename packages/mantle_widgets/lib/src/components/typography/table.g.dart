// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MTableVariant { defaults }

@immutable
class MTableStyle {
  const MTableStyle();

  MTableStyle copyWith() => this;

  MTableStyle mergeWith(MTableStyle? other) => this;
}

@immutable
class MTableState {
  const MTableState();
}

@immutable
class MTableContext {
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

  final BuildContext context;
  final MTableStyle style;
  final MTableState state;
  final MTableVariant variant;
  final List<Widget>? children;
  final TableData? data;
  final bool withTableBorder;
  final bool withColumnBorders;
  final bool withRowBorders;
  final bool striped;
  final TableStriped? stripedFrom;
  final bool highlightOnHover;
  final String horizontalSpacing;
  final String verticalSpacing;
  final bool stickyHeader;
  final TableCaptionSide captionSide;
  final bool tabularNums;
  final String? borderColor;
  final String? stripedColor;
  final String? highlightOnHoverColor;
}

class MTableRoot {
  const MTableRoot(this._build);

  final Widget Function(MTableContext context) _build;

  Widget call(MTableContext context) => _build(context);
}

abstract class MTableDelegate extends ComponentDelegate {
  const MTableDelegate();

  Widget root(MTableContext context);
}

class MTable extends StatelessWidget {
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

  final MTableVariant variant;
  final List<Widget>? children;
  final TableData? data;
  final bool? withTableBorder;
  final bool? withColumnBorders;
  final bool? withRowBorders;
  final bool? striped;
  final TableStriped? stripedFrom;
  final bool? highlightOnHover;
  final String? horizontalSpacing;
  final String? verticalSpacing;
  final bool? stickyHeader;
  final TableCaptionSide? captionSide;
  final bool? tabularNums;
  final String? borderColor;
  final String? stripedColor;
  final String? highlightOnHoverColor;
  final MTableStyle? style;

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

enum TableTheadVariant { defaults }

@immutable
class TableTheadStyle {
  const TableTheadStyle();

  TableTheadStyle copyWith() => this;

  TableTheadStyle mergeWith(TableTheadStyle? other) => this;
}

@immutable
class TableTheadState {
  const TableTheadState();
}

@immutable
class TableTheadContext {
  const TableTheadContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  final BuildContext context;
  final TableTheadStyle style;
  final TableTheadState state;
  final TableTheadVariant variant;
  final List<Widget> children;
}

class TableTheadRoot {
  const TableTheadRoot(this._build);

  final Widget Function(TableTheadContext context) _build;

  Widget call(TableTheadContext context) => _build(context);
}

abstract class TableTheadDelegate extends ComponentDelegate {
  const TableTheadDelegate();

  Widget root(TableTheadContext context);
}

class TableThead extends StatelessWidget {
  const TableThead({super.key, required this.children, this.style})
    : variant = TableTheadVariant.defaults;

  final TableTheadVariant variant;
  final List<Widget> children;
  final TableTheadStyle? style;

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

enum TableTbodyVariant { defaults }

@immutable
class TableTbodyStyle {
  const TableTbodyStyle();

  TableTbodyStyle copyWith() => this;

  TableTbodyStyle mergeWith(TableTbodyStyle? other) => this;
}

@immutable
class TableTbodyState {
  const TableTbodyState();
}

@immutable
class TableTbodyContext {
  const TableTbodyContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  final BuildContext context;
  final TableTbodyStyle style;
  final TableTbodyState state;
  final TableTbodyVariant variant;
  final List<Widget> children;
}

class TableTbodyRoot {
  const TableTbodyRoot(this._build);

  final Widget Function(TableTbodyContext context) _build;

  Widget call(TableTbodyContext context) => _build(context);
}

abstract class TableTbodyDelegate extends ComponentDelegate {
  const TableTbodyDelegate();

  Widget root(TableTbodyContext context);
}

class TableTbody extends StatelessWidget {
  const TableTbody({super.key, required this.children, this.style})
    : variant = TableTbodyVariant.defaults;

  final TableTbodyVariant variant;
  final List<Widget> children;
  final TableTbodyStyle? style;

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

enum TableTfootVariant { defaults }

@immutable
class TableTfootStyle {
  const TableTfootStyle();

  TableTfootStyle copyWith() => this;

  TableTfootStyle mergeWith(TableTfootStyle? other) => this;
}

@immutable
class TableTfootState {
  const TableTfootState();
}

@immutable
class TableTfootContext {
  const TableTfootContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  final BuildContext context;
  final TableTfootStyle style;
  final TableTfootState state;
  final TableTfootVariant variant;
  final List<Widget> children;
}

class TableTfootRoot {
  const TableTfootRoot(this._build);

  final Widget Function(TableTfootContext context) _build;

  Widget call(TableTfootContext context) => _build(context);
}

abstract class TableTfootDelegate extends ComponentDelegate {
  const TableTfootDelegate();

  Widget root(TableTfootContext context);
}

class TableTfoot extends StatelessWidget {
  const TableTfoot({super.key, required this.children, this.style})
    : variant = TableTfootVariant.defaults;

  final TableTfootVariant variant;
  final List<Widget> children;
  final TableTfootStyle? style;

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

enum TableTrVariant { defaults }

@immutable
class TableTrStyle {
  const TableTrStyle();

  TableTrStyle copyWith() => this;

  TableTrStyle mergeWith(TableTrStyle? other) => this;
}

@immutable
class TableTrState {
  const TableTrState();
}

@immutable
class TableTrContext {
  const TableTrContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  final BuildContext context;
  final TableTrStyle style;
  final TableTrState state;
  final TableTrVariant variant;
  final List<Widget> children;
}

class TableTrRoot {
  const TableTrRoot(this._build);

  final Widget Function(TableTrContext context) _build;

  Widget call(TableTrContext context) => _build(context);
}

abstract class TableTrDelegate extends ComponentDelegate {
  const TableTrDelegate();

  Widget root(TableTrContext context);
}

class TableTr extends StatelessWidget {
  const TableTr({super.key, required this.children, this.style})
    : variant = TableTrVariant.defaults;

  final TableTrVariant variant;
  final List<Widget> children;
  final TableTrStyle? style;

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

enum TableThVariant { defaults }

@immutable
class TableThStyle {
  const TableThStyle();

  TableThStyle copyWith() => this;

  TableThStyle mergeWith(TableThStyle? other) => this;
}

@immutable
class TableThState {
  const TableThState();
}

@immutable
class TableThContext {
  const TableThContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final TableThStyle style;
  final TableThState state;
  final TableThVariant variant;
  final Widget child;
}

class TableThRoot {
  const TableThRoot(this._build);

  final Widget Function(TableThContext context) _build;

  Widget call(TableThContext context) => _build(context);
}

abstract class TableThDelegate extends ComponentDelegate {
  const TableThDelegate();

  Widget root(TableThContext context);
}

class TableTh extends StatelessWidget {
  const TableTh({super.key, required this.child, this.style})
    : variant = TableThVariant.defaults;

  final TableThVariant variant;
  final Widget child;
  final TableThStyle? style;

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

enum TableTdVariant { defaults }

@immutable
class TableTdStyle {
  const TableTdStyle();

  TableTdStyle copyWith() => this;

  TableTdStyle mergeWith(TableTdStyle? other) => this;
}

@immutable
class TableTdState {
  const TableTdState();
}

@immutable
class TableTdContext {
  const TableTdContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final TableTdStyle style;
  final TableTdState state;
  final TableTdVariant variant;
  final Widget child;
}

class TableTdRoot {
  const TableTdRoot(this._build);

  final Widget Function(TableTdContext context) _build;

  Widget call(TableTdContext context) => _build(context);
}

abstract class TableTdDelegate extends ComponentDelegate {
  const TableTdDelegate();

  Widget root(TableTdContext context);
}

class TableTd extends StatelessWidget {
  const TableTd({super.key, required this.child, this.style})
    : variant = TableTdVariant.defaults;

  final TableTdVariant variant;
  final Widget child;
  final TableTdStyle? style;

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

enum TableCaptionVariant { defaults }

@immutable
class TableCaptionStyle {
  const TableCaptionStyle();

  TableCaptionStyle copyWith() => this;

  TableCaptionStyle mergeWith(TableCaptionStyle? other) => this;
}

@immutable
class TableCaptionState {
  const TableCaptionState();
}

@immutable
class TableCaptionContext {
  const TableCaptionContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final TableCaptionStyle style;
  final TableCaptionState state;
  final TableCaptionVariant variant;
  final Widget child;
}

class TableCaptionRoot {
  const TableCaptionRoot(this._build);

  final Widget Function(TableCaptionContext context) _build;

  Widget call(TableCaptionContext context) => _build(context);
}

abstract class TableCaptionDelegate extends ComponentDelegate {
  const TableCaptionDelegate();

  Widget root(TableCaptionContext context);
}

class TableCaption extends StatelessWidget {
  const TableCaption({super.key, required this.child, this.style})
    : variant = TableCaptionVariant.defaults;

  final TableCaptionVariant variant;
  final Widget child;
  final TableCaptionStyle? style;

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

enum TableScrollContainerVariant { defaults }

@immutable
class TableScrollContainerStyle {
  const TableScrollContainerStyle();

  TableScrollContainerStyle copyWith() => this;

  TableScrollContainerStyle mergeWith(TableScrollContainerStyle? other) => this;
}

@immutable
class TableScrollContainerState {
  const TableScrollContainerState();
}

@immutable
class TableScrollContainerContext {
  const TableScrollContainerContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.minWidth,
    this.maxHeight,
  });

  final BuildContext context;
  final TableScrollContainerStyle style;
  final TableScrollContainerState state;
  final TableScrollContainerVariant variant;
  final Widget child;
  final double minWidth;
  final double? maxHeight;
}

class TableScrollContainerRoot {
  const TableScrollContainerRoot(this._build);

  final Widget Function(TableScrollContainerContext context) _build;

  Widget call(TableScrollContainerContext context) => _build(context);
}

abstract class TableScrollContainerDelegate extends ComponentDelegate {
  const TableScrollContainerDelegate();

  Widget root(TableScrollContainerContext context);
}

class TableScrollContainer extends StatelessWidget {
  const TableScrollContainer({
    super.key,
    required this.child,
    required this.minWidth,
    this.maxHeight,
    this.style,
  }) : variant = TableScrollContainerVariant.defaults;

  final TableScrollContainerVariant variant;
  final Widget child;
  final double minWidth;
  final double? maxHeight;
  final TableScrollContainerStyle? style;

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
