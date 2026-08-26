import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:mantle_core/src/tokens/colors.dart';

/// Palette-keyed linear gradient, matching Mantine's `MantineGradient`.
@immutable
class MantleGradient {
  /// Creates a gradient from two theme palette names.
  const MantleGradient({
    required this.from,
    required this.to,
    this.fromShade = 6,
    this.toShade = 4,
    this.deg = 45,
  });

  /// Palette name for the start color (a key of `theme.colors`).
  final String from;

  /// Palette name for the end color.
  final String to;

  /// Shade index of [from] (0–9).
  final int fromShade;

  /// Shade index of [to] (0–9).
  final int toShade;

  /// Angle in degrees, clockwise from left-to-right.
  final double deg;

  /// Resolves this token against [colors] into a [LinearGradient].
  LinearGradient resolve(MantleColors colors) {
    return LinearGradient(
      colors: [colors[from][fromShade], colors[to][toShade]],
      transform: GradientRotation(deg * math.pi / 180),
    );
  }

  /// Linearly interpolates angles; palette names snap at `t == 0.5`.
  MantleGradient lerp(MantleGradient other, double t) {
    final fromThis = t < 0.5;
    return MantleGradient(
      from: fromThis ? from : other.from,
      to: fromThis ? to : other.to,
      fromShade: fromThis ? fromShade : other.fromShade,
      toShade: fromThis ? toShade : other.toShade,
      deg: deg + (other.deg - deg) * t,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MantleGradient &&
        other.from == from &&
        other.to == to &&
        other.fromShade == fromShade &&
        other.toShade == toShade &&
        other.deg == deg;
  }

  @override
  int get hashCode => Object.hash(from, to, fromShade, toShade, deg);
}
