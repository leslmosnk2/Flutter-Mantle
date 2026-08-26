import 'package:flutter/foundation.dart';
import 'package:mantle_core/src/tokens/color.dart';

/// Light and dark shade indexes into a [MantleColor] scale.
///
/// Mantine's `primaryShade` is either a single index (0–9) used for both
/// schemes, or `{ light, dark }` so filled variants can pick a different
/// step in dark mode. [MantleShade.all] covers the single-index case.
@immutable
class MantleShade {
  /// Creates a shade pair.
  const MantleShade({required this.light, required this.dark});

  /// Uses [value] for both light and dark color schemes.
  const MantleShade.all(int value) : light = value, dark = value;

  /// Default Mantine primary shade: 6 in light, 8 in dark.
  static const MantleShade primary = MantleShade(light: 6, dark: 8);

  /// Index used in light color schemes (0–9).
  final int light;

  /// Index used in dark color schemes (0–9).
  final int dark;

  /// The index for a resolved `light` or `dark` scheme.
  int indexFor({required bool isDark}) => isDark ? dark : light;

  @override
  bool operator ==(Object other) {
    return other is MantleShade && other.light == light && other.dark == dark;
  }

  @override
  int get hashCode => Object.hash(light, dark);

  @override
  String toString() => 'MantleShade(light: $light, dark: $dark)';
}
