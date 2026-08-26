import 'package:flutter/painting.dart';
import 'package:mantle_core/mantle_core.dart';

/// A class for managing radius values based on a size scale.
class MantleRadius implements MantleTokenGroup {
  /// Creates a new instance of [MantleRadius] with the given sizes.
  MantleRadius(Map<MantleSize, double> radius)
    : _scale = MantleSizeScale(radius);

  /// Creates a new instance of [MantleRadius] with the given size scale.
  const MantleRadius.fromScale(MantleSizeScale<double> scale) : _scale = scale;

  /// Creates an empty radius instance.
  ///   For when you don't have any radius values.
  const MantleRadius.empty() : _scale = const MantleSizeScale.empty();

  final MantleSizeScale<double> _scale;

  /// Returns a [BorderRadius] with the specified size.
  BorderRadius border(MantleSize size) => BorderRadius.circular(_scale[size]);

  /// Returns a [Radius] with the specified size.
  Radius circular(MantleSize size) => Radius.circular(_scale[size]);

  /// Returns an [Radius] with the specified x and y values.
  Radius elliptical(MantleSize x, MantleSize y) =>
      Radius.elliptical(_scale[x], _scale[y]);

  @override
  MantleRadius lerpWith(covariant MantleRadius other, double t) {
    final tokens = {..._scale.tokens, ...other._scale.tokens};

    double lerper(double? a, double? b) {
      if (a == null || b == null) {
        return a ?? b!;
      }
      return a * (1 - t) + b * t;
    }

    return MantleRadius({
      for (final token in tokens)
        token: lerper(_scale.getOrNull(token), other._scale.getOrNull(token)),
    });
  }

  @override
  MantleRadius mergeWith(covariant MantleRadius other) {
    return MantleRadius.fromScale(_scale.merge(other._scale));
  }
}
