// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum GridVariant { defaults }

@immutable
class GridStyle {
  const GridStyle();

  GridStyle copyWith() => this;

  GridStyle mergeWith(GridStyle? other) => this;
}

@immutable
class GridState {
  const GridState();
}

@immutable
class GridContext {
  const GridContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.gutter,
    required this.grow,
    required this.justify,
    required this.align,
    required this.columns,
  });

  final BuildContext context;
  final GridStyle style;
  final GridState state;
  final GridVariant variant;
  final List<Widget> children;
  final String gutter;
  final bool grow;
  final MainAxisAlignment justify;
  final CrossAxisAlignment align;
  final int columns;
}

class GridRoot {
  const GridRoot(this._build);

  final Widget Function(GridContext context) _build;

  Widget call(GridContext context) => _build(context);
}

abstract class GridDelegate extends ComponentDelegate {
  const GridDelegate();

  Widget root(GridContext context);
}

class Grid extends StatelessWidget {
  const Grid({
    super.key,
    required this.children,
    this.gutter,
    this.grow,
    this.justify,
    this.align,
    this.columns,
    this.style,
  }) : variant = GridVariant.defaults;

  final GridVariant variant;
  final List<Widget> children;
  final String? gutter;
  final bool? grow;
  final MainAxisAlignment? justify;
  final CrossAxisAlignment? align;
  final int? columns;
  final GridStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedGutter = gutter ?? 'md';
    final resolvedGrow = grow ?? false;
    final resolvedJustify = justify ?? MainAxisAlignment.start;
    final resolvedAlign = align ?? CrossAxisAlignment.stretch;
    final resolvedColumns = columns ?? 12;

    const fromProps = GridStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = GridState();
    final gridContext = GridContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      gutter: resolvedGutter,
      grow: resolvedGrow,
      justify: resolvedJustify,
      align: resolvedAlign,
      columns: resolvedColumns,
    );
    final delegate = MantleTheme.of(context).delegate<GridDelegate>();
    return delegate.root(gridContext);
  }
}

enum GridColVariant { defaults }

@immutable
class GridColStyle {
  const GridColStyle();

  GridColStyle copyWith() => this;

  GridColStyle mergeWith(GridColStyle? other) => this;
}

@immutable
class GridColState {
  const GridColState();
}

@immutable
class GridColContext {
  const GridColContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.span,
    this.spanFit,
    required this.offset,
    this.order,
    this.responsiveSpan,
  });

  final BuildContext context;
  final GridColStyle style;
  final GridColState state;
  final GridColVariant variant;
  final Widget child;
  final int span;
  final GridColFit? spanFit;
  final int offset;
  final int? order;
  final MantleResponsive<int>? responsiveSpan;
}

class GridColRoot {
  const GridColRoot(this._build);

  final Widget Function(GridColContext context) _build;

  Widget call(GridColContext context) => _build(context);
}

abstract class GridColDelegate extends ComponentDelegate {
  const GridColDelegate();

  Widget root(GridColContext context);
}

class GridCol extends StatelessWidget {
  const GridCol({
    super.key,
    required this.child,
    this.span,
    this.spanFit,
    this.offset,
    this.order,
    this.responsiveSpan,
    this.style,
  }) : variant = GridColVariant.defaults;

  final GridColVariant variant;
  final Widget child;
  final int? span;
  final GridColFit? spanFit;
  final int? offset;
  final int? order;
  final MantleResponsive<int>? responsiveSpan;
  final GridColStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedSpan = span ?? 12;
    final resolvedSpanFit = spanFit;
    final resolvedOffset = offset ?? 0;
    final resolvedOrder = order;
    final resolvedResponsiveSpan = responsiveSpan;

    const fromProps = GridColStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = GridColState();
    final gridColContext = GridColContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      span: resolvedSpan,
      spanFit: resolvedSpanFit,
      offset: resolvedOffset,
      order: resolvedOrder,
      responsiveSpan: resolvedResponsiveSpan,
    );
    final delegate = MantleTheme.of(context).delegate<GridColDelegate>();
    return delegate.root(gridColContext);
  }
}
