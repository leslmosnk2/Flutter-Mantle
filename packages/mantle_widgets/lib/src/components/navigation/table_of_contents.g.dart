// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_of_contents.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [TableOfContents].
enum TableOfContentsVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [TableOfContents].
@immutable
class TableOfContentsStyle {
  /// Creates a [TableOfContentsStyle].
  const TableOfContentsStyle();

  /// Returns a copy of this [TableOfContentsStyle] with selected fields replaced.
  TableOfContentsStyle copyWith() => this;

  /// Merges [other] over this [TableOfContentsStyle]; null fields keep this value.
  TableOfContentsStyle mergeWith(TableOfContentsStyle? other) => this;
}

/// Resolved interaction state for [TableOfContents].
@immutable
class TableOfContentsState {
  /// Creates a [TableOfContentsState].
  const TableOfContentsState();
}

/// Values passed to [TableOfContentsDelegate] slots during build.
@immutable
class TableOfContentsContext {
  /// Creates a [TableOfContentsContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TableOfContentsStyle style;

  /// Resolved interaction state for this build.
  final TableOfContentsState state;

  /// The visual variant selected by the constructor.
  final TableOfContentsVariant variant;

  /// The headings.
  final List<TocHeading> headings;

  /// Whether this item is the active option.
  final String? active;

  /// Called when scroll to.
  final TocOnScrollTo? onScrollTo;

  /// The min depth to offset.
  final int minDepthToOffset;

  /// The depth offset.
  final double depthOffset;

  /// Size token.
  final String size;

  /// Foreground or accent color.
  final String? color;
}

/// Builder for the root slot.
class TableOfContentsRoot {
  /// Creates a [TableOfContentsRoot] from a builder function.
  const TableOfContentsRoot(this._build);

  final Widget Function(TableOfContentsContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TableOfContentsContext context) => _build(context);
}

/// Theme-owned composition slots for [TableOfContents].
abstract class TableOfContentsDelegate extends ComponentDelegate {
  /// Creates a [TableOfContentsDelegate].
  const TableOfContentsDelegate();

  /// Builds the composition root.
  Widget root(TableOfContentsContext context);
}

/// A [TableOfContents] widget resolved through [TableOfContentsDelegate].
class TableOfContents extends StatelessWidget {
  /// Creates a [TableOfContents].
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

  /// The visual variant selected by the constructor.
  final TableOfContentsVariant variant;

  /// The headings.
  final List<TocHeading> headings;

  /// Whether this item is the active option.
  final String? active;

  /// Called when scroll to.
  final TocOnScrollTo? onScrollTo;

  /// The min depth to offset.
  final int? minDepthToOffset;

  /// The depth offset.
  final double? depthOffset;

  /// Size token.
  final String? size;

  /// Foreground or accent color.
  final String? color;

  /// Style overrides merged over theme defaults.
  final TableOfContentsStyle? style;

  /// Resolves properties and builds via [TableOfContentsDelegate].
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
