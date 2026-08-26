import 'dart:ui';

/// A group of colors representing different shades of the same hue.
extension type const MantleColor._(List<Color> _shades) {
  /// Creates a new [MantleColor] from a list of colors.
  /// List must contain exactly 10 colors.
  MantleColor(List<Color> colors)
    : assert(colors.length == 10, 'List must contain exactly 10 colors'),
      _shades = colors;

  /// Returns the color at the specified index.
  /// Value will be clamped to the range [0, 9].
  Color operator [](int index) => _shades[index.clamp(0, 9)];

  /// Linearly interpolates between this color and another color.
  MantleColor lerpWith(MantleColor other, double t) {
    return MantleColor([
      for (int i = 0; i < 10; i++) Color.lerp(this[i], other[i], t)!,
    ]);
  }
}
