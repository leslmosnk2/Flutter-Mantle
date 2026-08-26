import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MFlexDelegate]: Flutter [Flex] or [Wrap] with token gaps.
class BasicMFlexDelegate extends MFlexDelegate {
  /// Creates a baseline flex delegate.
  const BasicMFlexDelegate();

  @override
  Widget root(MFlexContext context) {
    final theme = MantleTheme.of(context.context);
    final columnGap =
        tryResolveSpacing(theme, context.columnGap) ??
        tryResolveSpacing(theme, context.gap) ??
        0;
    final rowGap =
        tryResolveSpacing(theme, context.rowGap) ??
        tryResolveSpacing(theme, context.gap) ??
        0;

    if (context.wrap) {
      return Wrap(
        direction: context.direction,
        spacing: context.direction == Axis.horizontal ? columnGap : rowGap,
        runSpacing: context.direction == Axis.horizontal ? rowGap : columnGap,
        alignment: _wrapAlignment(context.justify),
        crossAxisAlignment: _wrapCross(context.align),
        children: context.children,
      );
    }

    return Flex(
      direction: context.direction,
      mainAxisAlignment: context.justify,
      crossAxisAlignment: context.align,
      children: childrenWithGap(
        context.children,
        context.direction == Axis.horizontal ? columnGap : rowGap,
        axis: context.direction,
      ),
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
