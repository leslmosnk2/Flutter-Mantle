/// Common operations for immutable token groups attached to a theme.
///
/// Built-in groups (`MantleColors`, `MantleIcons`, `MantleTypography`, and
/// others) and app-defined extensions implement this interface so themes can
/// merge nested overrides and animate between two theme instances.
abstract interface class MantleTokenGroup {
  const MantleTokenGroup();

  /// Returns a new group that combines this instance with [other].
  ///
  /// For each field, [other]'s value wins when it represents an override;
  /// otherwise this instance's value is kept. Merging with an empty sentinel
  /// returns an equivalent copy of this group.
  MantleTokenGroup mergeWith(covariant MantleTokenGroup other);

  /// Linearly interpolates between this group and [other].
  ///
  /// Returns this group when `t` is `0` and [other] when `t` is `1`. Fields
  /// that cannot be interpolated snap to [other] when `t` is `0.5` or greater.
  MantleTokenGroup lerpWith(covariant MantleTokenGroup other, double t);
}
