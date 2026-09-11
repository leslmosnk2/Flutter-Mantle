## 1.1.0

- `BasicSpacing`, `BasicRadius`, and `BasicBreakpoints` are context-built
  `@MantleToken` classes. `BasicTheme()` registers those factories so
  `MantleTheme.of(context)` resolves them for the current context.

## 1.0.0

- Initial stable release.
- `BasicTheme` with Mantine-like tokens and a delegate for every
  `mantle_widgets` contract.
- Live gallery app in `example/`.
