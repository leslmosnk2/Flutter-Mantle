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

/// Radius scale keyed by [MantleSize].
abstract interface class MantleRadius implements MantleTokenGroup {
  /// Creates a map-backed radius group.
  factory MantleRadius(Map<MantleSize, double> radius) = MantleRadiusMap;

  /// Creates a group from an existing scale.
  const factory MantleRadius.fromScale(MantleSizeScale<double> scale) =
      MantleRadiusMap.fromScale;

  /// Empty sentinel; yields to the other side in [mergeWith].
  const factory MantleRadius.empty() = MantleRadiusMap.empty;

  /// Size keys in this group.
  Set<MantleSize> get tokens;

  /// Whether this group has no keys.
  bool get isEmpty;

  /// Raw radius for [size].
  double operator [](MantleSize size);

  /// Radius for [size], or `null` if missing.
  double? getOrNull(MantleSize size);

  /// A copy whose values are produced by [transform].
  MantleRadius mapValues(double Function(double value) transform);

  /// Converts each value from px-at-[remBase] using [textScaler].
  MantleRadius resolveRem({
    required TextScaler textScaler,
    double remBase = 16,
  });

  @override
  MantleRadius mergeWith(covariant MantleRadius other);

  @override
  MantleRadius lerpWith(covariant MantleRadius other, double t);
}

/// Map-backed [MantleRadius] used for literals, empty sentinels, and merges.
class MantleRadiusMap implements MantleRadius {
  /// Creates a new instance with the given sizes.
  MantleRadiusMap(Map<MantleSize, double> radius)
    : _scale = MantleSizeScale(radius);

  /// Creates a new instance from the given size scale.
  const MantleRadiusMap.fromScale(MantleSizeScale<double> scale)
    : _scale = scale;

  /// Creates an empty radius instance.
  const MantleRadiusMap.empty() : _scale = const MantleSizeScale.empty();

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
  MantleRadius mapValues(double Function(double value) transform) {
    return MantleRadius.fromScale(_scale.map(transform));
  }

  @override
  MantleRadius resolveRem({
    required TextScaler textScaler,
    double remBase = 16,
  }) {
    return MantleRadius.fromScale(
      _scale.resolveRem(textScaler: textScaler, remBase: remBase),
    );
  }

  @override
  MantleRadius lerpWith(covariant MantleRadius other, double t) {
    final keys = {...tokens, ...other.tokens};
    return MantleRadius({
      for (final token in keys)
        token: _lerpNum(getOrNull(token), other.getOrNull(token), t),
    });
  }

  @override
  MantleRadius mergeWith(covariant MantleRadius other) {
    final keys = {...tokens, ...other.tokens};
    return MantleRadius({
      for (final token in keys) token: getOrNull(token) ?? other[token],
    });
  }
}

/// Radius helpers and rem resolution for any [MantleRadius].
extension MantleRadiusGeometry on MantleRadius {
  /// [resolveRem] using [MediaQuery.textScalerOf].
  MantleRadius fromMedia(BuildContext context, {double remBase = 16}) {
    return resolveRem(
      textScaler: MediaQuery.textScalerOf(context),
      remBase: remBase,
    );
  }

  /// [BorderRadius.circular] for [size].
  BorderRadius border(MantleSize size) => BorderRadius.circular(this[size]);

  /// [Radius.circular] for [size].
  Radius circular(MantleSize size) => Radius.circular(this[size]);

  /// [Radius.elliptical] for [x] and [y].
  Radius elliptical(MantleSize x, MantleSize y) =>
      Radius.elliptical(this[x], this[y]);
}
