// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overflow_list.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum OverflowListVariant { defaults }

@immutable
class OverflowListStyle {
  const OverflowListStyle();

  OverflowListStyle copyWith() => this;

  OverflowListStyle mergeWith(OverflowListStyle? other) => this;
}

@immutable
class OverflowListState {
  const OverflowListState();
}

@immutable
class OverflowListContext {
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

  final BuildContext context;
  final OverflowListStyle style;
  final OverflowListState state;
  final OverflowListVariant variant;
  final List<Widget> children;
  final OverflowListOverflowBuilder renderOverflow;
  final double gap;
  final int? maxVisibleItems;
  final OverflowCollapseFrom collapseFrom;
}

class OverflowListRoot {
  const OverflowListRoot(this._build);

  final Widget Function(OverflowListContext context) _build;

  Widget call(OverflowListContext context) => _build(context);
}

abstract class OverflowListDelegate extends ComponentDelegate {
  const OverflowListDelegate();

  Widget root(OverflowListContext context);
}

class OverflowList extends StatelessWidget {
  const OverflowList({
    super.key,
    required this.children,
    required this.renderOverflow,
    this.gap,
    this.maxVisibleItems,
    this.collapseFrom,
    this.style,
  }) : variant = OverflowListVariant.defaults;

  final OverflowListVariant variant;
  final List<Widget> children;
  final OverflowListOverflowBuilder renderOverflow;
  final double? gap;
  final int? maxVisibleItems;
  final OverflowCollapseFrom? collapseFrom;
  final OverflowListStyle? style;

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
