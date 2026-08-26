import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/navigation/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/navigation.dart';

/// Control box sizes for Pagination size tokens, matching Mantine CSS.
const Map<String, double> kPaginationControlSizes = {
  'xs': 22,
  'sm': 26,
  'md': 32,
  'lg': 38,
  'xl': 44,
};

/// Mantine `use-pagination` range: page numbers with `null` for dots.
List<int?> paginationRange({
  required int total,
  required int active,
  required int siblings,
  required int boundaries,
}) {
  final pages = math.max(total, 0);
  if (pages == 0) {
    return const [];
  }
  List<int?> span(int start, int end) {
    if (end < start) {
      return const [];
    }
    return [for (var i = start; i <= end; i++) i];
  }

  final totalPageNumbers = siblings * 2 + 3 + boundaries * 2;
  if (totalPageNumbers >= pages) {
    return span(1, pages);
  }

  final leftSibling = math.max(active - siblings, boundaries);
  final rightSibling = math.min(active + siblings, pages - boundaries);
  final showLeftDots = leftSibling > boundaries + 2;
  final showRightDots = rightSibling < pages - (boundaries + 1);

  if (!showLeftDots && showRightDots) {
    final leftCount = siblings * 2 + boundaries + 2;
    return [
      ...span(1, leftCount),
      null,
      ...span(pages - (boundaries - 1), pages),
    ];
  }
  if (showLeftDots && !showRightDots) {
    final rightCount = boundaries + 1 + 2 * siblings;
    return [...span(1, boundaries), null, ...span(pages - rightCount, pages)];
  }
  return [
    ...span(1, boundaries),
    null,
    ...span(leftSibling, rightSibling),
    null,
    ...span(pages - boundaries + 1, pages),
  ];
}

/// Baseline [PaginationDelegate]: a controlled page-number row.
class BasicPaginationDelegate extends PaginationDelegate {
  /// Creates a baseline pagination delegate.
  const BasicPaginationDelegate();

  @override
  Widget root(PaginationContext context) {
    final total = context.total;
    if (total <= 0 || (context.hideWithOnePage && total == 1)) {
      return const SizedBox.shrink();
    }

    final active = context.value.clamp(1, total);
    final disabled = context.disabled;

    void go(int page) {
      if (disabled) {
        return;
      }
      final next = page.clamp(1, total);
      if (next != active) {
        context.onChange?.call(next);
      }
    }

    final items = <Widget>[
      if (context.withEdges)
        PaginationControl(
          disabled: disabled || active <= 1,
          onPressed: () => go(1),
          child: const Text('«'),
        ),
      if (context.withControls)
        PaginationControl(
          disabled: disabled || active <= 1,
          onPressed: () => go(active - 1),
          child: const Text('‹'),
        ),
      if (context.withPages)
        for (final page in paginationRange(
          total: total,
          active: active,
          siblings: context.siblings,
          boundaries: context.boundaries,
        ))
          if (page == null)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Text('…'),
            )
          else
            PaginationControl(
              active: page == active,
              disabled: disabled,
              onPressed: () => go(page),
              child: Text('$page'),
            ),
      if (context.withControls)
        PaginationControl(
          disabled: disabled || active >= total,
          onPressed: () => go(active + 1),
          child: const Text('›'),
        ),
      if (context.withEdges)
        PaginationControl(
          disabled: disabled || active >= total,
          onPressed: () => go(total),
          child: const Text('»'),
        ),
    ];

    return PaginationScope(
      total: total,
      value: active,
      onChange: context.onChange,
      disabled: disabled,
      size: context.size,
      color: context.color,
      child: Wrap(
        spacing: context.gap,
        runSpacing: context.gap,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: items,
      ),
    );
  }
}

/// Baseline [PaginationControlDelegate]: a square page button.
class BasicPaginationControlDelegate extends PaginationControlDelegate {
  /// Creates a baseline pagination-control delegate.
  const BasicPaginationControlDelegate();

  @override
  Widget root(PaginationControlContext context) {
    final scope = PaginationScope.maybeOf(context.context);
    final theme = MantleTheme.of(context.context);
    final sizeToken = scope?.size ?? 'md';
    final box =
        kPaginationControlSizes[sizeToken] ?? kPaginationControlSizes['md']!;
    final disabled = context.disabled || (scope?.disabled ?? false);
    final active = context.active;
    final activeFill = resolveNamedColor(
      context.context,
      scope?.color,
    );
    final border = schemeBorder(context.context);
    final fg = schemeForeground(context.context);
    final radius = BorderRadius.all(theme.resolvedDefaultRadius);

    final background = active ? activeFill : theme.white;
    final foreground = active ? theme.white : fg;
    final borderColor = active ? activeFill : border;
    final pad = context.withPadding ? box / 4 : 0.0;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: disabled ? null : context.onPressed,
      child: Opacity(
        opacity: disabled ? 0.4 : 1,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: background,
            border: Border.all(color: borderColor),
            borderRadius: radius,
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: box, minHeight: box),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: pad),
              child: Center(
                child: DefaultTextStyle.merge(
                  style: TextStyle(
                    color: foreground,
                    fontSize: resolveFontSize(theme, sizeToken),
                    height: 1,
                  ),
                  child: context.child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
