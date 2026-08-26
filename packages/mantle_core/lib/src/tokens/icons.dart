import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// A function that builds an icon widget with optional size
///   and color parameters.
typedef IconTokenBuilder = Widget Function({double size, Color color});

/// A group of icons used troughout the app
class MantleIcons implements MantleTokenGroup {
  /// Creates a new instance of [MantleIcons] with the given icons.
  const MantleIcons(Map<String, IconTokenBuilder> icons) : _icons = icons;

  /// Creates an empty icons instance. For when you don't have any icons.
  const MantleIcons.empty() : this(const {});

  final Map<String, IconTokenBuilder> _icons;

  /// Returns the icon builder for the given key.
  IconTokenBuilder operator [](String key) =>
      _icons[key] ?? (throw ArgumentError('No icon named "$key"'));

  /// Checks if the icon group contains the given key.
  bool contains(String key) => _icons.containsKey(key);

  @override
  MantleIcons lerpWith(covariant MantleIcons other, double t) {
    final tokens = {..._icons.keys, ...other._icons.keys};
    IconTokenBuilder lerper(IconTokenBuilder? a, IconTokenBuilder? b) {
      if (a == null || b == null) {
        return (a ?? b)!;
      }
      return t < 0.5 ? a : b;
    }

    return MantleIcons({
      for (final token in tokens)
        token: lerper(_icons[token], other._icons[token]),
    });
  }

  @override
  MantleIcons mergeWith(covariant MantleIcons other) {
    final tokens = {..._icons.keys, ...other._icons.keys};
    return MantleIcons({
      for (final token in tokens)
        token: contains(token) ? this[token] : other[token],
    });
  }
}
