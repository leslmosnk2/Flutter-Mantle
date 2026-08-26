# MantleTheme

Immutable bundle of token groups, component delegates, and Mantine-like
scalars. Nested `MantleProvider`s merge themes field-by-field.

```dart
const MantleTheme({
  MantleColors colors = const MantleColors.empty(),
  MantleIcons icons = const MantleIcons.empty(),
  MantleTypography typography = const MantleTypography.empty(),
  MantleSpacing spacing = const MantleSpacing.empty(),
  MantleRadius radius = const MantleRadius.empty(),
  MantleShadow shadows = const MantleShadow.empty(),
  MantleBreakpoint breakpoints = const MantleBreakpoint.empty(),
  DelegateRegistry components = const DelegateRegistry.empty(),
  ComponentDefaults componentDefaults = const ComponentDefaults.empty(),
  Map<Type, MantleTokenGroup> extensions = const {},
  String? debugName,
  String? primaryColor,
  MantleShade? primaryShade,
  MantleSize? defaultRadius,
  MantleGradient? defaultGradient,
  MantleFocusRing? focusRing,
  double? scale,
  Color? white,
  Color? black,
  bool? autoContrast,
  double? luminanceThreshold,
  bool? respectReducedMotion,
  MantleCursorType? cursorType,
  VariantColorsResolver? variantColorResolver,
});
```

Omitted token groups default to **empty sentinels** so a nested provider can
override a single aspect without wiping the rest.

## Lookup

```dart
MantleTheme.of(context);                              // whole theme
MantleTheme.of(context, aspect: MantleAspect.spacing); // spacing-only rebuilds
MantleTheme.maybeOf(context);                         // null if no provider
```

Prefer an aspect inside `build` so unrelated token changes do not rebuild
the widget. Aspects:

| Aspect | Subscribes to |
|---|---|
| `colors` | palettes and primary-color keys |
| `icons` | icon builders |
| `typography` | type tokens |
| `spacing` | spacing scale |
| `radius` | radius scale |
| `shadows` | shadow scale |
| `breakpoints` | breakpoint scale |
| `components` | delegates and component defaults |
| `colorScheme` | resolved light/dark scheme |
| `config` | scalars (focus ring, scale, contrast, cursor, …) |

## Scalars

| Getter | Default | Role |
|---|---|---|
| `debugName` | `'MantleTheme'` | Error messages |
| `primaryColor` | `'blue'` | Key of `colors` |
| `primary` | `colors[primaryColor]` | Primary palette |
| `primaryShade` | `{ light: 6, dark: 8 }` | Indexes into `primary` |
| `defaultRadius` | `'md'` | Default corner token |
| `defaultGradient` | `null` | Palette-keyed gradient |
| `focusRing` | `MantleFocusRing.auto` | Keyboard vs always/never |
| `scale` | `1` | Global size multiplier |
| `white` / `black` | Flutter white/black | Absolute surfaces |
| `autoContrast` | `false` | Pick foreground from luminance |
| `luminanceThreshold` | Mantine default | Cutoff for auto-contrast |
| `respectReducedMotion` | `true` | Honor accessibility setting |
| `cursorType` | `MantleCursorType.system` | Default mouse cursor |
| `variantColorResolver` | built-in | Maps variant + color → fills |

`primaryShadeColor(scheme)` returns the resolved primary swatch for light or
dark.

## Gradients

`MantleGradient` names two palettes and shade indexes, then resolves against
`theme.colors`:

```dart
const MantleGradient(from: 'blue', to: 'cyan', deg: 45).resolve(theme.colors);
```

## Variant colors

`VariantColorsResolver` turns a variant name (`filled`, `light`, `outline`,
…) plus an optional palette key into background / hover / foreground /
border colors. Delegates in `mantle_basic` call this instead of hard-coding
fills.

## Copy and merge

```dart
theme.copyWith(primaryColor: 'teal');
theme.mergeWith(other); // other wins on set fields
theme.lerpWith(other, t);
```

`bindBaseline` attaches a fallback theme used only when a delegate is
missing. `MantleProvider` does this when you pass `baseline:`.
