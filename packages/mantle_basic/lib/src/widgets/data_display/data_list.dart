import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/data_display/tokens.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [DataListDelegate]: description list.
class BasicDataListDelegate extends DataListDelegate {
  /// Creates a baseline data-list delegate.
  const BasicDataListDelegate();

  @override
  Widget root(DataListContext context) {
    final theme = MantleTheme.of(context.context);
    final gap = resolveSpacing(theme, context.gap, fallback: 'sm');
    return DataListScope(
      orientation: context.orientation,
      withDivider: context.withDivider,
      gap: gap,
      labelWidth: context.labelWidth,
      child: DefaultTextStyle.merge(
        style: TextStyle(
          fontSize: fontSizeToken(theme, context.size),
          color: textColor(context.context),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (var i = 0; i < context.children.length; i++) ...[
              if (i > 0) SizedBox(height: gap),
              context.children[i],
            ],
          ],
        ),
      ),
    );
  }
}

/// Baseline [DataListItemDelegate]: one label-value row.
class BasicDataListItemDelegate extends DataListItemDelegate {
  /// Creates a baseline data-list item delegate.
  const BasicDataListItemDelegate();

  @override
  Widget root(DataListItemContext context) {
    final scope = DataListScope.of(context.context);
    Widget? label;
    Widget? value;
    for (final child in context.children) {
      if (child is DataListItemLabel) {
        label = child;
      } else if (child is DataListItemValue) {
        value = child;
      }
    }
    final row = scope.orientation == DataListOrientation.vertical
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ?label,
              ?value,
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (label != null)
                ConstrainedBox(
                  constraints: BoxConstraints(minWidth: scope.labelWidth),
                  child: label,
                ),
              if (value != null) Expanded(child: value),
            ],
          );
    if (!scope.withDivider) {
      return row;
    }
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: hairlineColor(context.context)),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: scope.gap),
        child: row,
      ),
    );
  }
}

/// Baseline [DataListItemLabelDelegate]: muted label.
class BasicDataListItemLabelDelegate extends DataListItemLabelDelegate {
  /// Creates a baseline data-list label delegate.
  const BasicDataListItemLabelDelegate();

  @override
  Widget root(DataListItemLabelContext context) {
    final theme = MantleTheme.of(context.context);
    final muted = isDarkScheme(context.context)
        ? theme.colors['dark'][2]
        : theme.colors['gray'][6];
    return DefaultTextStyle.merge(
      style: TextStyle(color: muted, fontWeight: FontWeight.w500),
      child: context.child,
    );
  }
}

/// Baseline [DataListItemValueDelegate]: value text.
class BasicDataListItemValueDelegate extends DataListItemValueDelegate {
  /// Creates a baseline data-list value delegate.
  const BasicDataListItemValueDelegate();

  @override
  Widget root(DataListItemValueContext context) {
    return context.child;
  }
}
