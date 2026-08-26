# MOverlay

A dimming barrier over its parent. Named `MOverlay` because Flutter's `Overlay` lives in `widgets.dart`.

Inspired by Mantine [`MOverlay`](https://mantine.dev/core/overlay/).

## Constructors

- `MOverlay(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `visible` | `bool?` | `true` |
| `backgroundOpacity` | `double?` | `0.6` |
| `color` | `Color?` | `null` |
| `onTap` | `VoidCallback?` | `null` |
| `child` | `Widget?` | `null` |
| `center` | `bool?` | `false` |

## Example

```dart
MOverlay(
  visible: false,
  backgroundOpacity: 0,
  color: /* … */,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MOverlay](/basic/overlays/MOverlay/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
