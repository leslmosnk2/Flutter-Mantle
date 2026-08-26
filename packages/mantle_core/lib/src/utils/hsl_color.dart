import 'dart:math' as math;
import 'dart:ui' show Color;

import 'package:mantle_core/src/utils/numeric_range.dart';

/// HSL color utility
class MantleHslColor {
  /// Creates an HSL color from `hue`, `saturation`, `lightness`, and
  /// `alpha` values.
  const MantleHslColor({
    required this.alpha,
    required this.hue,
    required this.saturation,
    required this.lightness,
  });

  /// Creates an HSL color from `hue` (0-360), `saturation`, `lightness`, and
  /// `alpha` values.
  factory MantleHslColor.fromHSLA({
    required double hue,
    required double saturation,
    required double lightness,
    required double alpha,
  }) {
    assert(alpha.inRange(0, 1), 'Alpha must be between 0 and 1');
    assert(hue.inRange(0, 360), 'Hue must be between 0 and 360');
    assert(saturation.inRange(0, 1), 'Saturation must be between 0 and 1');
    assert(lightness.inRange(0, 1), 'Lightness must be between 0 and 1');
    return MantleHslColor(
      alpha: alpha,
      hue: hue,
      saturation: saturation,
      lightness: lightness,
    );
  }

  /// Converts a Color to an HSL color.
  factory MantleHslColor.fromColor(Color color) {
    final (a, r, g, b) = (color.a, color.r, color.g, color.b);

    // get intermediate values
    final min = [r, g, b].reduce(math.min);
    final max = [r, g, b].reduce(math.max);
    final chroma = max - min;

    // get hue based on the maximum component
    var hue = 0.0;
    if (chroma == 0) {
      hue = 0.0;
    } else if (max == r) {
      hue = ((g - b) / chroma) % 6;
    } else if (max == g) {
      hue = ((b - r) / chroma) + 2;
    } else if (max == b) {
      hue = ((r - g) / chroma) + 4;
    }
    // multiply and clamp to 0-360 range
    hue *= 60;
    if (hue < 0) hue += 360;

    // calculate lightness and saturation
    final lightness = (max + min) / 2;
    final saturation = (chroma == 0)
        ? 0.0
        : chroma / (1 - (2 * lightness - 1).abs());

    return MantleHslColor(
      alpha: a,
      hue: hue,
      saturation: saturation,
      lightness: lightness,
    );
  }

  /// Alpha channel (0-1).
  final double alpha;

  /// Hue in degrees (0-360).
  final double hue;

  /// Saturation (0-1).
  final double saturation;

  /// Lightness (0-1).
  final double lightness;

  /// Converts this HSL color to a Color.
  Color toColor() {
    // calculate the chroma and intermediate values
    final chroma = (1 - (2 * lightness - 1).abs()) * saturation;
    final xhue = hue / 60;
    final x = chroma * (1 - (xhue % 2 - 1).abs());

    // get components based on xhue
    final xrgb = switch (xhue.floor()) {
      0 => [chroma, x, 0.0],
      1 => [x, chroma, 0.0],
      2 => [0.0, chroma, x],
      3 => [0.0, x, chroma],
      4 => [x, 0.0, chroma],
      5 => [chroma, 0.0, x],
      _ => throw AssertionError(
        'hue is >= 360, which is not a valid hue value',
      ),
    };

    // add lightness to components
    final match = lightness - (chroma / 2);
    final rgb = xrgb.map((c) => c + match);

    // multiply values by 255 and clamp to valid range
    final argb = [alpha, ...rgb];
    final [a, r, g, b] = argb
        .map((e) => (e * 255).round().clamp(0, 255))
        .toList();

    return Color.fromARGB(a, r, g, b);
  }

  /// Returns a copy of this HSL color with the specified values replaced.
  MantleHslColor copyWith({
    double? alpha,
    double? hue,
    double? saturation,
    double? lightness,
  }) {
    return MantleHslColor(
      alpha: alpha ?? this.alpha,
      hue: hue ?? this.hue,
      saturation: saturation ?? this.saturation,
      lightness: lightness ?? this.lightness,
    );
  }
}

/// An extension to convert Color to HSL color.
extension MantleHslColorExtension on Color {
  /// Converts this Color to an HSL color.
  MantleHslColor toHslColor() {
    return MantleHslColor.fromColor(this);
  }
}
