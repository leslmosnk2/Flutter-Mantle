/// Theme slot a generated token scale occupies on a Mantle theme.
enum MantleTokenSlot {
  /// `MantleTheme.breakpoints`.
  breakpoints,

  /// `MantleTheme.spacing`.
  spacing,

  /// `MantleTheme.radius`.
  radius,
}

/// Marks a class whose size names (or static const fields) are collected by
/// the `mantle_token` builder.
class MantleToken {
  /// Creates a token annotation.
  ///
  /// Pass [sizes] for a context-built scale (`AppSpacing(BuildContext)`).
  /// Use an empty list, or [MantleToken.consts], for a static-const `toMap()`
  /// mixin.
  const MantleToken(
    this.sizes, {
    this.slot,
    this.type = dynamic,
    this.name = r'_${classname}',
  });

  /// Static-const `toMap()` groups (no size list).
  const MantleToken.consts({
    this.slot,
    this.type = dynamic,
    this.name = r'_${classname}',
  }) : sizes = const [];

  /// Size names generated as named fields (`xs`, `sm`, `md`, …).
  ///
  /// Empty for the static-const `toMap()` path.
  final List<String> sizes;

  /// Built-in theme slot. Inferred from the class name (`Spacing`, `Radius`,
  /// `Breakpoint`) when omitted.
  final MantleTokenSlot? slot;

  /// Value type used by the static-const `toMap()` mixin.
  final Type type;

  /// Generated base/mixin name. `{classname}` is substituted.
  final String name;
}
