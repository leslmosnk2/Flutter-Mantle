# Architecture

Mantle splits **what a widget is** from **how it looks**.

```
mantle_annotations   @MantleToken / @MantleComponent
        │
mantle_gen           build_runner → *.g.dart
        │
mantle_widgets       contracts + generated StatelessWidgets
        │
mantle_core          tokens, MantleTheme, delegate lookup
        │
mantle_basic         BasicTheme + one delegate per contract
```

## Theme owns the build

A `Button` in app code is a generated widget. Its `build` method does not
draw a rectangle. It:

1. Resolves `MantleTheme` (aspect `components`).
2. Finds a `ButtonDelegate` on `theme.components`, then `theme.baseline`.
3. Builds `ButtonStyle` / `ButtonState` / `ButtonContext`.
4. Calls `delegate.root(...)`, passing the other slots as builders.

The **contract** (slots and properties) is stable. A product can swap
`BasicButtonDelegate` for its own chrome without changing call sites.

## Tokens

`MantleTheme` holds named palettes (10 shades), spacing, radius, type,
breakpoints, shadows, and icons. Nested `MantleProvider`s merge: empty
groups inherit, set fields win. Optional `animation` lerps between themes.

Read [Design tokens](/core/tokens) and [MantleProvider](/core/provider).

## Two docs per component

| Package | What the page covers |
|---|---|
| `mantle_widgets` | Constructors, props, examples |
| `mantle_basic` | Baseline delegate and source file |

Use widgets docs when you are **calling** a widget. Use basic docs when you
are **reimplementing** or debugging a delegate.

## Why a separate theme?

Mantle themes are token maps plus a registry of component implementations,
closer to Mantine's `MantineProvider` + `theme.components` than to a single
style object. Put `MantleProvider` at the root, outside `WidgetsApp`, so
routes and overlays inherit it.
