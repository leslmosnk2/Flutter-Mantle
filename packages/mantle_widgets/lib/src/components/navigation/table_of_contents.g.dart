// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_of_contents.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum TableOfContentsVariant { defaults }

@immutable
class TableOfContentsStyle {
  const TableOfContentsStyle();

  TableOfContentsStyle copyWith() => this;

  TableOfContentsStyle mergeWith(TableOfContentsStyle? other) => this;
}

@immutable
class TableOfContentsState {
  const TableOfContentsState();
}

@immutable
class TableOfContentsContext {
  const TableOfContentsContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.headings,
    this.active,
    this.onScrollTo,
    required this.minDepthToOffset,
    required this.depthOffset,
    required this.size,
    this.color,
  });

  final BuildContext context;
  final TableOfContentsStyle style;
  final TableOfContentsState state;
  final TableOfContentsVariant variant;
  final List<TocHeading> headings;
  final String? active;
  final TocOnScrollTo? onScrollTo;
  final int minDepthToOffset;
  final double depthOffset;
  final String size;
  final String? color;
}

class TableOfContentsRoot {
  const TableOfContentsRoot(this._build);

  final Widget Function(TableOfContentsContext context) _build;

  Widget call(TableOfContentsContext context) => _build(context);
}

abstract class TableOfContentsDelegate extends ComponentDelegate {
  const TableOfContentsDelegate();

  Widget root(TableOfContentsContext context);
}

class TableOfContents extends StatelessWidget {
  const TableOfContents({
    super.key,
    required this.headings,
    this.active,
    this.onScrollTo,
    this.minDepthToOffset,
    this.depthOffset,
    this.size,
    this.color,
    this.style,
  }) : variant = TableOfContentsVariant.defaults;

  final TableOfContentsVariant variant;
  final List<TocHeading> headings;
  final String? active;
  final TocOnScrollTo? onScrollTo;
  final int? minDepthToOffset;
  final double? depthOffset;
  final String? size;
  final String? color;
  final TableOfContentsStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedHeadings = headings;
    final resolvedActive = active;
    final resolvedOnScrollTo = onScrollTo;
    final resolvedMinDepthToOffset = minDepthToOffset ?? 1;
    final resolvedDepthOffset = depthOffset ?? 20;
    final resolvedSize = size ?? 'md';
    final resolvedColor = color;

    const fromProps = TableOfContentsStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TableOfContentsState();
    final tableOfContentsContext = TableOfContentsContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      headings: resolvedHeadings,
      active: resolvedActive,
      onScrollTo: resolvedOnScrollTo,
      minDepthToOffset: resolvedMinDepthToOffset,
      depthOffset: resolvedDepthOffset,
      size: resolvedSize,
      color: resolvedColor,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<TableOfContentsDelegate>();
    return delegate.root(tableOfContentsContext);
  }
}
