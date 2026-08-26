import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/data_display/tokens.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MCardDelegate]: paper column.
class BasicMCardDelegate extends MCardDelegate {
  /// Creates a baseline card delegate.
  const BasicMCardDelegate();

  @override
  Widget root(MCardContext context) {
    final theme = MantleTheme.of(context.context);
    final padding = resolveSpacing(theme, context.padding);
    final radius = resolveRadius(context.radius, context.context);
    final children = [
      for (var i = 0; i < context.children.length; i++)
        CardChildScope(
          isFirst: i == 0,
          isLast: i == context.children.length - 1,
          child: context.children[i] is CardSection
              ? context.children[i]
              : Padding(
                  padding: EdgeInsets.all(padding),
                  child: context.children[i],
                ),
        ),
    ];
    return CardScope(
      padding: padding,
      withBorder: context.withBorder,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isDarkScheme(context.context)
              ? theme.colors['dark'][6]
              : theme.white,
          borderRadius: radius,
          border: context.withBorder
              ? Border.all(color: hairlineColor(context.context))
              : null,
          boxShadow: _shadows(theme, context.shadow),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: children,
        ),
      ),
    );
  }
}

/// Baseline [CardSectionDelegate]: full-bleed section.
class BasicCardSectionDelegate extends CardSectionDelegate {
  /// Creates a baseline card-section delegate.
  const BasicCardSectionDelegate();

  @override
  Widget root(CardSectionContext context) {
    final card = CardScope.of(context.context);
    final childScope = CardChildScope.maybeOf(context.context);
    final borderColor = hairlineColor(context.context);
    return DecoratedBox(
      decoration: BoxDecoration(
        border: context.withBorder
            ? Border(
                top: childScope?.isFirst ?? false
                    ? BorderSide.none
                    : BorderSide(color: borderColor),
                bottom: childScope?.isLast ?? false
                    ? BorderSide.none
                    : BorderSide(color: borderColor),
              )
            : null,
      ),
      child: Padding(
        padding: context.inheritPadding
            ? EdgeInsets.symmetric(horizontal: card.padding)
            : EdgeInsets.zero,
        child: context.child,
      ),
    );
  }
}

List<BoxShadow> _shadows(MantleTheme theme, String? shadow) {
  if (shadow == null) {
    return const [];
  }
  return theme.shadows[shadow];
}
