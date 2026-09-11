import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [GroupDelegate]: a wrapping horizontal cluster.
class BasicGroupDelegate extends GroupDelegate {
  /// Creates a baseline group delegate.
  const BasicGroupDelegate();

  @override
  Widget root(GroupContext context) {
    final theme = MantleTheme.of(context.context);
    final gap = resolveSpacing(theme, context.gap);

    if (context.grow) {
      return LayoutBuilder(
        builder: (_, constraints) {
          final count = context.children.length;
          if (count == 0) {
            return const SizedBox.shrink();
          }
          if (!context.wrap) {
            return Row(
              mainAxisAlignment: context.justify,
              crossAxisAlignment: context.align,
              children: [
                for (var i = 0; i < count; i++) ...[
                  if (i > 0) SizedBox(width: gap),
                  Expanded(child: context.children[i]),
                ],
              ],
            );
          }
          final maxWidth = constraints.maxWidth.isFinite
              ? constraints.maxWidth
              : 0.0;
          final childWidth = (maxWidth - gap * (count - 1)) / count;
          return Wrap(
            spacing: gap,
            runSpacing: gap,
            alignment: _wrapAlignment(context.justify),
            crossAxisAlignment: _wrapCross(context.align),
            children: [
              for (final child in context.children)
                SizedBox(width: childWidth, child: child),
            ],
          );
        },
      );
    }

    if (!context.wrap) {
      return Row(
        mainAxisAlignment: context.justify,
        crossAxisAlignment: context.align,
        children: childrenWithGap(
          context.children,
          gap,
          axis: Axis.horizontal,
        ),
      );
    }

    return Wrap(
      spacing: gap,
      runSpacing: gap,
      alignment: _wrapAlignment(context.justify),
      crossAxisAlignment: _wrapCross(context.align),
      children: context.children,
    );
  }
}

WrapAlignment _wrapAlignment(MainAxisAlignment justify) {
  return switch (justify) {
    MainAxisAlignment.start => WrapAlignment.start,
    MainAxisAlignment.end => WrapAlignment.end,
    MainAxisAlignment.center => WrapAlignment.center,
    MainAxisAlignment.spaceBetween => WrapAlignment.spaceBetween,
    MainAxisAlignment.spaceAround => WrapAlignment.spaceAround,
    MainAxisAlignment.spaceEvenly => WrapAlignment.spaceEvenly,
  };
}

WrapCrossAlignment _wrapCross(CrossAxisAlignment align) {
  return switch (align) {
    CrossAxisAlignment.start => WrapCrossAlignment.start,
    CrossAxisAlignment.end => WrapCrossAlignment.end,
    CrossAxisAlignment.center => WrapCrossAlignment.center,
    CrossAxisAlignment.stretch ||
    CrossAxisAlignment.baseline => WrapCrossAlignment.start,
  };
}
