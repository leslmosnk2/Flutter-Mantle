import 'package:mantle_core/src/tokens/scale.dart';

/// A type alias for defining size tokens.
typedef MantleSize = String;

/// A scale for managing size tokens.
class MantleSizes {
  /// Creates a new size scale with the given sizes.
  const MantleSizes(Set<String> sizes) : _sizes = sizes;

  /// Creates an empty size scale.
  const MantleSizes.empty() : this(const {});

  final Set<MantleSize> _sizes;

  /// Returns the size for the given key, or throws an error if not found.
  String operator [](String size) => _sizes.contains(size)
      ? size
      : (throw ArgumentError('No size named "$size"'));

  /// Creates a new size scale with the given scale.
  MantleSizeScale<T> createScale<T>(Map<String, T> scale) {
    assert(
      _sizes.containsAll(scale.keys),
      'Scale keys must be a subset of size keys',
    );
    return MantleSizeScale(scale);
  }
}
