import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// Horizontal placement of EmptyState content.
enum EmptyStateAlign {
  /// Indicator, title, description, and actions stacked and centered.
  center,

  /// Indicator on the left; text and actions on the right.
  left,

  /// Indicator on the right; text and actions on the left.
  right,
}

/// Direction from which SemiCircleProgress fills.
enum SemiCircleFillDirection {
  /// Fill starts at the left end of the arc.
  leftToRight,

  /// Fill starts at the right end of the arc.
  rightToLeft,
}

/// Which half of the circle SemiCircleProgress draws.
enum SemiCircleOrientation {
  /// Arc opens downward (bow on top).
  up,

  /// Arc opens upward (bow on the bottom).
  down,
}

/// Where the SemiCircleProgress label sits relative to the arc.
enum SemiCircleLabelPosition {
  /// Centered on the chord of the semicircle.
  bottom,

  /// Centered on the arc itself.
  center,
}

/// One colored segment of a RingProgress.
@immutable
class RingProgressSection {
  /// Creates a ring section.
  ///
  /// [value] is the portion of the ring in `0–100`. [color] is a theme
  /// palette name (`blue`) or shade (`blue.4`).
  const RingProgressSection({
    required this.value,
    required this.color,
  });

  /// Portion of the ring this section occupies (`0–100`).
  final double value;

  /// Theme color key for this section.
  final String color;
}

/// Default corner radius from the ambient theme.
BorderRadiusGeometry feedbackDefaultRadius(BuildContext context) {
  return BorderRadius.all(MantleTheme.of(context).resolvedDefaultRadius);
}
