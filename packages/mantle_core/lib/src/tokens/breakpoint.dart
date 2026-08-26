import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// A group of breakpoints for different sizes.
class MantleBreakpoint implements MantleTokenGroup {
  /// Creates a new breakpoint instance from a map of size breakpoints.
  MantleBreakpoint(Map<MantleSize, double> breakpoints)
    : _scale = MantleSizeScale(breakpoints);

  /// Creates an empty breakpoint instance.
  ///   For when you don't have any breakpoints.
  const MantleBreakpoint.empty() : _scale = const MantleSizeScale.empty();

  /// Creates a new breakpoint instance from an existing size scale.
  const MantleBreakpoint.fromScale(MantleSizeScale<double> scale)
    : _scale = scale;

  final MantleSizeScale<double> _scale;

  /// Returns the breakpoint value for the given size.
  double operator [](MantleSize size) => _scale[size];

  /// Returns the breakpoint size for the given build context.
  MantleSize fromContext(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    MantleSize? bucket;
    var bucketWidth = double.negativeInfinity;

    for (final token in _scale.tokens) {
      final minWidth = _scale[token];

      if (minWidth <= width && minWidth > bucketWidth) {
        bucket = token;
        bucketWidth = minWidth;
      }
    }

    return bucket ?? _smallest;
  }

  MantleSize get _smallest {
    MantleSize? smallest;
    var smallestWidth = double.infinity;

    for (final token in _scale.tokens) {
      final width = _scale[token];

      if (width < smallestWidth) {
        smallest = token;
        smallestWidth = width;
      }
    }

    if (smallest == null) {
      throw StateError('Mantle breakpoint scale cannot be empty');
    }

    return smallest;
  }

  @override
  MantleBreakpoint lerpWith(covariant MantleBreakpoint other, double t) {
    final tokens = {..._scale.tokens, ...other._scale.tokens};

    double lerper(double? a, double? b) {
      if (a == null || b == null) {
        return a ?? b!;
      }
      return a * (1 - t) + b * t;
    }

    return MantleBreakpoint({
      for (final token in tokens)
        token: lerper(_scale.getOrNull(token), other._scale.getOrNull(token)),
    });
  }

  @override
  MantleBreakpoint mergeWith(covariant MantleBreakpoint other) {
    return MantleBreakpoint.fromScale(_scale.merge(other._scale));
  }
}
