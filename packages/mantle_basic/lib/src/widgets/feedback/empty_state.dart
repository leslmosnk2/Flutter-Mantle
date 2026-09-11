import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/feedback/feedback_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [EmptyStateDelegate]: indicator, title, description, and action.
class BasicEmptyStateDelegate extends EmptyStateDelegate {
  /// Creates a baseline empty-state delegate.
  const BasicEmptyStateDelegate();

  @override
  Widget root(EmptyStateContext context) {
    final theme = MantleTheme.of(context.context);
    final scheme = MantleProvider.colorSchemeOf(context.context);
    final scale = theme.scale;
    final tokens = emptyStateSizes[context.size] ?? emptyStateSizes['md']!;
    final gap = tokens.gap * scale;
    final indicatorSize = tokens.indicator * scale;
    var titleSize = resolveFontSize(theme, tokens.titleFont);
    if (context.size == 'xl') {
      titleSize *= 1.2;
    }
    final descriptionSize = resolveFontSize(theme, tokens.descriptionFont);
    final colored = context.variant != EmptyStateVariant.defaults;
    final withBackground = context.withIndicatorBackground || colored;
    final variantColors = colored
        ? theme.variantColorResolver(
            VariantColorsInput(
              theme: theme,
              variant: context.variant == EmptyStateVariant.filled
                  ? 'filled'
                  : 'light',
              colorScheme: scheme,
              color: context.color,
            ),
          )
        : null;

    final indicatorColor = variantColors?.color ?? dimmedColor(theme, scheme);
    final indicatorBackground =
        variantColors?.background ??
        (scheme == MantleColorScheme.dark
            ? theme.colors['dark'][6]
            : theme.colors['gray'][1]);

    Widget? indicator;
    if (context.icon != null) {
      final icon = IconTheme.merge(
        data: IconThemeData(color: indicatorColor, size: indicatorSize),
        child: context.icon!,
      );
      if (withBackground) {
        indicator = DecoratedBox(
          decoration: BoxDecoration(
            color: indicatorBackground,
            shape: BoxShape.circle,
          ),
          child: SizedBox.square(
            dimension: indicatorSize * 2,
            child: Center(child: icon),
          ),
        );
      } else {
        indicator = icon;
      }
    }

    final titleColor = brightColor(theme, scheme);
    final descriptionColor = dimmedColor(theme, scheme);
    final bodyAlign = switch (context.align) {
      EmptyStateAlign.center => CrossAxisAlignment.center,
      EmptyStateAlign.left => CrossAxisAlignment.start,
      EmptyStateAlign.right => CrossAxisAlignment.end,
    };
    final textAlign = switch (context.align) {
      EmptyStateAlign.center => TextAlign.center,
      EmptyStateAlign.left => TextAlign.start,
      EmptyStateAlign.right => TextAlign.end,
    };

    final bodyChildren = <Widget>[
      if (context.title != null)
        DefaultTextStyle.merge(
          style: TextStyle(
            fontSize: titleSize,
            fontWeight: FontWeight.w600,
            height: 1.3,
            color: titleColor,
          ),
          textAlign: textAlign,
          child: context.title!,
        ),
      if (context.description != null)
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 32 * 16),
          child: DefaultTextStyle.merge(
            style: TextStyle(
              fontSize: descriptionSize,
              height: 1.55,
              color: descriptionColor,
            ),
            textAlign: textAlign,
            child: context.description!,
          ),
        ),
      if (context.action != null) context.action!,
    ];

    Widget? body;
    if (bodyChildren.isNotEmpty) {
      body = Column(
        crossAxisAlignment: bodyAlign,
        mainAxisSize: MainAxisSize.min,
        children: _withGap(bodyChildren, gap),
      );
    }

    final children = <Widget>[
      ?indicator,
      ?body,
    ];

    return switch (context.align) {
      EmptyStateAlign.center => Column(
        mainAxisSize: MainAxisSize.min,
        children: _withGap(children, gap),
      ),
      EmptyStateAlign.left => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _withGap(children, gap, axis: Axis.horizontal),
      ),
      EmptyStateAlign.right => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _withGap(
          children.reversed.toList(),
          gap,
          axis: Axis.horizontal,
        ),
      ),
    };
  }
}

List<Widget> _withGap(
  List<Widget> children,
  double gap, {
  Axis axis = Axis.vertical,
}) {
  if (children.length <= 1 || gap <= 0) {
    return children;
  }
  final spaced = <Widget>[children.first];
  for (var i = 1; i < children.length; i++) {
    spaced
      ..add(
        axis == Axis.horizontal ? SizedBox(width: gap) : SizedBox(height: gap),
      )
      ..add(children[i]);
  }
  return spaced;
}
