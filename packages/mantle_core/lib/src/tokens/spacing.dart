import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// A class for managing spacing values based on a size scale.
class MantleSpacing implements MantleTokenGroup {
  /// Creates a new instance of [MantleSpacing] with the given sizes.
  MantleSpacing(Map<MantleSize, double> spacing)
    : _scale = MantleSizeScale(spacing);

  /// Creates an empty spacing instance.
  const MantleSpacing.empty() : _scale = const MantleSizeScale.empty();

  /// Creates a new instance of [MantleSpacing] with the given size scale.
  const MantleSpacing.fromScale(MantleSizeScale<double> scale) : _scale = scale;

  final MantleSizeScale<double> _scale;

  /// Returns an EdgeInsets with the same value for all sides.
  EdgeInsets all(MantleSize size) => EdgeInsets.all(_scale[size]);

  /// Returns an EdgeInsets with the specified values.
  EdgeInsets only({
    MantleSize? top,
    MantleSize? right,
    MantleSize? bottom,
    MantleSize? left,
  }) {
    return EdgeInsets.only(
      top: top != null ? _scale[top] : 0,
      right: right != null ? _scale[right] : 0,
      bottom: bottom != null ? _scale[bottom] : 0,
      left: left != null ? _scale[left] : 0,
    );
  }

  /// Returns an EdgeInsets with the values for vertical and horizontal sides.
  EdgeInsets symmetric({MantleSize? vertical, MantleSize? horizontal}) {
    return EdgeInsets.symmetric(
      vertical: vertical != null ? _scale[vertical] : 0,
      horizontal: horizontal != null ? _scale[horizontal] : 0,
    );
  }

  @override
  MantleSpacing lerpWith(covariant MantleSpacing other, double t) {
    final tokens = {..._scale.tokens, ...other._scale.tokens};

    double lerper(double? a, double? b) {
      if (a == null || b == null) {
        return a ?? b!;
      }
      return a * (1 - t) + b * t;
    }

    return MantleSpacing({
      for (final token in tokens)
        token: lerper(_scale.getOrNull(token), other._scale.getOrNull(token)),
    });
  }

  @override
  MantleSpacing mergeWith(covariant MantleSpacing other) {
    return MantleSpacing.fromScale(_scale.merge(other._scale));
  }
}
