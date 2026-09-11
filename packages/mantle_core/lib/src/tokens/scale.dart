import 'package:flutter/widgets.dart';
import 'package:mantle_core/src/tokens/size.dart';

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

  /// Returns a scale whose values are produced by [transform].
  MantleSizeScale<T> map(T Function(T value) transform) {
    return MantleSizeScale({
      for (final entry in _sizes.entries) entry.key: transform(entry.value),
    });
  }

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

/// Rem conversion for numeric size scales.
///
/// Values are treated as px at `remBase` (16 by default). Resolving uses
/// [TextScaler] so non-linear accessibility scaling stays correct.
extension MantleSizeScaleRem on MantleSizeScale<double> {
  /// Converts each value from px-at-[remBase] using [textScaler].
  MantleSizeScale<double> resolveRem({
    required TextScaler textScaler,
    double remBase = 16,
  }) {
    return map((value) => textScaler.scale(value / remBase) * remBase);
  }

  /// [resolveRem] using [MediaQuery.textScalerOf].
  MantleSizeScale<double> fromMedia(
    BuildContext context, {
    double remBase = 16,
  }) {
    return resolveRem(
      textScaler: MediaQuery.textScalerOf(context),
      remBase: remBase,
    );
  }
}
