import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MStackDelegate]: a vertical [Column] with token gaps.
class BasicMStackDelegate extends MStackDelegate {
  /// Creates a baseline stack delegate.
  const BasicMStackDelegate();

  @override
  Widget root(MStackContext context) {
    final theme = MantleTheme.of(context.context);
    final gap = resolveSpacing(theme, context.gap);
    return Column(
      mainAxisAlignment: context.justify,
      crossAxisAlignment: context.align,
      children: childrenWithGap(
        context.children,
        gap,
        axis: Axis.vertical,
      ),
    );
  }
}
