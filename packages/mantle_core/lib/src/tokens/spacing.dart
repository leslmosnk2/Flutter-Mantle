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

/// Spacing scale keyed by [MantleSize].
abstract interface class MantleSpacing implements MantleTokenGroup {
  /// Creates a map-backed spacing group.
  factory MantleSpacing(Map<MantleSize, double> spacing) = MantleSpacingMap;

  /// Empty sentinel; yields to the other side in [mergeWith].
  const factory MantleSpacing.empty() = MantleSpacingMap.empty;

  /// Creates a group from an existing scale.
  const factory MantleSpacing.fromScale(MantleSizeScale<double> scale) =
      MantleSpacingMap.fromScale;

  /// Size keys in this group.
  Set<MantleSize> get tokens;

  /// Whether this group has no keys.
  bool get isEmpty;

  /// Raw spacing for [size].
  double operator [](MantleSize size);

  /// Spacing for [size], or `null` if missing.
  double? getOrNull(MantleSize size);

  /// A copy whose values are produced by [transform].
  MantleSpacing mapValues(double Function(double value) transform);

  /// Converts each value from px-at-[remBase] using [textScaler].
  MantleSpacing resolveRem({
    required TextScaler textScaler,
    double remBase = 16,
  });

  @override
  MantleSpacing mergeWith(covariant MantleSpacing other);

  @override
  MantleSpacing lerpWith(covariant MantleSpacing other, double t);
}

/// Map-backed [MantleSpacing] used for literals, empty sentinels, and merges.
class MantleSpacingMap implements MantleSpacing {
  /// Creates a new instance with the given sizes.
  MantleSpacingMap(Map<MantleSize, double> spacing)
    : _scale = MantleSizeScale(spacing);

  /// Creates an empty spacing instance.
  const MantleSpacingMap.empty() : _scale = const MantleSizeScale.empty();

  /// Creates a new instance from the given size scale.
  const MantleSpacingMap.fromScale(MantleSizeScale<double> scale)
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
  MantleSpacing mapValues(double Function(double value) transform) {
    return MantleSpacing.fromScale(_scale.map(transform));
  }

  @override
  MantleSpacing resolveRem({
    required TextScaler textScaler,
    double remBase = 16,
  }) {
    return MantleSpacing.fromScale(
      _scale.resolveRem(textScaler: textScaler, remBase: remBase),
    );
  }

  @override
  MantleSpacing lerpWith(covariant MantleSpacing other, double t) {
    final keys = {...tokens, ...other.tokens};
    return MantleSpacing({
      for (final token in keys)
        token: _lerpNum(getOrNull(token), other.getOrNull(token), t),
    });
  }

  @override
  MantleSpacing mergeWith(covariant MantleSpacing other) {
    final keys = {...tokens, ...other.tokens};
    return MantleSpacing({
      for (final token in keys) token: getOrNull(token) ?? other[token],
    });
  }
}

/// EdgeInsets helpers and rem resolution for any [MantleSpacing].
extension MantleSpacingInsets on MantleSpacing {
  /// [resolveRem] using [MediaQuery.textScalerOf].
  MantleSpacing fromMedia(BuildContext context, {double remBase = 16}) {
    return resolveRem(
      textScaler: MediaQuery.textScalerOf(context),
      remBase: remBase,
    );
  }

  /// [EdgeInsets.all] for [size].
  EdgeInsets all(MantleSize size) => EdgeInsets.all(this[size]);

  /// [EdgeInsets.only] for the given size keys.
  EdgeInsets only({
    MantleSize? top,
    MantleSize? right,
    MantleSize? bottom,
    MantleSize? left,
  }) {
    return EdgeInsets.only(
      top: top != null ? this[top] : 0,
      right: right != null ? this[right] : 0,
      bottom: bottom != null ? this[bottom] : 0,
      left: left != null ? this[left] : 0,
    );
  }

  /// [EdgeInsets.symmetric] for the given size keys.
  EdgeInsets symmetric({MantleSize? vertical, MantleSize? horizontal}) {
    return EdgeInsets.symmetric(
      vertical: vertical != null ? this[vertical] : 0,
      horizontal: horizontal != null ? this[horizontal] : 0,
    );
  }
}
