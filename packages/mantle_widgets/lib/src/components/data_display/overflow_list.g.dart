// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overflow_list.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [OverflowList].
enum OverflowListVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [OverflowList].
@immutable
class OverflowListStyle {
  /// Creates an [OverflowListStyle].
  const OverflowListStyle();

  /// Returns a copy of this [OverflowListStyle] with selected fields replaced.
  OverflowListStyle copyWith() => this;

  /// Merges [other] over this [OverflowListStyle]; null fields keep this value.
  OverflowListStyle mergeWith(OverflowListStyle? other) => this;
}

/// Resolved interaction state for [OverflowList].
@immutable
class OverflowListState {
  /// Creates an [OverflowListState].
  const OverflowListState();
}

/// Values passed to [OverflowListDelegate] slots during build.
@immutable
class OverflowListContext {
  /// Creates an [OverflowListContext].
  const OverflowListContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.renderOverflow,
    required this.gap,
    this.maxVisibleItems,
    required this.collapseFrom,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final OverflowListStyle style;

  /// Resolved interaction state for this build.
  final OverflowListState state;

  /// The visual variant selected by the constructor.
  final OverflowListVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The render overflow.
  final OverflowListOverflowBuilder renderOverflow;

  /// Spacing token between items.
  final double gap;

  /// The max visible items.
  final int? maxVisibleItems;

  /// The collapse from.
  final OverflowCollapseFrom collapseFrom;
}

/// Builder for the root slot.
class OverflowListRoot {
  /// Creates an [OverflowListRoot] from a builder function.
  const OverflowListRoot(this._build);

  final Widget Function(OverflowListContext context) _build;

  /// Invokes this slot with [context].
  Widget call(OverflowListContext context) => _build(context);
}

/// Theme-owned composition slots for [OverflowList].
abstract class OverflowListDelegate extends ComponentDelegate {
  /// Creates an [OverflowListDelegate].
  const OverflowListDelegate();

  /// Builds the composition root.
  Widget root(OverflowListContext context);
}

/// An [OverflowList] widget resolved through [OverflowListDelegate].
class OverflowList extends StatelessWidget {
  /// Creates an [OverflowList].
  const OverflowList({
    super.key,
    required this.children,
    required this.renderOverflow,
    this.gap,
    this.maxVisibleItems,
    this.collapseFrom,
    this.style,
  }) : variant = OverflowListVariant.defaults;

  /// The visual variant selected by the constructor.
  final OverflowListVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The render overflow.
  final OverflowListOverflowBuilder renderOverflow;

  /// Spacing token between items.
  final double? gap;

  /// The max visible items.
  final int? maxVisibleItems;

  /// The collapse from.
  final OverflowCollapseFrom? collapseFrom;

  /// Style overrides merged over theme defaults.
  final OverflowListStyle? style;

  /// Resolves properties and builds via [OverflowListDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedRenderOverflow = renderOverflow;
    final resolvedGap = gap ?? 4;
    final resolvedMaxVisibleItems = maxVisibleItems;
    final resolvedCollapseFrom = collapseFrom ?? OverflowCollapseFrom.end;

    const fromProps = OverflowListStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = OverflowListState();
    final overflowListContext = OverflowListContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      renderOverflow: resolvedRenderOverflow,
      gap: resolvedGap,
      maxVisibleItems: resolvedMaxVisibleItems,
      collapseFrom: resolvedCollapseFrom,
    );
    final delegate = MantleTheme.of(context).delegate<OverflowListDelegate>();
    return delegate.root(overflowListContext);
  }
}
