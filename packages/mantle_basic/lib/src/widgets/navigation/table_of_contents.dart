import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/navigation/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/navigation.dart';

/// Baseline [TableOfContentsDelegate]: a column of heading links.
class BasicTableOfContentsDelegate extends TableOfContentsDelegate {
  /// Creates a baseline table-of-contents delegate.
  const BasicTableOfContentsDelegate();

  @override
  Widget root(TableOfContentsContext context) {
    final theme = MantleTheme.of(context.context);
    final colors = resolveVariantColors(
      context.context,
      variant: 'filled',
      color: context.color,
    );
    final fontSize = resolveFontSize(theme, context.size);
    final radius = BorderRadius.all(theme.resolvedDefaultRadius);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final heading in context.headings)
          _TocControl(
            heading: heading,
            active: heading.value == context.active,
            indent:
                ((heading.depth - context.minDepthToOffset)
                    .clamp(0, 24)
                    .toDouble()) *
                context.depthOffset,
            fontSize: fontSize,
            radius: radius,
            background: colors.background,
            foreground: colors.color,
            onScrollTo: context.onScrollTo,
          ),
      ],
    );
  }
}

class _TocControl extends StatelessWidget {
  const _TocControl({
    required this.heading,
    required this.active,
    required this.indent,
    required this.fontSize,
    required this.radius,
    required this.background,
    required this.foreground,
    required this.onScrollTo,
  });

  final TocHeading heading;
  final bool active;
  final double indent;
  final double fontSize;
  final BorderRadius radius;
  final Color? background;
  final Color? foreground;
  final TocOnScrollTo? onScrollTo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => onScrollTo?.call(heading),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: active ? background : const Color(0x00000000),
          borderRadius: radius,
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            indent.clamp(8.0, 240.0) + 8,
            6,
            12,
            6,
          ),
          child: Text(
            heading.label,
            style: TextStyle(
              fontSize: fontSize,
              color: active
                  ? (foreground ?? schemeForeground(context))
                  : schemeForeground(context),
            ),
          ),
        ),
      ),
    );
  }
}
