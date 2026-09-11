import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Mantine container max-widths in logical pixels.
const Map<String, double> kBasicContainerSizes = {
  'xs': 540,
  'sm': 720,
  'md': 960,
  'lg': 1140,
  'xl': 1320,
};

/// Baseline [MContainerDelegate]: centered max-width content.
class BasicMContainerDelegate extends MContainerDelegate {
  /// Creates a baseline container delegate.
  const BasicMContainerDelegate();

  @override
  Widget root(MContainerContext context) {
    final theme = MantleTheme.of(context.context);
    final padding = resolveSpacing(theme, 'md');
    final maxWidth = context.fluid
        ? double.infinity
        : kBasicContainerSizes[context.size] ?? kBasicContainerSizes['md']!;

    if (context.strategy == ContainerStrategy.grid) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Row(
          children: [
            const Expanded(child: SizedBox.shrink()),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxWidth),
              child: context.child,
            ),
            const Expanded(child: SizedBox.shrink()),
          ],
        ),
      );
    }

    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: context.child,
        ),
      ),
    );
  }
}
