import 'package:flutter/widgets.dart';
import 'package:mantle_core/src/tokens/scale.dart';
import 'package:mantle_core/src/tokens/size.dart';
import 'package:mantle_core/src/tokens/token_group.dart';

double _lerpNum(double? a, double? b, double t) {
  if (a == null || b == null) {
    return a ?? b!;
  }
  return a * (1 - t) + b * t;
}

/// Breakpoint scale keyed by [MantleSize].
abstract interface class MantleBreakpoint implements MantleTokenGroup {
  /// Creates a map-backed breakpoint group.
  factory MantleBreakpoint(Map<MantleSize, double> breakpoints) =
      MantleBreakpointMap;

  /// Empty sentinel; yields to the other side in [mergeWith].
  const factory MantleBreakpoint.empty() = MantleBreakpointMap.empty;

  /// Creates a group from an existing scale.
  const factory MantleBreakpoint.fromScale(MantleSizeScale<double> scale) =
      MantleBreakpointMap.fromScale;

  /// Size keys in this group.
  Set<MantleSize> get tokens;

  /// Whether this group has no keys.
  bool get isEmpty;

  /// Minimum width for [size].
  double operator [](MantleSize size);

  /// Minimum width for [size], or `null` if missing.
  double? getOrNull(MantleSize size);

  /// A copy whose values are produced by [transform].
  MantleBreakpoint mapValues(double Function(double value) transform);

  /// Converts each value from px-at-[remBase] using [textScaler].
  MantleBreakpoint resolveRem({
    required TextScaler textScaler,
    double remBase = 16,
  });

  @override
  MantleBreakpoint mergeWith(covariant MantleBreakpoint other);

  @override
  MantleBreakpoint lerpWith(covariant MantleBreakpoint other, double t);
}

/// Map-backed [MantleBreakpoint] used for literals, empty sentinels, and
/// merges.
class MantleBreakpointMap implements MantleBreakpoint {
  /// Creates a new breakpoint instance from a map of size breakpoints.
  MantleBreakpointMap(Map<MantleSize, double> breakpoints)
    : _scale = MantleSizeScale(breakpoints);

  /// Creates an empty breakpoint instance.
  const MantleBreakpointMap.empty() : _scale = const MantleSizeScale.empty();

  /// Creates a new breakpoint instance from an existing size scale.
  const MantleBreakpointMap.fromScale(MantleSizeScale<double> scale)
    : _scale = scale;

  final MantleSizeScale<double> _scale;

  @override
  Set<MantleSize> get tokens => _scale.tokens;

  @override
  bool get isEmpty => _scale.tokens.isEmpty;

  @override
  double operator [](MantleSize size) => _scale[size];

  @override
  double? getOrNull(MantleSize size) => _scale.getOrNull(size);

  @override
  MantleBreakpoint mapValues(double Function(double value) transform) {
    return MantleBreakpoint.fromScale(_scale.map(transform));
  }

  @override
  MantleBreakpoint resolveRem({
    required TextScaler textScaler,
    double remBase = 16,
  }) {
    return MantleBreakpoint.fromScale(
      _scale.resolveRem(textScaler: textScaler, remBase: remBase),
    );
  }

  @override
  MantleBreakpoint lerpWith(covariant MantleBreakpoint other, double t) {
    final keys = {...tokens, ...other.tokens};
    return MantleBreakpoint({
      for (final token in keys)
        token: _lerpNum(getOrNull(token), other.getOrNull(token), t),
    });
  }

  @override
  MantleBreakpoint mergeWith(covariant MantleBreakpoint other) {
    final keys = {...tokens, ...other.tokens};
    return MantleBreakpoint({
      for (final token in keys) token: getOrNull(token) ?? other[token],
    });
  }
}

/// Viewport bucketing and rem resolution for any [MantleBreakpoint].
extension MantleBreakpointLookup on MantleBreakpoint {
  /// [resolveRem] using [MediaQuery.textScalerOf].
  ///
  /// Distinct from [fromContext], which picks a size bucket from viewport
  /// width. This scales stored px-at-remBase values with the text scaler.
  MantleBreakpoint fromMedia(BuildContext context, {double remBase = 16}) {
    return resolveRem(
      textScaler: MediaQuery.textScalerOf(context),
      remBase: remBase,
    );
  }

  /// Largest token whose min-width is ≤ the viewport width.
  MantleSize fromContext(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    MantleSize? bucket;
    var bucketWidth = double.negativeInfinity;

    for (final token in tokens) {
      final minWidth = this[token];
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

    for (final token in tokens) {
      final width = this[token];
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
}
