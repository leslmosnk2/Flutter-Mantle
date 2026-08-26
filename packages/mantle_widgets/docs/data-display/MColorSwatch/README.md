# MColorSwatch

A color square or circle.

Inspired by Mantine [`MColorSwatch`](https://mantine.dev/core/color-swatch/).

## Constructors

- `MColorSwatch(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `color` | `Color` | required |
| `size` | `double?` | `28` |
| `radius` | `BorderRadiusGeometry` | `dataDisplayPillRadius` |
| `withShadow` | `bool?` | `true` |
| `checked` | `bool?` | `false` |
| `child` | `Widget?` | `null` |
| `onTap` | `VoidCallback?` | `null` |

## Example

```dart
MColorSwatch(
  color: /* … */,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MColorSwatch](/basic/data-display/MColorSwatch/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
