import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_basic/src/widgets/typography/tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MListDelegate]: ordered/unordered column with [ListScope].
class BasicMListDelegate extends MListDelegate {
  /// Creates a baseline list delegate.
  const BasicMListDelegate();

  @override
  Widget root(MListContext context) {
    final theme = MantleTheme.of(context.context);
    final spacing = context.spacing == null
        ? 0.0
        : resolveSpacing(theme, context.spacing);
    return ListScope(
      type: context.type,
      center: context.center,
      icon: context.icon,
      spacing: spacing,
      size: context.size,
      withPadding: context.withPadding,
      child: DefaultTextStyle.merge(
        style: TextStyle(
          fontSize: fontSizeToken(theme, context.size),
          height: lineHeightToken(theme, context.size),
          color: textColor(context.context),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i = 0; i < context.children.length; i++) ...[
              if (i > 0) SizedBox(height: spacing),
              ListItemIndex(index: i, child: context.children[i]),
            ],
          ],
        ),
      ),
    );
  }
}

/// Baseline [ListItemDelegate]: bullet, number, or icon plus label.
class BasicListItemDelegate extends ListItemDelegate {
  /// Creates a baseline list-item delegate.
  const BasicListItemDelegate();

  @override
  Widget root(ListItemContext context) {
    final scope = ListScope.of(context.context);
    final theme = MantleTheme.of(context.context);
    final icon = context.icon ?? scope.icon;
    final index = ListItemIndex.maybeOf(context.context)?.index ?? 0;
    final markerGap = resolveSpacing(theme, 'sm');
    final startPadding =
        (icon == null ? resolveSpacing(theme, 'lg') : 0.0) +
        (scope.withPadding ? resolveSpacing(theme, 'md') : 0.0);

    final marker =
        icon ??
        (scope.type == ListType.ordered
            ? Text('${index + 1}.')
            : const Text('•'));

    return Padding(
      padding: EdgeInsetsDirectional.only(start: startPadding),
      child: Row(
        crossAxisAlignment: scope.center
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          marker,
          SizedBox(width: markerGap),
          Expanded(child: context.child),
        ],
      ),
    );
  }
}
