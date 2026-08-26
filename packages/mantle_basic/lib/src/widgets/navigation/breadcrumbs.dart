import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_basic/src/widgets/navigation/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/navigation.dart';

/// Baseline [BreadcrumbsDelegate]: a wrapping trail with separators.
class BasicBreadcrumbsDelegate extends BreadcrumbsDelegate {
  /// Creates a baseline breadcrumbs delegate.
  const BasicBreadcrumbsDelegate();

  @override
  Widget root(BreadcrumbsContext context) {
    final theme = MantleTheme.of(context.context);
    final margin = resolveSpacing(theme, context.separatorMargin);
    final separator = DefaultTextStyle.merge(
      style: TextStyle(color: schemeDimmed(context.context)),
      child: context.separator ?? const Text('/'),
    );

    final items = <Widget>[];
    for (var i = 0; i < context.children.length; i++) {
      if (i > 0) {
        items.add(
          Padding(
            padding: EdgeInsets.symmetric(horizontal: margin),
            child: separator,
          ),
        );
      }
      items.add(context.children[i]);
    }

    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: items,
    );
  }
}
