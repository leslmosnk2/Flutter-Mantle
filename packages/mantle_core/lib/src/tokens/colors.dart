import 'package:mantle_core/mantle_core.dart';

/// A group of color tokens for the Mantle design system.
class MantleColors implements MantleTokenGroup {
  /// Creates a new instance of [MantleColors] from a map of color tokens.
  const MantleColors(Map<String, MantleColor> colors) : _colors = colors;

  /// Creates an empty colors instance. For when you don't have any colors.
  const MantleColors.empty() : _colors = const {};

  final Map<String, MantleColor> _colors;

  /// Gets the color with the given key.
  MantleColor operator [](String key) =>
      _colors[key] ?? (throw ArgumentError('No palette named "$key"'));

  @override
  MantleColors lerpWith(covariant MantleColors other, double t) {
    final tokens = {..._colors.keys, ...other._colors.keys};
    MantleColor lerper(MantleColor? a, MantleColor? b) {
      if (a == null || b == null) {
        return (a ?? b)!;
      }
      return a.lerpWith(b, t);
    }

    return MantleColors({
      for (final token in tokens)
        token: lerper(_colors[token], other._colors[token]),
    });
  }

  @override
  MantleColors mergeWith(covariant MantleColors other) {
    final tokens = {..._colors.keys, ...other._colors.keys};
    return MantleColors({
      for (final token in tokens)
        token: _colors.containsKey(token) ? this[token] : other[token],
    });
  }
}
