# Collapse

Animated height around a child.

Inspired by Mantine [`Collapse`](https://mantine.dev/core/collapse/).

## Constructors

- `Collapse(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `opened` | `bool?` | `false` |
| `transitionDuration` | `int?` | `200` |
| `animateOpacity` | `bool?` | `true` |
| `keepMounted` | `bool?` | `false` |
| `onTransitionEnd` | `VoidCallback?` | `null` |

## Example

```dart
Collapse(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Collapse](/basic/miscellaneous/Collapse/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
