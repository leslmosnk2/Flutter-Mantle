## 1.1.0

- `MantleSpacing`, `MantleRadius`, and `MantleBreakpoint` are interfaces with
  map implementations for literals and empty sentinels.
- `emOf` on `num` for CSS-style em relative to the ambient text style.
- `MantleTheme` stores optional token factories; `MantleTheme.of(context)`
  builds a fresh theme for the current context.

## 1.0.0

- Initial stable release of the Mantle core runtime.
- Design token groups: colors, icons, typography, spacing, radius, shadows,
  breakpoints, and shared size scales.
- `MantleTheme`, animated `MantleProvider` (`InheritedModel` + aspects), and
  the `Mantle` root-theme facade for context-free token access.
- Helpers: `MantleIcon`, `BreakpointBuilder`, HSL color utilities, and
  widget-test helpers in `package:mantle_core/testing.dart`.
