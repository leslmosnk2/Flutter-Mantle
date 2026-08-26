# LoadingOverlay

Barrier + loader over `child`.

Inspired by Mantine [`LoadingOverlay`](https://mantine.dev/core/loading-overlay/).

## Constructors

- `LoadingOverlay(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `visible` | `bool?` | `false` |
| `backgroundOpacity` | `double?` | `0.75` |

## Example

```dart
LoadingOverlay(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` LoadingOverlay](/basic/overlays/LoadingOverlay/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
