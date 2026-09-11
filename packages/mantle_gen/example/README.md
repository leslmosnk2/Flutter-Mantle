# mantle_gen example

Sample input for the `mantle_token` builder. App code depends on
`mantle_annotations` only; this package is a **dev** dependency.

```bash
dart run build_runner build --delete-conflicting-outputs
```

Size-list classes emit `_$ClassName` (named fields, `spacing.all.md`).
Annotate a theme class in the same library with `@MantleAppTheme`.
Static-const classes still emit `toMap()`.
