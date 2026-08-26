import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [FloatingIndicatorDelegate]: a decoration behind the active child.
class BasicFloatingIndicatorDelegate extends FloatingIndicatorDelegate {
  /// Creates a baseline floating-indicator delegate.
  const BasicFloatingIndicatorDelegate();

  /// Key placed on the highlight decoration.
  static const Key indicatorKey = ValueKey<String>(
    'mantle.floating-indicator.highlight',
  );

  @override
  Widget root(FloatingIndicatorContext context) {
    final theme = MantleTheme.of(context.context);
    final last = math.max(0, context.children.length - 1);
    final active = context.active.clamp(0, last);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var i = 0; i < context.children.length; i++)
          Stack(
            alignment: Alignment.center,
            children: [
              if (i == active)
                Positioned.fill(
                  child: DecoratedBox(
                    key: indicatorKey,
                    decoration: BoxDecoration(
                      color: theme.colors['gray'][1],
                      borderRadius: BorderRadius.all(
                        theme.resolvedDefaultRadius,
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                child: context.children[i],
              ),
            ],
          ),
      ],
    );
  }
}
