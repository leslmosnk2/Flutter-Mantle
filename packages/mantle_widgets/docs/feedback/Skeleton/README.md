# Skeleton

A placeholder block or overlay.

Inspired by Mantine [`Skeleton`](https://mantine.dev/core/skeleton/).

## Constructors

- `Skeleton(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `width` | `double?` | `null` |
| `height` | `double?` | `null` |
| `circle` | `bool?` | `false` |
| `radius` | `BorderRadiusGeometry` | `feedbackDefaultRadius` |
| `child` | `Widget?` | `null` |
| `visible` | `bool?` | `true` |
| `animate` | `bool?` | `true` |

## Example

```dart
Skeleton(
  width: 0,
  height: 0,
  circle: false,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Skeleton](/basic/feedback/Skeleton/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
