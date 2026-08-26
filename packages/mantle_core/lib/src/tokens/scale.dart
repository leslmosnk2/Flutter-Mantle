import 'package:mantle_core/mantle_core.dart';

/// A scale for managing size tokens.
class MantleSizeScale<T> {
  /// Creates a new instance of [MantleSizeScale] with the given sizes.
  const MantleSizeScale(Map<MantleSize, T> sizes) : _sizes = sizes;

  /// Creates an empty size scale.
  const MantleSizeScale.empty() : this(const {});

  final Map<MantleSize, T> _sizes;

  /// Returns the set of all size tokens.
  Set<MantleSize> get tokens => _sizes.keys.toSet();

  /// Returns the size for the given key, or throws an error if not found.
  T operator [](MantleSize key) =>
      _sizes[key] ?? (throw ArgumentError('No size named "$key"'));

  /// Returns the value for [key], or `null` if not present.
  T? getOrNull(MantleSize key) => _sizes[key];

  /// Merges this scale with another scale.
  MantleSizeScale<T> merge(MantleSizeScale<T> other) {
    final tokens = {...this.tokens, ...other.tokens};
    return MantleSizeScale<T>({
      for (final size in tokens) size: _sizes[size] ?? other._sizes[size]!,
    });
  }
}

/// Extension for lerping between size scales.
extension MantleSizeScaleLerper<T extends num> on MantleSizeScale<T> {
  /// Linearly interpolates between this scale and another scale.
  MantleSizeScale<double> lerp(MantleSizeScale<T> other, double t) {
    final tokens = {...this.tokens, ...other.tokens};
    num lerper(T? a, T? b) {
      if (a == null || b == null) {
        return a ?? b!;
      }

      return a * (1 - t) + b * t;
    }

    return MantleSizeScale<double>({
      for (final size in tokens)
        size: lerper(_sizes[size], other._sizes[size]).toDouble(),
    });
  }
}
