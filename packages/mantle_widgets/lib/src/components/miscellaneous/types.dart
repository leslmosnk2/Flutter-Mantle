// Widget classes live in sibling libraries; doc links are still useful.
// ignore_for_file: comment_references

import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// Label placement on a horizontal [Divider].
enum DividerLabelPosition {
  /// Label at the start; no leading line.
  left,

  /// Label centered between two lines.
  center,

  /// Label at the end; no trailing line.
  right,
}

/// Stroke pattern for [Divider].
enum DividerLineVariant {
  /// Continuous line.
  solid,

  /// Dashed line.
  dashed,

  /// Dotted line.
  dotted,
}

/// Scrollbar visibility for [ScrollArea].
enum ScrollAreaType {
  /// Show the bar while the pointer is over the viewport (v1: same as [auto]).
  hover,

  /// Show the bar while scrolling (v1: same as [auto]).
  scroll,

  /// Show the bar when content overflows.
  auto,

  /// Always show the bar.
  always,

  /// Never show the bar.
  never,
}

/// Which axes [ScrollArea] may scroll.
enum ScrollAreaScrollbars {
  /// Horizontal only.
  x,

  /// Vertical only.
  y,

  /// Both axes.
  xy,
}

/// Premade [MTransition] presets implemented in v1.
enum MantleTransitionName {
  /// Opacity only.
  fade,

  /// Opacity plus scale from 0.
  scale,

  /// Opacity plus slide up into place.
  slideUp,

  /// Opacity plus slide down into place.
  slideDown,

  /// Opacity plus slide left into place.
  slideLeft,

  /// Opacity plus slide right into place.
  slideRight,
}

/// Called when a [ScrollArea] viewport offset changes.
typedef ScrollAreaOnScrollPositionChange = void Function(Offset position);

/// Theme default radius for miscellaneous surfaces.
BorderRadiusGeometry miscellaneousDefaultRadius(BuildContext context) {
  return BorderRadius.all(MantleTheme.of(context).resolvedDefaultRadius);
}
