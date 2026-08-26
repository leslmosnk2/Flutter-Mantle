# MImage

Network/asset image with radius and fallback.

Inspired by Mantine [`MImage`](https://mantine.dev/core/image/).

## Constructors

- `MImage(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `src` | `String?` | `null` |
| `image` | `MantleImageProvider?` | `null` |
| `fallback` | `Widget?` | `null` |
| `fit` | `BoxFit?` | `BoxFit.cover` |
| `radius` | `BorderRadiusGeometry` | `_zeroRadius` |
| `width` | `double?` | `null` |
| `height` | `double?` | `null` |

## Example

```dart
MImage(
  src: 'value',
  image: /* … */,
  fallback: /* … */,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MImage](/basic/data-display/MImage/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
