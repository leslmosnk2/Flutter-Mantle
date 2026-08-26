import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [OverflowListDelegate]: cap visible children, then overflow.
class BasicOverflowListDelegate extends OverflowListDelegate {
  /// Creates a baseline overflow-list delegate.
  const BasicOverflowListDelegate();

  @override
  Widget root(OverflowListContext context) {
    final items = context.children;
    final maxVisible = context.maxVisibleItems;
    final hidden = maxVisible == null
        ? 0
        : (items.length - maxVisible).clamp(0, items.length);
    final visibleCount = items.length - hidden;
    final visible = hidden == 0
        ? items
        : (context.collapseFrom == OverflowCollapseFrom.start
              ? items.sublist(items.length - visibleCount)
              : items.sublist(0, visibleCount));
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (hidden > 0 &&
            context.collapseFrom == OverflowCollapseFrom.start) ...[
          context.renderOverflow(hidden),
          SizedBox(width: context.gap),
        ],
        for (var i = 0; i < visible.length; i++) ...[
          if (i > 0) SizedBox(width: context.gap),
          visible[i],
        ],
        if (hidden > 0 && context.collapseFrom == OverflowCollapseFrom.end) ...[
          SizedBox(width: context.gap),
          context.renderOverflow(hidden),
        ],
      ],
    );
  }
}
