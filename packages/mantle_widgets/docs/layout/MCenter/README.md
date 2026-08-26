# MCenter

Centers `child` on both axes.

Inspired by Mantine [`MCenter`](https://mantine.dev/core/center/).

## Constructors

- `MCenter(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `inline` | `bool?` | `false` |

## Example

```dart
MCenter(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MCenter](/basic/layout/MCenter/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
