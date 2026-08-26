import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/data_display/tokens.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [PaperDelegate]: body surface with optional border and shadow.
class BasicPaperDelegate extends PaperDelegate {
  /// Creates a baseline paper delegate.
  const BasicPaperDelegate();

  @override
  Widget root(PaperContext context) {
    final theme = MantleTheme.of(context.context);
    final radius = resolveRadius(context.radius, context.context);
    var child = context.child ?? const SizedBox.shrink();
    if (context.padding != null) {
      child = Padding(
        padding: EdgeInsets.all(resolveSpacing(theme, context.padding)),
        child: child,
      );
    }
    return DecoratedBox(
      decoration: BoxDecoration(
        color: bodyColor(context.context),
        borderRadius: radius,
        border: context.withBorder
            ? Border.all(color: hairlineColor(context.context))
            : null,
        boxShadow: context.shadow == null
            ? const []
            : theme.shadows[context.shadow!],
      ),
      child: child,
    );
  }
}
