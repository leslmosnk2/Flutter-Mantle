import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [SimpleGridDelegate]: equal-width cells in a [Wrap].
class BasicSimpleGridDelegate extends SimpleGridDelegate {
  /// Creates a baseline simple-grid delegate.
  const BasicSimpleGridDelegate();

  @override
  Widget root(SimpleGridContext context) {
    final theme = MantleTheme.of(context.context);
    final spacing = resolveSpacing(theme, context.spacing);
    final vertical =
        tryResolveSpacing(theme, context.verticalSpacing) ?? spacing;
    final cols =
        context.responsiveCols?.resolveOf(context.context) ?? context.cols;

    return LayoutBuilder(
      builder: (_, constraints) {
        final maxWidth = constraints.maxWidth.isFinite
            ? constraints.maxWidth
            : 0.0;
        final safeCols = cols < 1 ? 1 : cols;
        final cellWidth = safeCols == 1
            ? maxWidth
            : (maxWidth - spacing * (safeCols - 1)) / safeCols;
        return Wrap(
          spacing: spacing,
          runSpacing: vertical,
          children: [
            for (final child in context.children)
              SizedBox(width: cellWidth, child: child),
          ],
        );
      },
    );
  }
}
