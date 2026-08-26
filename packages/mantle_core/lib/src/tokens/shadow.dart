import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// A class for managing shadow values based on a size scale.
class MantleShadow implements MantleTokenGroup {
  /// Creates a new instance of [MantleShadow] with the given shadows.
  MantleShadow(Map<MantleSize, List<BoxShadow>> shadow)
    : _scale = MantleSizeScale(shadow);

  /// Creates an empty shadow instance.
  ///   For when you don't have any shadow values.
  const MantleShadow.empty() : _scale = const MantleSizeScale.empty();

  /// Creates a new instance of [MantleShadow] with the given size scale.
  const MantleShadow.fromScale(MantleSizeScale<List<BoxShadow>> scale)
    : _scale = scale;

  final MantleSizeScale<List<BoxShadow>> _scale;

  /// Returns the list of box shadows for the given size.
  List<BoxShadow> operator [](MantleSize size) => _scale[size];

  @override
  MantleShadow lerpWith(covariant MantleShadow other, double t) {
    final tokens = {..._scale.tokens, ...other._scale.tokens};

    List<BoxShadow> lerper(List<BoxShadow>? a, List<BoxShadow>? b) {
      if (a == null || b == null) {
        return a ?? b!;
      }

      final shadows = [
        for (int i = 0; i < math.max(a.length, b.length); i++)
          BoxShadow.lerp(
            i < a.length ? a[i] : null,
            i < b.length ? b[i] : null,
            t,
          ),
      ];
      return shadows.whereType<BoxShadow>().toList();
    }

    return MantleShadow({
      for (final size in tokens)
        size: lerper(_scale.getOrNull(size), other._scale.getOrNull(size)),
    });
  }

  @override
  MantleShadow mergeWith(covariant MantleShadow other) {
    return MantleShadow.fromScale(_scale.merge(other._scale));
  }
}
