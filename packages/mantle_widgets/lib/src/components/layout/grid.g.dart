// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Grid].
enum GridVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Grid].
@immutable
class GridStyle {
  /// Creates a [GridStyle].
  const GridStyle();

  /// Returns a copy of this [GridStyle] with selected fields replaced.
  GridStyle copyWith() => this;

  /// Merges [other] over this [GridStyle]; null fields keep this value.
  GridStyle mergeWith(GridStyle? other) => this;
}

/// Resolved interaction state for [Grid].
@immutable
class GridState {
  /// Creates a [GridState].
  const GridState();
}

/// Values passed to [GridDelegate] slots during build.
@immutable
class GridContext {
  /// Creates a [GridContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final GridStyle style;

  /// Resolved interaction state for this build.
  final GridState state;

  /// The visual variant selected by the constructor.
  final GridVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The gutter.
  final String gutter;

  /// Whether the control expands to fill available width.
  final bool grow;

  /// The justify.
  final MainAxisAlignment justify;

  /// Text alignment.
  final CrossAxisAlignment align;

  /// The columns.
  final int columns;
}

/// Builder for the root slot.
class GridRoot {
  /// Creates a [GridRoot] from a builder function.
  const GridRoot(this._build);

  final Widget Function(GridContext context) _build;

  /// Invokes this slot with [context].
  Widget call(GridContext context) => _build(context);
}

/// Theme-owned composition slots for [Grid].
abstract class GridDelegate extends ComponentDelegate {
  /// Creates a [GridDelegate].
  const GridDelegate();

  /// Builds the composition root.
  Widget root(GridContext context);
}

/// A [Grid] widget resolved through [GridDelegate].
class Grid extends StatelessWidget {
  /// Creates a [Grid].
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

  /// The visual variant selected by the constructor.
  final GridVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The gutter.
  final String? gutter;

  /// Whether the control expands to fill available width.
  final bool? grow;

  /// The justify.
  final MainAxisAlignment? justify;

  /// Text alignment.
  final CrossAxisAlignment? align;

  /// The columns.
  final int? columns;

  /// Style overrides merged over theme defaults.
  final GridStyle? style;

  /// Resolves properties and builds via [GridDelegate].
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

/// Visual variants of [GridCol].
enum GridColVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [GridCol].
@immutable
class GridColStyle {
  /// Creates a [GridColStyle].
  const GridColStyle();

  /// Returns a copy of this [GridColStyle] with selected fields replaced.
  GridColStyle copyWith() => this;

  /// Merges [other] over this [GridColStyle]; null fields keep this value.
  GridColStyle mergeWith(GridColStyle? other) => this;
}

/// Resolved interaction state for [GridCol].
@immutable
class GridColState {
  /// Creates a [GridColState].
  const GridColState();
}

/// Values passed to [GridColDelegate] slots during build.
@immutable
class GridColContext {
  /// Creates a [GridColContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final GridColStyle style;

  /// Resolved interaction state for this build.
  final GridColState state;

  /// The visual variant selected by the constructor.
  final GridColVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether to render as an inline span.
  final int span;

  /// The span fit.
  final GridColFit? spanFit;

  /// The offset.
  final int offset;

  /// Heading level from 1 to 6.
  final int? order;

  /// The responsive span.
  final MantleResponsive<int>? responsiveSpan;
}

/// Builder for the root slot.
class GridColRoot {
  /// Creates a [GridColRoot] from a builder function.
  const GridColRoot(this._build);

  final Widget Function(GridColContext context) _build;

  /// Invokes this slot with [context].
  Widget call(GridColContext context) => _build(context);
}

/// Theme-owned composition slots for [GridCol].
abstract class GridColDelegate extends ComponentDelegate {
  /// Creates a [GridColDelegate].
  const GridColDelegate();

  /// Builds the composition root.
  Widget root(GridColContext context);
}

/// A [GridCol] widget resolved through [GridColDelegate].
class GridCol extends StatelessWidget {
  /// Creates a [GridCol].
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

  /// The visual variant selected by the constructor.
  final GridColVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether to render as an inline span.
  final int? span;

  /// The span fit.
  final GridColFit? spanFit;

  /// The offset.
  final int? offset;

  /// Heading level from 1 to 6.
  final int? order;

  /// The responsive span.
  final MantleResponsive<int>? responsiveSpan;

  /// Style overrides merged over theme defaults.
  final GridColStyle? style;

  /// Resolves properties and builds via [GridColDelegate].
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
