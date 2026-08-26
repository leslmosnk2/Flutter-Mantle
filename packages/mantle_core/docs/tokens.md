# Design tokens

Token groups are immutable maps keyed by size or name. Every group implements
`MantleTokenGroup` so themes can **merge** nested overrides and **lerp**
during animated theme changes.

`MantleSize` is a `String` (`'xs'`, `'sm'`, `'md'`, …). Scales are
`MantleSizeScale<T>`.

## Colors

A `MantleColor` is a 10-shade palette (indexes `0`–`9`). `MantleColors` is a
named map of palettes:

```dart
final colors = MantleColors({
  'blue': MantleColor([
    Color(0xFFE7F5FF),
    // … eight more shades …
    Color(0xFF1864AB),
  ]),
});

final fill = colors['blue'][6];
```

Missing palette names throw `ArgumentError`.

`MantleShade` stores light/dark indexes into a palette. The default primary
shade is `{ light: 6, dark: 8 }` (`MantleShade.primary`).

## Spacing

```dart
final spacing = MantleSpacing({
  'xs': 10,
  'sm': 12,
  'md': 16,
  'lg': 20,
  'xl': 32,
});

spacing.all('md');                          // EdgeInsets.all(16)
spacing.symmetric(horizontal: 'sm');        // EdgeInsets.symmetric(horizontal: 12)
spacing.only(top: 'lg', left: 'xs');
```

## Radius

```dart
final radius = MantleRadius({
  'xs': 2,
  'sm': 4,
  'md': 8,
  'lg': 16,
  'xl': 32,
});

radius.border('md');      // BorderRadius.circular(8)
radius.circular('sm');    // Radius.circular(4)
radius.elliptical('sm', 'lg');
```

## Typography

```dart
MantleTypography(
  fontFamily: '',
  fontFamilyMono: 'monospace',
  fontSize: MantleSizeScale({'xs': 12, 'sm': 14, 'md': 16}),
  headings: MantleHeadings(/* h1–h6 TextStyles */),
  body: TextStyle(fontSize: 16, height: 1.55),
  label: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
  lineHeight: MantleSizeScale({'xs': 1.4, 'sm': 1.45, 'md': 1.55}),
)
```

An empty typography group (`MantleTypography.empty()`) yields to the other
side in `mergeWith`.

## Breakpoints

Minimum widths, used by [`BreakpointBuilder`](/core/widgets) and layout
components:

```dart
final breakpoints = MantleBreakpoint({
  'xs': 576,
  'sm': 768,
  'md': 992,
  'lg': 1200,
  'xl': 1408,
});

final size = breakpoints.fromContext(context); // largest token ≤ viewport width
final minWidth = breakpoints['md'];
```

## Shadows and icons

```dart
MantleShadow({
  'sm': [BoxShadow(blurRadius: 3, color: Color(0x1A000000))],
});

MantleIcons({
  'check': ({double size = 16, Color color = const Color(0xFF000000)}) {
    return Text('✓', style: TextStyle(fontSize: size, color: color, height: 1));
  },
});
```

Icon values are `IconTokenBuilder` functions. Render them with
[`MantleIcon`](/core/widgets).

## Extensions

`MantleTheme.extensions` is a `Map<Type, MantleTokenGroup>` for app-defined
groups. Register a custom group,
then read it from the theme.

## Merge and lerp

- `mergeWith` — the receiver wins on keys it actually holds; empty sentinels
  inherit.
- `lerpWith` — numeric fields interpolate; discrete fields snap at `t == 0.5`.
