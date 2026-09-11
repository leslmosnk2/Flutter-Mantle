## 1.1.0

- Generated component widgets, constructors, fields, and delegates include
  dartdoc comments.
- `@MantleToken(['xs', 'sm', …])` emits a base class with named fields,
  `spacing.all.md` / `radius.border.md` helpers, and merge/lerp.
- `@MantleAppTheme` emits `AppTheme()` (token factories) and
  `AppTheme.of(context)` that builds a fresh theme for the current context.
- Static-const classes still emit a `toMap()` mixin.

## 1.0.0

- Initial stable release.
- `mantle_token` builder for `@MantleToken`.
- `mantle_component` builder for `@MantleComponent`.
- Both builders emit shared parts that combine into `*.g.dart`.
